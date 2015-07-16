package com.parse;

import N;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseQuery<T extends ParseObject>
{
  private static final String TAG = "com.parse.ParseQuery";
  private ParseQuery.CachePolicy cachePolicy;
  private String className;
  private ParseCommand currentCommand = null;
  private HashMap<String, Object> extraOptions = null;
  private boolean ignoreACLs;
  private ArrayList<String> include;
  private boolean isRunning = false;
  private final Object isRunningLock = new Object();
  private int limit;
  private long maxCacheAge;
  private long objectsParsed;
  private String order;
  private String pinName;
  private long queryReceived;
  private long querySent;
  private long queryStart;
  private ArrayList<String> selectedKeys;
  private int skip;
  private boolean trace;
  private ParseQuery.QueryConstraints where;
  
  public ParseQuery(Class<T> paramClass)
  {
    this(ParseObject.getClassName(paramClass));
  }
  
  public ParseQuery(String paramString)
  {
    className = paramString;
    limit = -1;
    skip = 0;
    where = new ParseQuery.QueryConstraints();
    include = new ArrayList();
    cachePolicy = ParseQuery.CachePolicy.IGNORE_CACHE;
    maxCacheAge = Long.MAX_VALUE;
    trace = false;
    extraOptions = new HashMap();
  }
  
  private void addCondition(String paramString1, String paramString2, Object paramObject)
  {
    checkIfRunning();
    if (where.containsKey(paramString1))
    {
      localObject1 = where.get(paramString1);
      if (!(localObject1 instanceof ParseQuery.KeyConstraints)) {}
    }
    for (Object localObject1 = (ParseQuery.KeyConstraints)localObject1;; localObject1 = null)
    {
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new ParseQuery.KeyConstraints();
      }
      ((ParseQuery.KeyConstraints)localObject2).put(paramString2, paramObject);
      where.put(paramString1, localObject2);
      return;
    }
  }
  
  private void checkIfRunning()
  {
    checkIfRunning(false);
  }
  
  private void checkIfRunning(boolean paramBoolean)
  {
    synchronized (isRunningLock)
    {
      if (isRunning) {
        throw new RuntimeException("This query has an outstanding network connection. You have to wait until it's done.");
      }
    }
    if (paramBoolean) {
      isRunning = true;
    }
  }
  
  private static void checkPinningEnabled(boolean paramBoolean)
  {
    if ((OfflineStore.isEnabled()) && (!paramBoolean))
    {
      if (paramBoolean) {
        throw new IllegalStateException("Method requires Pinning to be enabled.");
      }
      throw new IllegalStateException("Method not allowed when Pinning is enabled.");
    }
  }
  
  public static void clearAllCachedResults()
  {
    checkPinningEnabled(false);
    Parse.clearCacheDir();
  }
  
  private List<T> convertFindResponse(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = new ArrayList();
    JSONArray localJSONArray = paramJSONObject.getJSONArray("results");
    if (localJSONArray == null)
    {
      Parse.logD("com.parse.ParseQuery", "null results in find response");
      objectsParsed = System.nanoTime();
      if (paramJSONObject.has("trace"))
      {
        paramJSONObject = paramJSONObject.get("trace");
        Parse.logD("ParseQuery", String.format("Query pre-processing took %f seconds\n%s\nClient side parsing took %f seconds\n", new Object[] { Float.valueOf((float)(querySent - queryStart) / 1000000.0F), paramJSONObject, Float.valueOf((float)(objectsParsed - queryReceived) / 1000000.0F) }));
      }
      return localArrayList;
    }
    String str = paramJSONObject.optString("className");
    if (str.equals("")) {
      str = className;
    }
    for (;;)
    {
      int i = 0;
      label141:
      Object localObject;
      if (i < localJSONArray.length())
      {
        localObject = localJSONArray.getJSONObject(i);
        if (selectedKeys != null) {
          break label222;
        }
      }
      label222:
      for (boolean bool = true;; bool = false)
      {
        localObject = ParseObject.fromJSON((JSONObject)localObject, str, bool);
        localArrayList.add(localObject);
        ParseQuery.RelationConstraint localRelationConstraint = (ParseQuery.RelationConstraint)where.get("$relatedTo");
        if (localRelationConstraint != null) {
          localRelationConstraint.getRelation().addKnownObject((ParseObject)localObject);
        }
        i += 1;
        break label141;
        break;
      }
    }
  }
  
  private N<Integer> countFromCacheAsync(ParseUser paramParseUser, boolean paramBoolean1, boolean paramBoolean2)
  {
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    if (localOfflineStore != null)
    {
      if (pinName != null) {}
      for (N localN = ParsePin.getParsePin(pinName);; localN = N.a(null)) {
        return localN.d(new ParseQuery.10(this, localOfflineStore, paramParseUser, paramBoolean1, paramBoolean2));
      }
    }
    return N.a(new ParseQuery.11(this), N.a);
  }
  
  private N<Integer> countFromNetworkAsync()
  {
    if (cachePolicy != ParseQuery.CachePolicy.IGNORE_CACHE) {}
    for (boolean bool = true;; bool = false)
    {
      currentCommand = makeCountCommand(ParseUser.getCurrentSessionToken());
      return currentCommand.executeAsync().d(new ParseQuery.19(this, bool)).a(new ParseQuery.18(this));
    }
  }
  
  private N<Integer> countWithCachePolicyAsync(ParseQuery.CachePolicy paramCachePolicy, ParseUser paramParseUser)
  {
    return runCommandWithPolicyAsync(new ParseQuery.3(this, paramParseUser), paramCachePolicy);
  }
  
  private <TResult> void doInBackground(ParseQuery.CallableWithCachePolicy<N<TResult>> paramCallableWithCachePolicy, ParseCallback<TResult> paramParseCallback)
  {
    Parse.callbackOnMainThreadAsync(doWithRunningCheck(new ParseQuery.13(this, paramCallableWithCachePolicy, paramParseCallback)), paramParseCallback);
  }
  
  private <TResult> N<TResult> doWithRunningCheck(Callable<N<TResult>> paramCallable)
  {
    checkIfRunning(true);
    try
    {
      paramCallable = (N)paramCallable.call();
      return paramCallable.b(new ParseQuery.12(this));
    }
    catch (Exception paramCallable)
    {
      for (;;)
      {
        paramCallable = N.a(paramCallable);
      }
    }
  }
  
  private N<List<T>> findFromNetworkAsync(boolean paramBoolean)
  {
    currentCommand = makeFindCommand(ParseUser.getCurrentSessionToken());
    return N.b(new ParseQuery.7(this, paramBoolean)).d(new ParseQuery.6(this));
  }
  
  private ParseQuery<T> fromLocalDatastore(String paramString, boolean paramBoolean)
  {
    checkPinningEnabled(true);
    checkIfRunning();
    cachePolicy = ParseQuery.CachePolicy.CACHE_ONLY;
    pinName = paramString;
    ignoreACLs = paramBoolean;
    return this;
  }
  
  private N<T> getFirstWithCachePolicyAsync(ParseQuery.CachePolicy paramCachePolicy, ParseUser paramParseUser)
  {
    limit = 1;
    return findWithCachePolicyAsync(paramCachePolicy, paramParseUser).a(new ParseQuery.5(this));
  }
  
  public static <T extends ParseObject> ParseQuery<T> getQuery(Class<T> paramClass)
  {
    return new ParseQuery(paramClass);
  }
  
  public static <T extends ParseObject> ParseQuery<T> getQuery(String paramString)
  {
    return new ParseQuery(paramString);
  }
  
  @Deprecated
  public static ParseQuery<ParseUser> getUserQuery()
  {
    return ParseUser.getQuery();
  }
  
  private N<T> getWithCachePolicyAsync(String paramString, ParseQuery.CachePolicy paramCachePolicy, ParseUser paramParseUser)
  {
    skip = -1;
    where = new ParseQuery.QueryConstraints();
    where.put("objectId", paramString);
    return getFirstWithCachePolicyAsync(paramCachePolicy, paramParseUser);
  }
  
  private ParseCommand makeCountCommand(String paramString)
  {
    paramString = makeFindCommand(paramString);
    paramString.put("limit", 0);
    paramString.put("count", 1);
    return paramString;
  }
  
  private ParseCommand makeFindCommand(String paramString)
  {
    paramString = new ParseCommand("find", paramString);
    JSONObject localJSONObject = toJSON();
    Iterator localIterator = localJSONObject.keys();
    try
    {
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        paramString.put(str, localJSONObject.get(str).toString());
      }
      return paramString;
    }
    catch (JSONException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  public static <T extends ParseObject> ParseQuery<T> or(List<ParseQuery<T>> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = null;
    int i = 0;
    while (i < paramList.size())
    {
      if ((localObject != null) && (!getclassName.equals(localObject))) {
        throw new IllegalArgumentException("All of the queries in an or query must be on the same class ");
      }
      localObject = getclassName;
      localArrayList.add(paramList.get(i));
      i += 1;
    }
    if (localArrayList.size() == 0) {
      throw new IllegalArgumentException("Can't take an or of an empty list of queries");
    }
    return new ParseQuery((String)localObject).whereSatifiesAnyOf(localArrayList);
  }
  
  private <TResult> N<TResult> runCommandWithPolicyAsync(ParseQuery.CommandDelegate<TResult> paramCommandDelegate, ParseQuery.CachePolicy paramCachePolicy)
  {
    switch (ParseQuery.24.$SwitchMap$com$parse$ParseQuery$CachePolicy[paramCachePolicy.ordinal()])
    {
    default: 
      throw new RuntimeException("Unknown cache policy: " + cachePolicy);
    case 1: 
    case 2: 
      return paramCommandDelegate.runOnNetworkAsync(true);
    case 3: 
      return paramCommandDelegate.runFromCacheAsync();
    case 4: 
      return paramCommandDelegate.runFromCacheAsync().b(new ParseQuery.1(this, paramCommandDelegate));
    case 5: 
      return paramCommandDelegate.runOnNetworkAsync(false).b(new ParseQuery.2(this, paramCommandDelegate));
    }
    throw new RuntimeException("You cannot use the cache policy CACHE_THEN_NETWORK with find()");
  }
  
  private JSONObject toJSON()
  {
    JSONObject localJSONObject = toREST();
    try
    {
      if (!localJSONObject.isNull("where")) {
        localJSONObject.put("data", localJSONObject.remove("where"));
      }
      localJSONObject.put("classname", localJSONObject.remove("className"));
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }
  
  private ParseQuery<T> whereSatifiesAnyOf(List<ParseQuery<? extends T>> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ParseQuery localParseQuery = (ParseQuery)paramList.next();
      if (limit >= 0) {
        throw new IllegalArgumentException("Cannot have limits in sub queries of an 'OR' query");
      }
      if (skip > 0) {
        throw new IllegalArgumentException("Cannot have skips in sub queries of an 'OR' query");
      }
      if (order != null) {
        throw new IllegalArgumentException("Cannot have an order in sub queries of an 'OR' query");
      }
      if (!include.isEmpty()) {
        throw new IllegalArgumentException("Cannot have an include in sub queries of an 'OR' query");
      }
      if (selectedKeys != null) {
        throw new IllegalArgumentException("Cannot have an selectKeys in sub queries of an 'OR' query");
      }
      localArrayList.add(localParseQuery.getConstraints());
    }
    where.put("$or", localArrayList);
    return this;
  }
  
  public ParseQuery<T> addAscendingOrder(String paramString)
  {
    checkIfRunning();
    if (order == null)
    {
      order = paramString;
      return this;
    }
    order = (order + "," + paramString);
    return this;
  }
  
  public ParseQuery<T> addDescendingOrder(String paramString)
  {
    checkIfRunning();
    if (order == null)
    {
      order = ("-" + paramString);
      return this;
    }
    order = (order + ",-" + paramString);
    return this;
  }
  
  public void cancel()
  {
    synchronized (isRunningLock)
    {
      if (currentCommand != null)
      {
        currentCommand.cancel();
        currentCommand = null;
      }
      isRunning = false;
      return;
    }
  }
  
  public void clearCachedResult()
  {
    checkPinningEnabled(false);
    Parse.clearFromKeyValueCache(makeFindCommand(ParseUser.getCurrentSessionToken()).getCacheKey());
  }
  
  public int count()
  {
    return ((Integer)Parse.waitForTask(countInBackground())).intValue();
  }
  
  public N<Integer> countInBackground()
  {
    ParseUser localParseUser = ParseUser.getCurrentUser();
    queryStart = System.nanoTime();
    return doWithRunningCheck(new ParseQuery.20(this, localParseUser));
  }
  
  public void countInBackground(CountCallback paramCountCallback)
  {
    ParseUser localParseUser = ParseUser.getCurrentUser();
    queryStart = System.nanoTime();
    doInBackground(new ParseQuery.21(this, localParseUser), paramCountCallback);
  }
  
  public List<T> find()
  {
    return (List)Parse.waitForTask(findInBackground());
  }
  
  N<List<T>> findFromCacheAsync(ParseUser paramParseUser, boolean paramBoolean1, boolean paramBoolean2)
  {
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    if (localOfflineStore != null)
    {
      if (pinName != null) {}
      for (N localN = ParsePin.getParsePin(pinName);; localN = N.a(null)) {
        return localN.d(new ParseQuery.8(this, localOfflineStore, paramParseUser, paramBoolean1, paramBoolean2));
      }
    }
    return N.a(new ParseQuery.9(this), N.a);
  }
  
  public N<List<T>> findInBackground()
  {
    return findInBackground(ParseUser.getCurrentUser());
  }
  
  N<List<T>> findInBackground(ParseUser paramParseUser)
  {
    queryStart = System.nanoTime();
    return doWithRunningCheck(new ParseQuery.14(this, paramParseUser));
  }
  
  public void findInBackground(FindCallback<T> paramFindCallback)
  {
    ParseUser localParseUser = ParseUser.getCurrentUser();
    queryStart = System.nanoTime();
    doInBackground(new ParseQuery.15(this, localParseUser), paramFindCallback);
  }
  
  N<List<T>> findWithCachePolicyAsync(ParseQuery.CachePolicy paramCachePolicy, ParseUser paramParseUser)
  {
    return runCommandWithPolicyAsync(new ParseQuery.4(this, paramParseUser), paramCachePolicy);
  }
  
  public ParseQuery<T> fromLocalDatastore()
  {
    return fromLocalDatastore(null, false);
  }
  
  ParseQuery<T> fromLocalDatastore(boolean paramBoolean)
  {
    return fromLocalDatastore(null, paramBoolean);
  }
  
  ParseQuery<T> fromNetwork()
  {
    checkPinningEnabled(true);
    checkIfRunning();
    cachePolicy = ParseQuery.CachePolicy.NETWORK_ONLY;
    pinName = null;
    ignoreACLs = false;
    return this;
  }
  
  public ParseQuery<T> fromPin()
  {
    return fromLocalDatastore("_default", false);
  }
  
  public ParseQuery<T> fromPin(String paramString)
  {
    return fromLocalDatastore(paramString, false);
  }
  
  ParseQuery<T> fromPin(String paramString, boolean paramBoolean)
  {
    return fromLocalDatastore(paramString, paramBoolean);
  }
  
  ParseQuery<T> fromPin(boolean paramBoolean)
  {
    return fromLocalDatastore("_default", paramBoolean);
  }
  
  public T get(String paramString)
  {
    return (ParseObject)Parse.waitForTask(getInBackground(paramString));
  }
  
  public ParseQuery.CachePolicy getCachePolicy()
  {
    checkPinningEnabled(false);
    return cachePolicy;
  }
  
  public String getClassName()
  {
    return className;
  }
  
  ParseQuery.QueryConstraints getConstraints()
  {
    return where;
  }
  
  public T getFirst()
  {
    return (ParseObject)Parse.waitForTask(getFirstInBackground());
  }
  
  public N<T> getFirstInBackground()
  {
    ParseUser localParseUser = ParseUser.getCurrentUser();
    queryStart = System.nanoTime();
    return doWithRunningCheck(new ParseQuery.16(this, localParseUser));
  }
  
  public void getFirstInBackground(GetCallback<T> paramGetCallback)
  {
    doInBackground(new ParseQuery.17(this, ParseUser.getCurrentUser()), paramGetCallback);
  }
  
  public N<T> getInBackground(String paramString)
  {
    ParseUser localParseUser = ParseUser.getCurrentUser();
    queryStart = System.nanoTime();
    return doWithRunningCheck(new ParseQuery.22(this, paramString, localParseUser));
  }
  
  public void getInBackground(String paramString, GetCallback<T> paramGetCallback)
  {
    doInBackground(new ParseQuery.23(this, paramString, ParseUser.getCurrentUser()), paramGetCallback);
  }
  
  List<String> getIncludes()
  {
    return Collections.unmodifiableList(include);
  }
  
  public int getLimit()
  {
    return limit;
  }
  
  public long getMaxCacheAge()
  {
    checkPinningEnabled(false);
    return maxCacheAge;
  }
  
  public int getSkip()
  {
    return skip;
  }
  
  public boolean hasCachedResult()
  {
    boolean bool = false;
    checkPinningEnabled(false);
    if (Parse.loadFromKeyValueCache(makeFindCommand(ParseUser.getCurrentSessionToken()).getCacheKey(), maxCacheAge) != null) {
      bool = true;
    }
    return bool;
  }
  
  public void include(String paramString)
  {
    checkIfRunning();
    include.add(paramString);
  }
  
  boolean isFromLocalDatastore()
  {
    checkPinningEnabled(true);
    return cachePolicy == ParseQuery.CachePolicy.CACHE_ONLY;
  }
  
  boolean isFromNetwork()
  {
    checkPinningEnabled(true);
    return cachePolicy == ParseQuery.CachePolicy.NETWORK_ONLY;
  }
  
  public ParseQuery<T> orderByAscending(String paramString)
  {
    checkIfRunning();
    order = paramString;
    return this;
  }
  
  public ParseQuery<T> orderByDescending(String paramString)
  {
    checkIfRunning();
    order = ("-" + paramString);
    return this;
  }
  
  ParseQuery<T> redirectClassNameForKey(String paramString)
  {
    extraOptions.put("redirectClassNameForKey", paramString);
    return this;
  }
  
  public void selectKeys(Collection<String> paramCollection)
  {
    checkIfRunning();
    if (selectedKeys == null) {
      selectedKeys = new ArrayList();
    }
    selectedKeys.addAll(paramCollection);
  }
  
  public void setCachePolicy(ParseQuery.CachePolicy paramCachePolicy)
  {
    checkPinningEnabled(false);
    checkIfRunning();
    cachePolicy = paramCachePolicy;
  }
  
  public ParseQuery<T> setLimit(int paramInt)
  {
    checkIfRunning();
    limit = paramInt;
    return this;
  }
  
  public void setMaxCacheAge(long paramLong)
  {
    checkPinningEnabled(false);
    maxCacheAge = paramLong;
  }
  
  public ParseQuery<T> setSkip(int paramInt)
  {
    checkIfRunning();
    skip = paramInt;
    return this;
  }
  
  public void setTrace(boolean paramBoolean)
  {
    trace = paramBoolean;
  }
  
  String[] sortKeys()
  {
    if (order == null) {
      return new String[0];
    }
    return order.split(",");
  }
  
  JSONObject toREST()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("className", className);
      localJSONObject.put("where", Parse.encode(where, PointerEncodingStrategy.get()));
      if (limit >= 0) {
        localJSONObject.put("limit", limit);
      }
      if (skip > 0) {
        localJSONObject.put("skip", skip);
      }
      if (order != null) {
        localJSONObject.put("order", order);
      }
      if (!include.isEmpty()) {
        localJSONObject.put("include", Parse.join(include, ","));
      }
      if (selectedKeys != null) {
        localJSONObject.put("fields", Parse.join(selectedKeys, ","));
      }
      if (trace) {
        localJSONObject.put("trace", "1");
      }
      Iterator localIterator = extraOptions.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localJSONObject.put(str, Parse.encode(extraOptions.get(str), PointerEncodingStrategy.get()));
      }
      return localJSONException;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }
  
  public ParseQuery<T> whereContainedIn(String paramString, Collection<? extends Object> paramCollection)
  {
    addCondition(paramString, "$in", new ArrayList(paramCollection));
    return this;
  }
  
  public ParseQuery<T> whereContains(String paramString1, String paramString2)
  {
    whereMatches(paramString1, Pattern.quote(paramString2));
    return this;
  }
  
  public ParseQuery<T> whereContainsAll(String paramString, Collection<?> paramCollection)
  {
    addCondition(paramString, "$all", new ArrayList(paramCollection));
    return this;
  }
  
  public ParseQuery<T> whereDoesNotExist(String paramString)
  {
    addCondition(paramString, "$exists", Boolean.valueOf(false));
    return this;
  }
  
  public ParseQuery<T> whereDoesNotMatchKeyInQuery(String paramString1, String paramString2, ParseQuery<?> paramParseQuery)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("key", paramString2);
      localJSONObject.put("query", paramParseQuery);
      addCondition(paramString1, "$dontSelect", localJSONObject);
      return this;
    }
    catch (JSONException paramString1)
    {
      throw new RuntimeException(paramString1);
    }
  }
  
  public ParseQuery<T> whereDoesNotMatchQuery(String paramString, ParseQuery<?> paramParseQuery)
  {
    addCondition(paramString, "$notInQuery", paramParseQuery);
    return this;
  }
  
  public ParseQuery<T> whereEndsWith(String paramString1, String paramString2)
  {
    whereMatches(paramString1, Pattern.quote(paramString2) + "$");
    return this;
  }
  
  public ParseQuery<T> whereEqualTo(String paramString, Object paramObject)
  {
    checkIfRunning();
    where.put(paramString, paramObject);
    return this;
  }
  
  public ParseQuery<T> whereExists(String paramString)
  {
    addCondition(paramString, "$exists", Boolean.valueOf(true));
    return this;
  }
  
  public ParseQuery<T> whereGreaterThan(String paramString, Object paramObject)
  {
    addCondition(paramString, "$gt", paramObject);
    return this;
  }
  
  public ParseQuery<T> whereGreaterThanOrEqualTo(String paramString, Object paramObject)
  {
    addCondition(paramString, "$gte", paramObject);
    return this;
  }
  
  public ParseQuery<T> whereLessThan(String paramString, Object paramObject)
  {
    addCondition(paramString, "$lt", paramObject);
    return this;
  }
  
  public ParseQuery<T> whereLessThanOrEqualTo(String paramString, Object paramObject)
  {
    addCondition(paramString, "$lte", paramObject);
    return this;
  }
  
  public ParseQuery<T> whereMatches(String paramString1, String paramString2)
  {
    addCondition(paramString1, "$regex", paramString2);
    return this;
  }
  
  public ParseQuery<T> whereMatches(String paramString1, String paramString2, String paramString3)
  {
    addCondition(paramString1, "$regex", paramString2);
    if (paramString3.length() != 0) {
      addCondition(paramString1, "$options", paramString3);
    }
    return this;
  }
  
  public ParseQuery<T> whereMatchesKeyInQuery(String paramString1, String paramString2, ParseQuery<?> paramParseQuery)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("key", paramString2);
      localJSONObject.put("query", paramParseQuery);
      addCondition(paramString1, "$select", localJSONObject);
      return this;
    }
    catch (JSONException paramString1)
    {
      throw new RuntimeException(paramString1);
    }
  }
  
  public ParseQuery<T> whereMatchesQuery(String paramString, ParseQuery<?> paramParseQuery)
  {
    addCondition(paramString, "$inQuery", paramParseQuery);
    return this;
  }
  
  public ParseQuery<T> whereNear(String paramString, ParseGeoPoint paramParseGeoPoint)
  {
    addCondition(paramString, "$nearSphere", paramParseGeoPoint);
    return this;
  }
  
  public ParseQuery<T> whereNotContainedIn(String paramString, Collection<? extends Object> paramCollection)
  {
    addCondition(paramString, "$nin", new ArrayList(paramCollection));
    return this;
  }
  
  public ParseQuery<T> whereNotEqualTo(String paramString, Object paramObject)
  {
    addCondition(paramString, "$ne", paramObject);
    return this;
  }
  
  ParseQuery<T> whereRelatedTo(ParseObject paramParseObject, String paramString)
  {
    where.put("$relatedTo", new ParseQuery.RelationConstraint(paramString, paramParseObject));
    return this;
  }
  
  public ParseQuery<T> whereStartsWith(String paramString1, String paramString2)
  {
    whereMatches(paramString1, "^" + Pattern.quote(paramString2));
    return this;
  }
  
  public ParseQuery<T> whereWithinGeoBox(String paramString, ParseGeoPoint paramParseGeoPoint1, ParseGeoPoint paramParseGeoPoint2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramParseGeoPoint1);
    localArrayList.add(paramParseGeoPoint2);
    paramParseGeoPoint1 = new HashMap();
    paramParseGeoPoint1.put("$box", localArrayList);
    addCondition(paramString, "$within", paramParseGeoPoint1);
    return this;
  }
  
  public ParseQuery<T> whereWithinKilometers(String paramString, ParseGeoPoint paramParseGeoPoint, double paramDouble)
  {
    whereWithinRadians(paramString, paramParseGeoPoint, paramDouble / ParseGeoPoint.EARTH_MEAN_RADIUS_KM);
    return this;
  }
  
  public ParseQuery<T> whereWithinMiles(String paramString, ParseGeoPoint paramParseGeoPoint, double paramDouble)
  {
    whereWithinRadians(paramString, paramParseGeoPoint, paramDouble / ParseGeoPoint.EARTH_MEAN_RADIUS_MILE);
    return this;
  }
  
  public ParseQuery<T> whereWithinRadians(String paramString, ParseGeoPoint paramParseGeoPoint, double paramDouble)
  {
    addCondition(paramString, "$nearSphere", paramParseGeoPoint);
    addCondition(paramString, "$maxDistance", Double.valueOf(paramDouble));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */