package com.parse;

import L;
import N;
import android.content.Context;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.SimpleTimeZone;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseObject
{
  static final String API_VERSION = "2";
  private static final String AUTO_CLASS_NAME = "_Automatic";
  public static final String DEFAULT_PIN = "_default";
  private static final String NEW_OFFLINE_OBJECT_ID_PLACEHOLDER = "*** Offline Object ***";
  private static final String REST_KEY_COMPLETE = "__complete";
  private static final String REST_KEY_OPERATIONS = "__operations";
  private static final String TAG = "com.parse.ParseObject";
  static final String VERSION_NAME = "1.7.1";
  private static final Map<Class<? extends ParseObject>, String> classNames;
  private static final DateFormat impreciseDateFormat;
  private static final ThreadLocal<String> isCreatingPointerForObjectId = new ParseObject.1();
  private static final Map<String, Class<? extends ParseObject>> objectTypes;
  static String server = "https://api.parse.com";
  private String className;
  private Date createdAt;
  private final Map<String, Boolean> dataAvailability;
  private final Map<String, Object> estimatedData;
  boolean hasBeenFetched;
  private final Map<Object, ParseJSONCacheItem> hashedObjects;
  boolean isDeleted;
  int isDeletingEventually;
  private String localId;
  final Object mutex = new Object();
  private String objectId;
  final LinkedList<ParseOperationSet> operationSetQueue;
  private final ParseMulticastDelegate<ParseObject> saveEvent = new ParseMulticastDelegate();
  private final Map<String, Object> serverData;
  final TaskQueue taskQueue = new TaskQueue();
  private Date updatedAt;
  
  static
  {
    classNames = new ConcurrentHashMap();
    objectTypes = new ConcurrentHashMap();
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(new SimpleTimeZone(0, "GMT"));
    impreciseDateFormat = localSimpleDateFormat;
  }
  
  protected ParseObject()
  {
    this("_Automatic");
  }
  
  public ParseObject(String paramString)
  {
    String str2 = (String)isCreatingPointerForObjectId.get();
    if (paramString == null) {
      throw new IllegalArgumentException("You must specify a Parse class name when creating a new ParseObject.");
    }
    String str1 = paramString;
    if ("_Automatic".equals(paramString)) {
      str1 = getClassName(getClass());
    }
    if ((getClass().equals(ParseObject.class)) && (objectTypes.containsKey(str1)) && (!((Class)objectTypes.get(str1)).isInstance(this))) {
      throw new IllegalArgumentException("You must create this type of ParseObject using ParseObject.create() or the proper subclass.");
    }
    if ((!getClass().equals(ParseObject.class)) && (!getClass().equals(objectTypes.get(str1)))) {
      throw new IllegalArgumentException("You must register this ParseObject subclass before instantiating it.");
    }
    localId = null;
    serverData = new HashMap();
    operationSetQueue = new LinkedList();
    operationSetQueue.add(new ParseOperationSet());
    estimatedData = new HashMap();
    hashedObjects = new IdentityHashMap();
    dataAvailability = new HashMap();
    className = str1;
    if (str2 == null) {
      setDefaultValues();
    }
    for (hasBeenFetched = true;; hasBeenFetched = false)
    {
      paramString = OfflineStore.getCurrent();
      if (paramString != null) {
        paramString.registerNewObject(this);
      }
      return;
      if (!str2.equals("*** Offline Object ***")) {
        objectId = str2;
      }
    }
  }
  
  private void applyOperations(ParseOperationSet paramParseOperationSet, Map<String, Object> paramMap)
  {
    for (;;)
    {
      String str;
      synchronized (mutex)
      {
        Iterator localIterator = paramParseOperationSet.keySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        str = (String)localIterator.next();
        Object localObject2 = ((ParseFieldOperation)paramParseOperationSet.get(str)).apply(paramMap.get(str), this, str);
        if (localObject2 != null) {
          paramMap.put(str, localObject2);
        }
      }
      paramMap.remove(str);
    }
  }
  
  private boolean canBeSerialized()
  {
    synchronized (mutex)
    {
      L localL = new L(Boolean.valueOf(true));
      new ParseObject.36(this, localL).setYieldRoot(false).setTraverseParseObjects(true).traverse(this);
      boolean bool = ((Boolean)localL.a()).booleanValue();
      return bool;
    }
  }
  
  private void checkForChangesToMutableContainer(String paramString, Object paramObject)
  {
    ParseJSONCacheItem localParseJSONCacheItem1;
    synchronized (mutex)
    {
      if (Parse.isContainerObject(paramObject))
      {
        localParseJSONCacheItem1 = (ParseJSONCacheItem)hashedObjects.get(paramObject);
        if (localParseJSONCacheItem1 == null) {
          throw new IllegalArgumentException("ParseObject contains container item that isn't cached.");
        }
      }
    }
    for (;;)
    {
      try
      {
        ParseJSONCacheItem localParseJSONCacheItem2 = new ParseJSONCacheItem(paramObject);
        if (!localParseJSONCacheItem1.equals(localParseJSONCacheItem2)) {
          performOperation(paramString, new ParseSetOperation(paramObject));
        }
        return;
      }
      catch (JSONException paramString)
      {
        throw new RuntimeException(paramString);
      }
      hashedObjects.remove(paramObject);
    }
  }
  
  private void checkGetAccess(String paramString)
  {
    if (!isDataAvailable(paramString)) {
      throw new IllegalStateException("ParseObject has no data for this key.  Call fetchIfNeeded() to get the data.");
    }
  }
  
  private void checkpointAllMutableContainers()
  {
    synchronized (mutex)
    {
      Iterator localIterator = estimatedData.values().iterator();
      if (localIterator.hasNext()) {
        checkpointMutableContainer(localIterator.next());
      }
    }
  }
  
  private void checkpointMutableContainer(Object paramObject)
  {
    synchronized (mutex)
    {
      boolean bool = Parse.isContainerObject(paramObject);
      if (bool) {}
      try
      {
        ParseJSONCacheItem localParseJSONCacheItem = new ParseJSONCacheItem(paramObject);
        hashedObjects.put(paramObject, localParseJSONCacheItem);
        return;
      }
      catch (JSONException paramObject)
      {
        throw new RuntimeException((Throwable)paramObject);
      }
    }
  }
  
  private static void collectDirtyChildren(Object paramObject, List<ParseObject> paramList, List<ParseFile> paramList1)
  {
    collectDirtyChildren(paramObject, paramList, paramList1, new IdentityHashMap(), new IdentityHashMap());
  }
  
  private static void collectDirtyChildren(Object paramObject, List<ParseObject> paramList, List<ParseFile> paramList1, IdentityHashMap<ParseObject, ParseObject> paramIdentityHashMap1, IdentityHashMap<ParseObject, ParseObject> paramIdentityHashMap2)
  {
    new ParseObject.35(paramList1, paramIdentityHashMap1, paramIdentityHashMap2, paramList).setYieldRoot(true).traverse(paramObject);
  }
  
  private Map<String, ParseObject> collectFetchedObjects()
  {
    HashMap localHashMap = new HashMap();
    new ParseObject.4(this, localHashMap).traverse(estimatedData);
    return localHashMap;
  }
  
  private ParseCommand constructDeleteCommand(boolean paramBoolean, String paramString)
  {
    synchronized (mutex)
    {
      paramString = new ParseCommand("delete", paramString);
      paramString.enableRetrying();
      paramString.put("classname", className);
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("objectId", objectId);
        paramString.put("data", localJSONObject);
        return paramString;
      }
      catch (JSONException paramString)
      {
        throw new RuntimeException(paramString.getMessage());
      }
    }
  }
  
  public static <T extends ParseObject> T create(Class<T> paramClass)
  {
    return create(getClassName(paramClass));
  }
  
  public static ParseObject create(String paramString)
  {
    if (objectTypes.containsKey(paramString)) {
      try
      {
        paramString = (ParseObject)((Class)objectTypes.get(paramString)).newInstance();
        return paramString;
      }
      catch (Exception paramString)
      {
        if ((paramString instanceof RuntimeException)) {
          throw ((RuntimeException)paramString);
        }
        throw new RuntimeException("Failed to create instance of subclass.", paramString);
      }
    }
    return new ParseObject(paramString);
  }
  
  public static <T extends ParseObject> T createWithoutData(Class<T> paramClass, String paramString)
  {
    return createWithoutData(getClassName(paramClass), paramString);
  }
  
  /* Error */
  public static ParseObject createWithoutData(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: invokestatic 216	com/parse/OfflineStore:getCurrent	()Lcom/parse/OfflineStore;
    //   3: astore_3
    //   4: aload_1
    //   5: ifnonnull +80 -> 85
    //   8: getstatic 116	com/parse/ParseObject:isCreatingPointerForObjectId	Ljava/lang/ThreadLocal;
    //   11: ldc 17
    //   13: invokevirtual 481	java/lang/ThreadLocal:set	(Ljava/lang/Object;)V
    //   16: aload_3
    //   17: ifnull +91 -> 108
    //   20: aload_1
    //   21: ifnull +87 -> 108
    //   24: aload_3
    //   25: aload_0
    //   26: aload_1
    //   27: invokevirtual 485	com/parse/OfflineStore:getOrCreateObjectWithoutData	(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    //   30: astore_1
    //   31: aload_1
    //   32: getfield 490	android/util/Pair:first	Ljava/lang/Object;
    //   35: checkcast 2	com/parse/ParseObject
    //   38: astore_0
    //   39: aload_1
    //   40: getfield 493	android/util/Pair:second	Ljava/lang/Object;
    //   43: checkcast 332	java/lang/Boolean
    //   46: invokevirtual 362	java/lang/Boolean:booleanValue	()Z
    //   49: istore_2
    //   50: iload_2
    //   51: ifeq +67 -> 118
    //   54: aload_0
    //   55: invokevirtual 496	com/parse/ParseObject:hasChanges	()Z
    //   58: ifeq +60 -> 118
    //   61: new 394	java/lang/IllegalStateException
    //   64: dup
    //   65: ldc_w 498
    //   68: invokespecial 397	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   71: athrow
    //   72: astore_0
    //   73: aload_0
    //   74: athrow
    //   75: astore_0
    //   76: getstatic 116	com/parse/ParseObject:isCreatingPointerForObjectId	Ljava/lang/ThreadLocal;
    //   79: aconst_null
    //   80: invokevirtual 481	java/lang/ThreadLocal:set	(Ljava/lang/Object;)V
    //   83: aload_0
    //   84: athrow
    //   85: getstatic 116	com/parse/ParseObject:isCreatingPointerForObjectId	Ljava/lang/ThreadLocal;
    //   88: aload_1
    //   89: invokevirtual 481	java/lang/ThreadLocal:set	(Ljava/lang/Object;)V
    //   92: goto -76 -> 16
    //   95: astore_0
    //   96: new 388	java/lang/RuntimeException
    //   99: dup
    //   100: ldc_w 469
    //   103: aload_0
    //   104: invokespecial 472	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   107: athrow
    //   108: aload_0
    //   109: invokestatic 461	com/parse/ParseObject:create	(Ljava/lang/String;)Lcom/parse/ParseObject;
    //   112: astore_0
    //   113: iconst_1
    //   114: istore_2
    //   115: goto -65 -> 50
    //   118: getstatic 116	com/parse/ParseObject:isCreatingPointerForObjectId	Ljava/lang/ThreadLocal;
    //   121: aconst_null
    //   122: invokevirtual 481	java/lang/ThreadLocal:set	(Ljava/lang/Object;)V
    //   125: aload_0
    //   126: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	paramString1	String
    //   0	127	1	paramString2	String
    //   49	66	2	bool	boolean
    //   3	22	3	localOfflineStore	OfflineStore
    // Exception table:
    //   from	to	target	type
    //   8	16	72	java/lang/RuntimeException
    //   24	50	72	java/lang/RuntimeException
    //   54	72	72	java/lang/RuntimeException
    //   85	92	72	java/lang/RuntimeException
    //   108	113	72	java/lang/RuntimeException
    //   8	16	75	finally
    //   24	50	75	finally
    //   54	72	75	finally
    //   73	75	75	finally
    //   85	92	75	finally
    //   96	108	75	finally
    //   108	113	75	finally
    //   8	16	95	java/lang/Exception
    //   24	50	95	java/lang/Exception
    //   54	72	95	java/lang/Exception
    //   85	92	95	java/lang/Exception
    //   108	113	95	java/lang/Exception
  }
  
  private ParseOperationSet currentOperations()
  {
    synchronized (mutex)
    {
      ParseOperationSet localParseOperationSet = (ParseOperationSet)operationSetQueue.getLast();
      return localParseOperationSet;
    }
  }
  
  private static N<Void> deepSaveAsync(Object paramObject, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = new ArrayList();
    collectDirtyChildren(paramObject, localArrayList, (List)localObject);
    paramObject = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((List)paramObject).add(((ParseFile)((Iterator)localObject).next()).saveInBackground());
    }
    return N.a((Collection)paramObject).d(new ParseObject.37(localArrayList, paramString));
  }
  
  public static <T extends ParseObject> void deleteAll(List<T> paramList)
  {
    Parse.waitForTask(deleteAllAsync(paramList, ParseUser.getCurrentSessionToken()));
  }
  
  private static <T extends ParseObject> N<Void> deleteAllAsync(List<T> paramList, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ParseObject localParseObject = (ParseObject)paramList.next();
      if (!localHashSet.contains(localParseObject.getObjectId()))
      {
        localHashSet.add(localParseObject.getObjectId());
        localArrayList.add(localParseObject);
      }
    }
    return N.a(null).b(new ParseObject.34(localArrayList, paramString));
  }
  
  public static <T extends ParseObject> N<Void> deleteAllInBackground(List<T> paramList)
  {
    return deleteAllAsync(paramList, ParseUser.getCurrentSessionToken());
  }
  
  public static <T extends ParseObject> void deleteAllInBackground(List<T> paramList, DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(deleteAllInBackground(paramList), paramDeleteCallback);
  }
  
  private N<Void> deleteAsync(N<Void> paramN)
  {
    String str = ParseUser.getCurrentSessionToken();
    return N.a(null).d(new ParseObject.31(this)).d(TaskQueue.waitFor(paramN)).d(new ParseObject.30(this, str)).d(new ParseObject.29(this));
  }
  
  /* Error */
  static <T> N<T> enqueueForAll(List<? extends ParseObject> paramList, M<Void, N<T>> paramM)
  {
    // Byte code:
    //   0: invokestatic 601	N:a	()LZ;
    //   3: astore_3
    //   4: new 505	java/util/ArrayList
    //   7: dup
    //   8: aload_0
    //   9: invokeinterface 605 1 0
    //   14: invokespecial 608	java/util/ArrayList:<init>	(I)V
    //   17: astore_2
    //   18: aload_0
    //   19: invokeinterface 511 1 0
    //   24: astore 4
    //   26: aload 4
    //   28: invokeinterface 309 1 0
    //   33: ifeq +29 -> 62
    //   36: aload_2
    //   37: aload 4
    //   39: invokeinterface 312 1 0
    //   44: checkcast 2	com/parse/ParseObject
    //   47: getfield 133	com/parse/ParseObject:taskQueue	Lcom/parse/TaskQueue;
    //   50: invokevirtual 612	com/parse/TaskQueue:getLock	()Ljava/util/concurrent/locks/Lock;
    //   53: invokeinterface 518 2 0
    //   58: pop
    //   59: goto -33 -> 26
    //   62: new 614	com/parse/LockSet
    //   65: dup
    //   66: aload_2
    //   67: invokespecial 617	com/parse/LockSet:<init>	(Ljava/util/Collection;)V
    //   70: astore_2
    //   71: aload_2
    //   72: invokevirtual 620	com/parse/LockSet:lock	()V
    //   75: aload_1
    //   76: aload_3
    //   77: invokevirtual 623	Z:a	()LN;
    //   80: invokeinterface 628 2 0
    //   85: checkcast 520	N
    //   88: astore_1
    //   89: new 505	java/util/ArrayList
    //   92: dup
    //   93: invokespecial 506	java/util/ArrayList:<init>	()V
    //   96: astore 4
    //   98: aload_0
    //   99: invokeinterface 511 1 0
    //   104: astore_0
    //   105: aload_0
    //   106: invokeinterface 309 1 0
    //   111: ifeq +52 -> 163
    //   114: aload_0
    //   115: invokeinterface 312 1 0
    //   120: checkcast 2	com/parse/ParseObject
    //   123: getfield 133	com/parse/ParseObject:taskQueue	Lcom/parse/TaskQueue;
    //   126: new 630	com/parse/ParseObject$2
    //   129: dup
    //   130: aload 4
    //   132: aload_1
    //   133: invokespecial 633	com/parse/ParseObject$2:<init>	(Ljava/util/List;LN;)V
    //   136: invokevirtual 636	com/parse/TaskQueue:enqueue	(LM;)LN;
    //   139: pop
    //   140: goto -35 -> 105
    //   143: astore_0
    //   144: aload_2
    //   145: invokevirtual 639	com/parse/LockSet:unlock	()V
    //   148: aload_0
    //   149: athrow
    //   150: astore_0
    //   151: aload_0
    //   152: athrow
    //   153: astore_0
    //   154: new 388	java/lang/RuntimeException
    //   157: dup
    //   158: aload_0
    //   159: invokespecial 391	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   162: athrow
    //   163: aload 4
    //   165: invokestatic 523	N:a	(Ljava/util/Collection;)LN;
    //   168: new 641	com/parse/ParseObject$3
    //   171: dup
    //   172: aload_3
    //   173: invokespecial 644	com/parse/ParseObject$3:<init>	(LZ;)V
    //   176: invokevirtual 646	N:a	(LM;)LN;
    //   179: pop
    //   180: aload_2
    //   181: invokevirtual 639	com/parse/LockSet:unlock	()V
    //   184: aload_1
    //   185: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	paramList	List<? extends ParseObject>
    //   0	186	1	paramM	M<Void, N<T>>
    //   17	164	2	localObject1	Object
    //   3	170	3	localZ	Z
    //   24	140	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   75	89	143	finally
    //   89	105	143	finally
    //   105	140	143	finally
    //   151	153	143	finally
    //   154	163	143	finally
    //   163	180	143	finally
    //   75	89	150	java/lang/RuntimeException
    //   75	89	153	java/lang/Exception
  }
  
  private N<Void> enqueueSaveEventuallyOperationAsync(ParseOperationSet paramParseOperationSet)
  {
    if (!paramParseOperationSet.isSaveEventually()) {
      throw new IllegalStateException("This should only be used to enqueue saveEventually operation sets");
    }
    return taskQueue.enqueue(new ParseObject.14(this, paramParseOperationSet));
  }
  
  public static <T extends ParseObject> List<T> fetchAll(List<T> paramList)
  {
    return (List)Parse.waitForTask(fetchAllInBackground(paramList));
  }
  
  private static <T extends ParseObject> N<List<T>> fetchAllAsync(List<T> paramList, ParseUser paramParseUser, N<Void> paramN)
  {
    if (paramList.size() == 0) {
      return N.a(paramList);
    }
    ArrayList localArrayList = new ArrayList();
    Object localObject = ((ParseObject)paramList.get(0)).getClassName();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      ParseObject localParseObject = (ParseObject)localIterator.next();
      if (!localParseObject.getClassName().equals(localObject)) {
        throw new IllegalArgumentException("All objects should have the same class");
      }
      if (localParseObject.getObjectId() == null) {
        throw new IllegalArgumentException("All objects must exist on the server");
      }
      localArrayList.add(localParseObject.getObjectId());
    }
    localObject = ParseQuery.getQuery((String)localObject);
    ((ParseQuery)localObject).whereContainedIn("objectId", localArrayList);
    return paramN.b(new ParseObject.42((ParseQuery)localObject, paramParseUser)).c(new ParseObject.41(paramList));
  }
  
  public static <T extends ParseObject> List<T> fetchAllIfNeeded(List<T> paramList)
  {
    return (List)Parse.waitForTask(fetchAllIfNeededInBackground(paramList));
  }
  
  private static <T extends ParseObject> N<List<T>> fetchAllIfNeededAsync(List<T> paramList, ParseUser paramParseUser, N<Void> paramN)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject2 = null;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject3 = (ParseObject)localIterator.next();
      localObject1 = localObject2;
      if (!((ParseObject)localObject3).isDataAvailable())
      {
        if ((localObject2 != null) && (!((String)localObject2).equals(((ParseObject)localObject3).getClassName()))) {
          throw new IllegalArgumentException("All objects should have the same class");
        }
        localObject2 = ((ParseObject)localObject3).getClassName();
        localObject3 = ((ParseObject)localObject3).getObjectId();
        localObject1 = localObject2;
        if (localObject3 != null)
        {
          localArrayList.add(localObject3);
          localObject1 = localObject2;
        }
      }
      localObject2 = localObject1;
    }
    if (localArrayList.size() == 0) {
      return N.a(paramList);
    }
    Object localObject1 = ParseQuery.getQuery((String)localObject2);
    ((ParseQuery)localObject1).whereContainedIn("objectId", localArrayList);
    return paramN.b(new ParseObject.39((ParseQuery)localObject1, paramParseUser)).c(new ParseObject.38(paramList));
  }
  
  public static <T extends ParseObject> N<List<T>> fetchAllIfNeededInBackground(List<T> paramList)
  {
    return enqueueForAll(paramList, new ParseObject.40(paramList, ParseUser.getCurrentUser()));
  }
  
  public static <T extends ParseObject> void fetchAllIfNeededInBackground(List<T> paramList, FindCallback<T> paramFindCallback)
  {
    Parse.callbackOnMainThreadAsync(fetchAllIfNeededInBackground(paramList), paramFindCallback);
  }
  
  public static <T extends ParseObject> N<List<T>> fetchAllInBackground(List<T> paramList)
  {
    return enqueueForAll(paramList, new ParseObject.43(paramList, ParseUser.getCurrentUser()));
  }
  
  public static <T extends ParseObject> void fetchAllInBackground(List<T> paramList, FindCallback<T> paramFindCallback)
  {
    Parse.callbackOnMainThreadAsync(fetchAllInBackground(paramList), paramFindCallback);
  }
  
  private static void findUnsavedChildren(Object paramObject, List<ParseObject> paramList)
  {
    if ((paramObject instanceof List))
    {
      paramObject = ((List)paramObject).iterator();
      while (((Iterator)paramObject).hasNext()) {
        findUnsavedChildren(((Iterator)paramObject).next(), paramList);
      }
    }
    if ((paramObject instanceof Map))
    {
      paramObject = ((Map)paramObject).values().iterator();
      while (((Iterator)paramObject).hasNext()) {
        findUnsavedChildren(((Iterator)paramObject).next(), paramList);
      }
    }
    if ((paramObject instanceof ParseObject))
    {
      paramObject = (ParseObject)paramObject;
      if (((ParseObject)paramObject).isDirty()) {
        paramList.add(paramObject);
      }
    }
  }
  
  static <T extends ParseObject> T fromJSON(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    return fromJSON(paramJSONObject, paramString, paramBoolean, new ParseDecoder());
  }
  
  static <T extends ParseObject> T fromJSON(JSONObject paramJSONObject, String paramString, boolean paramBoolean, ParseDecoder paramParseDecoder)
  {
    Object localObject = null;
    JSONObject localJSONObject = paramJSONObject.optJSONObject("data");
    if (localJSONObject != null)
    {
      localObject = localJSONObject.optString("objectId", null);
      paramString = localJSONObject.optString("classname", paramString);
    }
    for (;;)
    {
      paramString = createWithoutData(paramString, (String)localObject);
      paramString.mergeAfterFetch(paramJSONObject, paramParseDecoder, paramBoolean);
      return paramString;
      localJSONObject = null;
      paramString = (String)localObject;
      localObject = localJSONObject;
    }
  }
  
  private ParseACL getACL(boolean paramBoolean)
  {
    synchronized (mutex)
    {
      checkGetAccess("ACL");
      Object localObject2 = estimatedData.get("ACL");
      if (localObject2 == null) {
        return null;
      }
      if (!(localObject2 instanceof ParseACL)) {
        throw new RuntimeException("only ACLs can be stored in the ACL key");
      }
    }
    if ((paramBoolean) && (((ParseACL)localObject3).isShared()))
    {
      localParseACL = ((ParseACL)localObject3).copy();
      estimatedData.put("ACL", localParseACL);
      addToHashedObjects(localParseACL);
      return localParseACL;
    }
    ParseACL localParseACL = (ParseACL)localParseACL;
    return localParseACL;
  }
  
  static String getApplicationId()
  {
    Parse.checkInit();
    return Parse.applicationId;
  }
  
  static String getClassName(Class<? extends ParseObject> paramClass)
  {
    String str = (String)classNames.get(paramClass);
    Object localObject = str;
    if (str == null)
    {
      localObject = (ParseClassName)paramClass.getAnnotation(ParseClassName.class);
      if (localObject == null) {
        localObject = null;
      }
    }
    else
    {
      return (String)localObject;
    }
    localObject = ((ParseClassName)localObject).value();
    classNames.put(paramClass, localObject);
    return (String)localObject;
  }
  
  static ParseObject getFromDisk(Context paramContext, String paramString)
  {
    if (OfflineStore.isEnabled()) {
      throw new IllegalStateException("ParseObject#getFromDisk is not allowed when OfflineStore is enabled");
    }
    paramContext = Parse.getDiskObject(paramContext, paramString);
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramString = createWithoutData(paramContext.getString("classname"), null);
      paramString.mergeFromServer(paramContext, new ParseDecoder(), true);
      return paramString;
    }
    catch (JSONException paramContext) {}
    return null;
  }
  
  private N<Void> handleDeleteResultAsync(Object paramObject)
  {
    int i = 1;
    N localN = N.a(null);
    localObject = mutex;
    if (paramObject != null) {}
    for (;;)
    {
      if (i != 0) {}
      try
      {
        isDeleted = true;
        localObject = OfflineStore.getCurrent();
        paramObject = localN;
        if (localObject != null) {
          paramObject = localN.b(new ParseObject.32(this, (OfflineStore)localObject));
        }
        return (N<Void>)paramObject;
      }
      finally {}
      i = 0;
    }
  }
  
  private boolean hasDirtyChildren()
  {
    for (;;)
    {
      synchronized (mutex)
      {
        ArrayList localArrayList = new ArrayList();
        findUnsavedChildren(estimatedData, localArrayList);
        if (localArrayList.size() > 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  private static Date impreciseParseDate(String paramString)
  {
    try
    {
      Date localDate = impreciseDateFormat.parse(paramString);
      paramString = localDate;
    }
    catch (java.text.ParseException localParseException)
    {
      for (;;)
      {
        Parse.logE("com.parse.ParseObject", "could not parse date: " + paramString, localParseException);
        paramString = null;
      }
    }
    finally {}
    return paramString;
  }
  
  private static boolean isAccessible(Member paramMember)
  {
    return (Modifier.isPublic(paramMember.getModifiers())) || ((paramMember.getDeclaringClass().getPackage().getName().equals("com.parse")) && (!Modifier.isPrivate(paramMember.getModifiers())) && (!Modifier.isProtected(paramMember.getModifiers())));
  }
  
  private boolean isDataAvailable(String paramString)
  {
    for (;;)
    {
      synchronized (mutex)
      {
        if (!isDataAvailable())
        {
          if ((!dataAvailability.containsKey(paramString)) || (!((Boolean)dataAvailability.get(paramString)).booleanValue())) {
            break label63;
          }
          break label58;
          return bool;
        }
      }
      label58:
      boolean bool = true;
      continue;
      label63:
      bool = false;
    }
  }
  
  private void mergeAfterSave(JSONObject paramJSONObject, ParseDecoder paramParseDecoder, ParseOperationSet paramParseOperationSet)
  {
    synchronized (mutex)
    {
      Object localObject2 = operationSetQueue.listIterator(operationSetQueue.indexOf(paramParseOperationSet));
      ((ListIterator)localObject2).next();
      ((ListIterator)localObject2).remove();
      localObject2 = (ParseOperationSet)((ListIterator)localObject2).next();
      if (paramJSONObject == null)
      {
        ((ParseOperationSet)localObject2).mergeFrom(paramParseOperationSet);
        return;
      }
      applyOperations(paramParseOperationSet, serverData);
      mergeFromServer(paramJSONObject, paramParseDecoder, false);
      rebuildEstimatedData();
      checkpointAllMutableContainers();
    }
  }
  
  public static <T extends ParseObject> void pinAll(String paramString, List<T> paramList)
  {
    Parse.waitForTask(pinAllInBackground(paramString, paramList));
  }
  
  public static <T extends ParseObject> void pinAll(List<T> paramList)
  {
    Parse.waitForTask(pinAllInBackground("_default", paramList));
  }
  
  public static <T extends ParseObject> N<Void> pinAllInBackground(String paramString, List<T> paramList)
  {
    return ParsePin.pinAllObjectsAsync(paramString, paramList);
  }
  
  public static <T extends ParseObject> N<Void> pinAllInBackground(List<T> paramList)
  {
    return pinAllInBackground("_default", paramList);
  }
  
  public static <T extends ParseObject> void pinAllInBackground(String paramString, List<T> paramList, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(pinAllInBackground(paramString, paramList), paramSaveCallback);
  }
  
  public static <T extends ParseObject> void pinAllInBackground(List<T> paramList, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(pinAllInBackground("_default", paramList), paramSaveCallback);
  }
  
  private void rebuildEstimatedData()
  {
    synchronized (mutex)
    {
      estimatedData.clear();
      estimatedData.putAll(serverData);
      Iterator localIterator = operationSetQueue.iterator();
      if (localIterator.hasNext()) {
        applyOperations((ParseOperationSet)localIterator.next(), estimatedData);
      }
    }
  }
  
  static void registerParseSubclasses()
  {
    registerSubclass(ParseUser.class);
    registerSubclass(ParseRole.class);
    registerSubclass(ParseInstallation.class);
    registerSubclass(ParsePin.class);
    registerSubclass(EventuallyPin.class);
  }
  
  public static void registerSubclass(Class<? extends ParseObject> paramClass)
  {
    String str = getClassName(paramClass);
    if (str == null) {
      throw new IllegalArgumentException("No ParseClassName annoation provided on " + paramClass);
    }
    if (paramClass.getDeclaredConstructors().length > 0) {
      try
      {
        if (!isAccessible(paramClass.getDeclaredConstructor(new Class[0]))) {
          throw new IllegalArgumentException("Default constructor for " + paramClass + " is not accessible.");
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        throw new IllegalArgumentException("No default constructor provided for " + paramClass);
      }
    }
    Class localClass = (Class)objectTypes.get(localNoSuchMethodException);
    if ((localClass != null) && (paramClass.isAssignableFrom(localClass))) {}
    do
    {
      do
      {
        return;
        objectTypes.put(localNoSuchMethodException, paramClass);
      } while ((localClass == null) || (paramClass.equals(localClass)));
      if (localNoSuchMethodException.equals(getClassName(ParseUser.class)))
      {
        ParseUser.clearCurrentUserFromMemory();
        return;
      }
    } while (!localNoSuchMethodException.equals(getClassName(ParseInstallation.class)));
    ParseInstallation.clearCurrentInstallationFromMemory();
  }
  
  public static <T extends ParseObject> void saveAll(List<T> paramList)
  {
    Parse.waitForTask(saveAllInBackground(paramList));
  }
  
  public static <T extends ParseObject> N<Void> saveAllInBackground(List<T> paramList)
  {
    return deepSaveAsync(paramList, ParseUser.getCurrentSessionToken());
  }
  
  public static <T extends ParseObject> void saveAllInBackground(List<T> paramList, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(saveAllInBackground(paramList), paramSaveCallback);
  }
  
  private void setObjectIdInternal(String paramString)
  {
    synchronized (mutex)
    {
      String str = objectId;
      OfflineStore localOfflineStore = OfflineStore.getCurrent();
      if (localOfflineStore != null) {
        localOfflineStore.updateObjectId(this, str, paramString);
      }
      objectId = paramString;
      if (localId != null)
      {
        LocalIdManager.getDefaultInstance().setObjectId(localId, objectId);
        localId = null;
      }
      return;
    }
  }
  
  public static void unpinAll()
  {
    Parse.waitForTask(unpinAllInBackground());
  }
  
  public static void unpinAll(String paramString)
  {
    Parse.waitForTask(unpinAllInBackground(paramString));
  }
  
  public static <T extends ParseObject> void unpinAll(String paramString, List<T> paramList)
  {
    Parse.waitForTask(unpinAllInBackground(paramString, paramList));
  }
  
  public static <T extends ParseObject> void unpinAll(List<T> paramList)
  {
    Parse.waitForTask(unpinAllInBackground("_default", paramList));
  }
  
  public static N<Void> unpinAllInBackground()
  {
    return unpinAllInBackground("_default");
  }
  
  public static N<Void> unpinAllInBackground(String paramString)
  {
    return ParsePin.unpinAllObjectsAsync(paramString);
  }
  
  public static <T extends ParseObject> N<Void> unpinAllInBackground(String paramString, List<T> paramList)
  {
    return ParsePin.unpinAllObjectsAsync(paramString, paramList);
  }
  
  public static <T extends ParseObject> N<Void> unpinAllInBackground(List<T> paramList)
  {
    return unpinAllInBackground("_default", paramList);
  }
  
  public static void unpinAllInBackground(DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(unpinAllInBackground(), paramDeleteCallback);
  }
  
  public static void unpinAllInBackground(String paramString, DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(unpinAllInBackground(paramString), paramDeleteCallback);
  }
  
  public static <T extends ParseObject> void unpinAllInBackground(String paramString, List<T> paramList, DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(unpinAllInBackground(paramString, paramList), paramDeleteCallback);
  }
  
  public static <T extends ParseObject> void unpinAllInBackground(List<T> paramList, DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(unpinAllInBackground("_default", paramList), paramDeleteCallback);
  }
  
  static void unregisterSubclass(String paramString)
  {
    objectTypes.remove(paramString);
  }
  
  public void add(String paramString, Object paramObject)
  {
    addAll(paramString, Arrays.asList(new Object[] { paramObject }));
  }
  
  public void addAll(String paramString, Collection<?> paramCollection)
  {
    performOperation(paramString, new ParseAddOperation(paramCollection));
  }
  
  public void addAllUnique(String paramString, Collection<?> paramCollection)
  {
    performOperation(paramString, new ParseAddUniqueOperation(paramCollection));
  }
  
  void addToHashedObjects(Object paramObject)
  {
    synchronized (mutex)
    {
      try
      {
        hashedObjects.put(paramObject, new ParseJSONCacheItem(paramObject));
        return;
      }
      catch (JSONException paramObject)
      {
        throw new IllegalArgumentException("Couldn't serialize container value to JSON.");
      }
    }
  }
  
  public void addUnique(String paramString, Object paramObject)
  {
    addAllUnique(paramString, Arrays.asList(new Object[] { paramObject }));
  }
  
  void checkForChangesToMutableContainers()
  {
    synchronized (mutex)
    {
      Iterator localIterator = estimatedData.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        checkForChangesToMutableContainer(str, estimatedData.get(str));
      }
    }
    hashedObjects.keySet().retainAll(estimatedData.values());
  }
  
  ParseCommand constructSaveCommand(ParseOperationSet paramParseOperationSet, ParseObjectEncodingStrategy paramParseObjectEncodingStrategy, String paramString)
  {
    for (;;)
    {
      synchronized (mutex)
      {
        paramParseObjectEncodingStrategy = toJSONObjectForSaving(paramParseOperationSet, paramParseObjectEncodingStrategy);
        if (objectId == null)
        {
          paramParseOperationSet = "create";
          paramParseOperationSet = new ParseCommand(paramParseOperationSet, paramString);
          paramParseOperationSet.enableRetrying();
          paramParseOperationSet.put("classname", className);
          try
          {
            paramParseOperationSet.put("data", paramParseObjectEncodingStrategy.getJSONObject("data"));
            return paramParseOperationSet;
          }
          catch (JSONException paramParseOperationSet)
          {
            throw new RuntimeException("could not decode data");
          }
        }
      }
      paramParseOperationSet = "update";
    }
  }
  
  public boolean containsKey(String paramString)
  {
    synchronized (mutex)
    {
      boolean bool = estimatedData.containsKey(paramString);
      return bool;
    }
  }
  
  void copyChangesFrom(ParseObject paramParseObject)
  {
    synchronized (mutex)
    {
      paramParseObject = (ParseOperationSet)operationSetQueue.getFirst();
      Iterator localIterator = paramParseObject.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        performOperation(str, (ParseFieldOperation)paramParseObject.get(str));
      }
    }
  }
  
  public final void delete()
  {
    Parse.waitForTask(deleteInBackground());
  }
  
  N<Object> deleteAsync(String paramString)
  {
    return constructDeleteCommand(true, paramString).executeAsync();
  }
  
  public final N<Void> deleteEventually()
  {
    for (;;)
    {
      synchronized (mutex)
      {
        validateDelete();
        isDeletingEventually += 1;
        if (getObjectId() != null) {
          break label130;
        }
        Object localObject1 = getOrCreateLocalId();
        Object localObject4 = OfflineStore.getCurrent();
        if (localObject4 != null) {
          localObject4 = ((OfflineStore)localObject4).updateDataForObjectAsync(this);
        }
        try
        {
          ParseCommand localParseCommand = constructDeleteCommand(false, ParseUser.getCurrentSessionToken());
          localParseCommand.setLocalId((String)localObject1);
          localObject1 = ((N)localObject4).b(new ParseObject.16(this, localParseCommand));
          if (!OfflineStore.isEnabled()) {
            break label117;
          }
          return ((N)localObject1).j();
        }
        catch (ParseException localParseException)
        {
          throw new IllegalStateException("Cannot deleteEventually this object.", localParseException);
        }
        localObject4 = N.a(null);
      }
      label117:
      return ((N)localObject2).d(new ParseObject.17(this));
      label130:
      Object localObject3 = null;
    }
  }
  
  public final void deleteEventually(DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(deleteEventually(), paramDeleteCallback);
  }
  
  public final N<Void> deleteInBackground()
  {
    return taskQueue.enqueue(new ParseObject.33(this));
  }
  
  public final void deleteInBackground(DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(deleteInBackground(), paramDeleteCallback);
  }
  
  public <T extends ParseObject> T fetch()
  {
    return (ParseObject)Parse.waitForTask(fetchInBackground());
  }
  
  <T extends ParseObject> N<T> fetchAsync(N<Void> paramN)
  {
    return N.b(new ParseObject.27(this, ParseUser.getCurrentSessionToken())).d(TaskQueue.waitFor(paramN)).d(new ParseObject.26(this)).d(new ParseObject.25(this)).c(new ParseObject.24(this));
  }
  
  public void fetchFromLocalDatastore()
  {
    Parse.waitForTask(fetchFromLocalDatastoreAsync());
  }
  
  <T extends ParseObject> N<T> fetchFromLocalDatastoreAsync()
  {
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    if (localOfflineStore == null) {
      throw new RuntimeException("You must enable the local datastore before calling fetchFromLocalDatastore().");
    }
    return localOfflineStore.fetchLocallyAsync(this);
  }
  
  public <T extends ParseObject> void fetchFromLocalDatastoreInBackground(GetCallback<T> paramGetCallback)
  {
    Parse.callbackOnMainThreadAsync(fetchFromLocalDatastoreAsync(), paramGetCallback);
  }
  
  public <T extends ParseObject> T fetchIfNeeded()
  {
    return (ParseObject)Parse.waitForTask(fetchIfNeededInBackground());
  }
  
  public final <T extends ParseObject> N<T> fetchIfNeededInBackground()
  {
    synchronized (mutex)
    {
      if (isDataAvailable())
      {
        localN = N.a(this);
        return localN;
      }
      N localN = fetchInBackground();
      return localN;
    }
  }
  
  public final <T extends ParseObject> void fetchIfNeededInBackground(GetCallback<T> paramGetCallback)
  {
    Parse.callbackOnMainThreadAsync(fetchIfNeededInBackground(), paramGetCallback);
  }
  
  public final <T extends ParseObject> N<T> fetchInBackground()
  {
    return taskQueue.enqueue(new ParseObject.28(this));
  }
  
  public final <T extends ParseObject> void fetchInBackground(GetCallback<T> paramGetCallback)
  {
    Parse.callbackOnMainThreadAsync(fetchInBackground(), paramGetCallback);
  }
  
  public Object get(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      Object localObject2 = estimatedData.get(paramString);
      if (((localObject2 instanceof ParseACL)) && (paramString.equals("ACL")))
      {
        ParseACL localParseACL = (ParseACL)localObject2;
        if (localParseACL.isShared())
        {
          paramString = localParseACL.copy();
          estimatedData.put("ACL", paramString);
          addToHashedObjects(paramString);
          paramString = getACL();
          return paramString;
        }
      }
      if ((localObject2 instanceof ParseRelation)) {
        ((ParseRelation)localObject2).ensureParentAndKey(this, paramString);
      }
      return localObject2;
    }
  }
  
  public ParseACL getACL()
  {
    return getACL(true);
  }
  
  public boolean getBoolean(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      paramString = estimatedData.get(paramString);
      if (!(paramString instanceof Boolean)) {
        return false;
      }
      boolean bool = ((Boolean)paramString).booleanValue();
      return bool;
    }
  }
  
  public byte[] getBytes(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      paramString = estimatedData.get(paramString);
      if (!(paramString instanceof byte[])) {
        return null;
      }
      paramString = (byte[])paramString;
      return paramString;
    }
  }
  
  public String getClassName()
  {
    synchronized (mutex)
    {
      String str = className;
      return str;
    }
  }
  
  public Date getCreatedAt()
  {
    synchronized (mutex)
    {
      Date localDate = createdAt;
      return localDate;
    }
  }
  
  public Date getDate(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      paramString = estimatedData.get(paramString);
      if (!(paramString instanceof Date)) {
        return null;
      }
      paramString = (Date)paramString;
      return paramString;
    }
  }
  
  public double getDouble(String paramString)
  {
    paramString = getNumber(paramString);
    if (paramString == null) {
      return 0.0D;
    }
    return paramString.doubleValue();
  }
  
  public int getInt(String paramString)
  {
    paramString = getNumber(paramString);
    if (paramString == null) {
      return 0;
    }
    return paramString.intValue();
  }
  
  public JSONArray getJSONArray(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      Object localObject2 = estimatedData.get(paramString);
      Object localObject1 = localObject2;
      if ((localObject2 instanceof List))
      {
        localObject1 = Parse.encode(localObject2, PointerOrLocalIdEncodingStrategy.get());
        put(paramString, localObject1);
      }
      if (!(localObject1 instanceof JSONArray)) {
        return null;
      }
      paramString = (JSONArray)localObject1;
      return paramString;
    }
  }
  
  public JSONObject getJSONObject(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      Object localObject2 = estimatedData.get(paramString);
      Object localObject1 = localObject2;
      if ((localObject2 instanceof Map))
      {
        localObject1 = Parse.encode(localObject2, PointerOrLocalIdEncodingStrategy.get());
        put(paramString, localObject1);
      }
      if (!(localObject1 instanceof JSONObject)) {
        return null;
      }
      paramString = (JSONObject)localObject1;
      return paramString;
    }
  }
  
  public <T> List<T> getList(String paramString)
  {
    synchronized (mutex)
    {
      Object localObject2 = estimatedData.get(paramString);
      Object localObject1 = localObject2;
      if ((localObject2 instanceof JSONArray))
      {
        localObject1 = new ParseDecoder().convertJSONArrayToList((JSONArray)localObject2);
        put(paramString, localObject1);
      }
      if (!(localObject1 instanceof List)) {
        return null;
      }
      paramString = (List)localObject1;
      return paramString;
    }
  }
  
  public long getLong(String paramString)
  {
    paramString = getNumber(paramString);
    if (paramString == null) {
      return 0L;
    }
    return paramString.longValue();
  }
  
  public <V> Map<String, V> getMap(String paramString)
  {
    synchronized (mutex)
    {
      Object localObject2 = estimatedData.get(paramString);
      Object localObject1 = localObject2;
      if ((localObject2 instanceof JSONObject))
      {
        localObject1 = new ParseDecoder().convertJSONObjectToMap((JSONObject)localObject2);
        put(paramString, localObject1);
      }
      if (!(localObject1 instanceof Map)) {
        return null;
      }
      paramString = (Map)localObject1;
      return paramString;
    }
  }
  
  public Number getNumber(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      paramString = estimatedData.get(paramString);
      if (!(paramString instanceof Number)) {
        return null;
      }
      paramString = (Number)paramString;
      return paramString;
    }
  }
  
  public String getObjectId()
  {
    synchronized (mutex)
    {
      String str = objectId;
      return str;
    }
  }
  
  String getOrCreateLocalId()
  {
    try
    {
      synchronized (mutex)
      {
        if (localId != null) {
          break label54;
        }
        if (objectId != null) {
          throw new IllegalStateException("Attempted to get a localId for an object with an objectId.");
        }
      }
      localId = LocalIdManager.getDefaultInstance().createLocalId();
    }
    finally {}
    label54:
    String str = localId;
    return str;
  }
  
  public ParseFile getParseFile(String paramString)
  {
    paramString = get(paramString);
    if (!(paramString instanceof ParseFile)) {
      return null;
    }
    return (ParseFile)paramString;
  }
  
  public ParseGeoPoint getParseGeoPoint(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      paramString = estimatedData.get(paramString);
      if (!(paramString instanceof ParseGeoPoint)) {
        return null;
      }
      paramString = (ParseGeoPoint)paramString;
      return paramString;
    }
  }
  
  public ParseObject getParseObject(String paramString)
  {
    paramString = get(paramString);
    if (!(paramString instanceof ParseObject)) {
      return null;
    }
    return (ParseObject)paramString;
  }
  
  public ParseUser getParseUser(String paramString)
  {
    paramString = get(paramString);
    if (!(paramString instanceof ParseUser)) {
      return null;
    }
    return (ParseUser)paramString;
  }
  
  public <T extends ParseObject> ParseRelation<T> getRelation(String paramString)
  {
    synchronized (mutex)
    {
      Object localObject2 = estimatedData.get(paramString);
      if ((localObject2 instanceof ParseRelation))
      {
        localObject2 = (ParseRelation)localObject2;
        ((ParseRelation)localObject2).ensureParentAndKey(this, paramString);
        return (ParseRelation<T>)localObject2;
      }
      localObject2 = new ParseRelation(this, paramString);
      estimatedData.put(paramString, localObject2);
      return (ParseRelation<T>)localObject2;
    }
  }
  
  public String getString(String paramString)
  {
    synchronized (mutex)
    {
      checkGetAccess(paramString);
      paramString = estimatedData.get(paramString);
      if (!(paramString instanceof String)) {
        return null;
      }
      paramString = (String)paramString;
      return paramString;
    }
  }
  
  public Date getUpdatedAt()
  {
    synchronized (mutex)
    {
      Date localDate = updatedAt;
      return localDate;
    }
  }
  
  N<Void> handleDeleteEventuallyResultAsync(Object paramObject)
  {
    synchronized (mutex)
    {
      isDeletingEventually -= 1;
      return handleDeleteResultAsync(paramObject).d(new ParseObject.18(this, paramObject));
    }
  }
  
  N<Void> handleFetchResultAsync(JSONObject paramJSONObject)
  {
    N localN2 = N.a((Void)null);
    Map localMap = collectFetchedObjects();
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    N localN1 = localN2;
    if (localOfflineStore != null) {
      localN1 = localN2.d(new ParseObject.20(this, localOfflineStore)).b(new ParseObject.19(this));
    }
    localN1 = localN1.d(new ParseObject.21(this, localMap, paramJSONObject));
    paramJSONObject = localN1;
    if (localOfflineStore != null) {
      paramJSONObject = localN1.d(new ParseObject.23(this, localOfflineStore)).b(new ParseObject.22(this));
    }
    return paramJSONObject;
  }
  
  N<Void> handleSaveEventuallyResultAsync(JSONObject paramJSONObject, ParseOperationSet paramParseOperationSet)
  {
    return handleSaveResultAsync(paramJSONObject, paramParseOperationSet).d(new ParseObject.15(this));
  }
  
  N<Void> handleSaveResultAsync(JSONObject paramJSONObject, ParseOperationSet paramParseOperationSet)
  {
    N localN2 = N.a((Void)null);
    Map localMap = collectFetchedObjects();
    OfflineStore localOfflineStore = OfflineStore.getCurrent();
    N localN1 = localN2;
    if (localOfflineStore != null) {
      localN1 = localN2.b(new ParseObject.5(this, localOfflineStore));
    }
    paramParseOperationSet = localN1.a(new ParseObject.6(this, localMap, paramJSONObject, paramParseOperationSet));
    paramJSONObject = paramParseOperationSet;
    if (localOfflineStore != null) {
      paramJSONObject = paramParseOperationSet.b(new ParseObject.7(this, localOfflineStore));
    }
    return paramJSONObject.a(new ParseObject.8(this));
  }
  
  public boolean has(String paramString)
  {
    return containsKey(paramString);
  }
  
  boolean hasChanges()
  {
    for (;;)
    {
      synchronized (mutex)
      {
        if (currentOperations().size() > 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  boolean hasOutstandingOperations()
  {
    for (boolean bool = true;; bool = false) {
      synchronized (mutex)
      {
        if (operationSetQueue.size() > 1) {
          return bool;
        }
      }
    }
  }
  
  public boolean hasSameId(ParseObject paramParseObject)
  {
    for (;;)
    {
      synchronized (mutex)
      {
        if ((getClassName() != null) && (getObjectId() != null) && (getClassName().equals(paramParseObject.getClassName())) && (getObjectId().equals(paramParseObject.getObjectId())))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void increment(String paramString)
  {
    increment(paramString, Integer.valueOf(1));
  }
  
  public void increment(String paramString, Number paramNumber)
  {
    performOperation(paramString, new ParseIncrementOperation(paramNumber));
  }
  
  public boolean isDataAvailable()
  {
    synchronized (mutex)
    {
      boolean bool = hasBeenFetched;
      return bool;
    }
  }
  
  public boolean isDirty()
  {
    return isDirty(true);
  }
  
  public boolean isDirty(String paramString)
  {
    synchronized (mutex)
    {
      boolean bool = currentOperations().containsKey(paramString);
      return bool;
    }
  }
  
  boolean isDirty(boolean paramBoolean)
  {
    for (;;)
    {
      synchronized (mutex)
      {
        checkForChangesToMutableContainers();
        if ((!isDeleted) && (getObjectId() != null) && (!hasChanges()))
        {
          if ((!paramBoolean) || (!hasDirtyChildren())) {
            break label60;
          }
          break label55;
          return paramBoolean;
        }
      }
      label55:
      paramBoolean = true;
      continue;
      label60:
      paramBoolean = false;
    }
  }
  
  public Set<String> keySet()
  {
    synchronized (mutex)
    {
      Set localSet = Collections.unmodifiableSet(estimatedData.keySet());
      return localSet;
    }
  }
  
  void mergeAfterFetch(JSONObject paramJSONObject, ParseDecoder paramParseDecoder, boolean paramBoolean)
  {
    synchronized (mutex)
    {
      mergeFromServer(paramJSONObject, paramParseDecoder, paramBoolean);
      rebuildEstimatedData();
      checkpointAllMutableContainers();
      return;
    }
  }
  
  void mergeFromObject(ParseObject paramParseObject)
  {
    synchronized (mutex)
    {
      objectId = objectId;
      createdAt = createdAt;
      updatedAt = updatedAt;
      serverData.clear();
      serverData.putAll(serverData);
      if (operationSetQueue.size() != 1) {
        throw new IllegalStateException("Attempt to mergeFromObject during a save.");
      }
    }
    operationSetQueue.clear();
    operationSetQueue.add(new ParseOperationSet());
    rebuildEstimatedData();
    checkpointAllMutableContainers();
  }
  
  void mergeFromServer(JSONObject paramJSONObject, ParseDecoder paramParseDecoder, boolean paramBoolean)
  {
    for (boolean bool = false;; bool = true)
    {
      Object localObject2;
      Object localObject3;
      Object localObject4;
      synchronized (mutex)
      {
        if ((hasBeenFetched) || (paramBoolean)) {
          continue;
        }
        hasBeenFetched = bool;
        try
        {
          if ((paramJSONObject.has("id")) && (objectId == null)) {
            setObjectIdInternal(paramJSONObject.getString("id"));
          }
          if (paramJSONObject.has("created_at"))
          {
            localObject2 = paramJSONObject.getString("created_at");
            if (localObject2 != null) {
              createdAt = impreciseParseDate((String)localObject2);
            }
          }
          if (paramJSONObject.has("updated_at"))
          {
            localObject2 = paramJSONObject.getString("updated_at");
            if (localObject2 != null) {
              updatedAt = impreciseParseDate((String)localObject2);
            }
          }
          if (paramJSONObject.has("pointers"))
          {
            localObject2 = paramJSONObject.getJSONObject("pointers");
            localObject3 = ((JSONObject)localObject2).keys();
            while (((Iterator)localObject3).hasNext())
            {
              localObject4 = (String)((Iterator)localObject3).next();
              JSONArray localJSONArray = ((JSONObject)localObject2).getJSONArray((String)localObject4);
              serverData.put(localObject4, createWithoutData(localJSONArray.optString(0), localJSONArray.optString(1)));
              continue;
              paramJSONObject = finally;
            }
          }
        }
        catch (JSONException paramJSONObject)
        {
          throw new RuntimeException(paramJSONObject);
        }
      }
      if (paramJSONObject.has("data"))
      {
        paramJSONObject = paramJSONObject.getJSONObject("data");
        localObject2 = paramJSONObject.keys();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (String)((Iterator)localObject2).next();
          dataAvailability.put(localObject3, Boolean.valueOf(true));
          if (((String)localObject3).equals("objectId"))
          {
            setObjectIdInternal(paramJSONObject.getString((String)localObject3));
          }
          else if (((String)localObject3).equals("createdAt"))
          {
            createdAt = Parse.stringToDate(paramJSONObject.getString((String)localObject3));
          }
          else if (((String)localObject3).equals("updatedAt"))
          {
            updatedAt = Parse.stringToDate(paramJSONObject.getString((String)localObject3));
          }
          else if (((String)localObject3).equals("ACL"))
          {
            localObject3 = ParseACL.createACLFromJSONObject(paramJSONObject.getJSONObject((String)localObject3), paramParseDecoder);
            serverData.put("ACL", localObject3);
            addToHashedObjects(localObject3);
          }
          else if ((!((String)localObject3).equals("__type")) && (!((String)localObject3).equals("className")))
          {
            localObject4 = paramParseDecoder.decode(paramJSONObject.get((String)localObject3));
            if (Parse.isContainerObject(localObject4)) {
              addToHashedObjects(localObject4);
            }
            serverData.put(localObject3, localObject4);
          }
        }
      }
      if ((updatedAt == null) && (createdAt != null)) {
        updatedAt = createdAt;
      }
      rebuildEstimatedData();
      checkpointAllMutableContainers();
      return;
    }
  }
  
  void mergeREST(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    for (;;)
    {
      synchronized (mutex)
      {
        try
        {
          Iterator localIterator = paramJSONObject.keys();
          if (!localIterator.hasNext()) {
            break label489;
          }
          localObject1 = (String)localIterator.next();
          dataAvailability.put(localObject1, Boolean.valueOf(true));
          if ((((String)localObject1).equals("__type")) || (((String)localObject1).equals("className"))) {
            continue;
          }
          if (((String)localObject1).equals("objectId"))
          {
            setObjectIdInternal(paramJSONObject.getString((String)localObject1));
            continue;
            paramJSONObject = finally;
          }
        }
        catch (JSONException paramJSONObject)
        {
          throw new RuntimeException(paramJSONObject);
        }
      }
      if (((String)localObject1).equals("createdAt"))
      {
        createdAt = Parse.stringToDate(paramJSONObject.getString((String)localObject1));
      }
      else if (((String)localObject1).equals("updatedAt"))
      {
        updatedAt = Parse.stringToDate(paramJSONObject.getString((String)localObject1));
      }
      else if (((String)localObject1).equals("isDeletingEventually"))
      {
        isDeletingEventually = paramJSONObject.getInt((String)localObject1);
      }
      else if (((String)localObject1).equals("ACL"))
      {
        localObject1 = ParseACL.createACLFromJSONObject(paramJSONObject.getJSONObject((String)localObject1), paramParseDecoder);
        serverData.put("ACL", localObject1);
        addToHashedObjects(localObject1);
      }
      else if (((String)localObject1).equals("__complete"))
      {
        if (hasBeenFetched) {
          break label555;
        }
        if (!paramJSONObject.getBoolean((String)localObject1)) {
          break label561;
        }
        break label555;
      }
    }
    int i;
    ParseOperationSet localParseOperationSet1;
    for (;;)
    {
      hasBeenFetched = bool;
      break;
      if (((String)localObject1).equals("__operations"))
      {
        ParseOperationSet localParseOperationSet2 = currentOperations();
        JSONArray localJSONArray = paramJSONObject.getJSONArray("__operations");
        if (localJSONArray != null)
        {
          operationSetQueue.clear();
          i = 0;
          localObject1 = null;
          if (i < localJSONArray.length())
          {
            localParseOperationSet1 = ParseOperationSet.fromRest(localJSONArray.getJSONObject(i), paramParseDecoder);
            if (localParseOperationSet1.isSaveEventually())
            {
              localObject2 = localObject1;
              if (localObject1 != null)
              {
                operationSetQueue.add(localObject1);
                localObject2 = null;
              }
              localArrayList.add(localParseOperationSet1);
              operationSetQueue.add(localParseOperationSet1);
              localObject1 = localObject2;
              break label567;
            }
            if (localObject1 == null) {
              break label574;
            }
            localParseOperationSet1.mergeFrom((ParseOperationSet)localObject1);
            break label574;
          }
          if (localObject1 != null) {
            operationSetQueue.add(localObject1);
          }
        }
        currentOperations().mergeFrom(localParseOperationSet2);
        break;
      }
      Object localObject2 = paramParseDecoder.decode(paramJSONObject.get((String)localObject1));
      if (Parse.isContainerObject(localObject2)) {
        addToHashedObjects(localObject2);
      }
      serverData.put(localObject1, localObject2);
      break;
      label489:
      if ((updatedAt == null) && (createdAt != null)) {
        updatedAt = createdAt;
      }
      rebuildEstimatedData();
      checkpointAllMutableContainers();
      paramJSONObject = localArrayList.iterator();
      while (paramJSONObject.hasNext()) {
        enqueueSaveEventuallyOperationAsync((ParseOperationSet)paramJSONObject.next());
      }
      return;
      label555:
      boolean bool = true;
      continue;
      label561:
      bool = false;
    }
    for (;;)
    {
      label567:
      i += 1;
      break;
      label574:
      localObject1 = localParseOperationSet1;
    }
  }
  
  boolean needsDefaultACL()
  {
    return true;
  }
  
  void performOperation(String paramString, ParseFieldOperation paramParseFieldOperation)
  {
    synchronized (mutex)
    {
      Object localObject2 = paramParseFieldOperation.apply(estimatedData.get(paramString), this, paramString);
      if (localObject2 != null)
      {
        estimatedData.put(paramString, localObject2);
        paramParseFieldOperation = paramParseFieldOperation.mergeWithPrevious((ParseFieldOperation)currentOperations().get(paramString));
        currentOperations().put(paramString, paramParseFieldOperation);
        checkpointMutableContainer(localObject2);
        dataAvailability.put(paramString, Boolean.TRUE);
        return;
      }
      estimatedData.remove(paramString);
    }
  }
  
  public void pin()
  {
    Parse.waitForTask(pinInBackground());
  }
  
  public void pin(String paramString)
  {
    Parse.waitForTask(pinInBackground(paramString));
  }
  
  public N<Void> pinInBackground()
  {
    return pinAllInBackground("_default", Arrays.asList(new ParseObject[] { this }));
  }
  
  public N<Void> pinInBackground(String paramString)
  {
    return pinAllInBackground(paramString, Arrays.asList(new ParseObject[] { this }));
  }
  
  public void pinInBackground(SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(pinInBackground(), paramSaveCallback);
  }
  
  public void pinInBackground(String paramString, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(pinInBackground(paramString), paramSaveCallback);
  }
  
  public void put(String paramString, Object paramObject)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("key may not be null.");
    }
    if (paramObject == null) {
      throw new IllegalArgumentException("value may not be null.");
    }
    if (!Parse.isValidType(paramObject)) {
      throw new IllegalArgumentException("invalid type for value: " + paramObject.getClass().toString());
    }
    performOperation(paramString, new ParseSetOperation(paramObject));
  }
  
  @Deprecated
  public final void refresh()
  {
    fetch();
  }
  
  @Deprecated
  public final void refreshInBackground(RefreshCallback paramRefreshCallback)
  {
    Parse.callbackOnMainThreadAsync(fetchInBackground(), paramRefreshCallback);
  }
  
  void registerSaveListener(GetCallback<ParseObject> paramGetCallback)
  {
    synchronized (mutex)
    {
      saveEvent.subscribe(paramGetCallback);
      return;
    }
  }
  
  public void remove(String paramString)
  {
    synchronized (mutex)
    {
      if (get(paramString) != null) {
        performOperation(paramString, ParseDeleteOperation.getInstance());
      }
      return;
    }
  }
  
  public void removeAll(String paramString, Collection<?> paramCollection)
  {
    performOperation(paramString, new ParseRemoveOperation(paramCollection));
  }
  
  void revert()
  {
    synchronized (mutex)
    {
      currentOperations().clear();
      rebuildEstimatedData();
      checkpointAllMutableContainers();
      return;
    }
  }
  
  public final void save()
  {
    Parse.waitForTask(saveInBackground());
  }
  
  N<Void> saveAsync(N<Void> paramN)
  {
    if (!isDirty()) {
      return N.a(null);
    }
    L localL = new L();
    String str = ParseUser.getCurrentSessionToken();
    return N.a(null).d(new ParseObject.12(this, localL)).d(new ParseObject.11(this, str)).d(TaskQueue.waitFor(paramN)).d(new ParseObject.10(this, localL, str));
  }
  
  N<Object> saveAsync(ParseOperationSet paramParseOperationSet, String paramString)
  {
    return constructSaveCommand(paramParseOperationSet, PointerEncodingStrategy.get(), paramString).executeAsync();
  }
  
  public final N<Void> saveEventually()
  {
    Object localObject1 = null;
    if (!isDirty())
    {
      Parse.getEventuallyQueue().fakeObjectUpdate();
      return N.a(null);
    }
    ParseOperationSet localParseOperationSet;
    Object localObject4;
    synchronized (mutex)
    {
      updateBeforeSave();
      ArrayList localArrayList = new ArrayList();
      findUnsavedChildren(estimatedData, localArrayList);
      if (getObjectId() == null) {
        localObject1 = getOrCreateLocalId();
      }
      localParseOperationSet = startSave();
      localParseOperationSet.setIsSaveEventually(true);
      localObject4 = ParseUser.getCurrentSessionToken();
      try
      {
        localObject4 = constructSaveCommand(localParseOperationSet, PointerOrLocalIdEncodingStrategy.get(), (String)localObject4);
        ((ParseCommand)localObject4).setLocalId((String)localObject1);
        ((ParseCommand)localObject4).setOperationSetUUID(localParseOperationSet.getUUID());
        ((ParseCommand)localObject4).retainLocalIds();
        localObject1 = localArrayList.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          ((ParseObject)((Iterator)localObject1).next()).saveEventually();
          continue;
          localObject2 = finally;
        }
      }
      catch (ParseException localParseException)
      {
        throw new IllegalStateException("Unable to saveEventually.", localParseException);
      }
    }
    N localN = Parse.getEventuallyQueue().enqueueEventuallyAsync((ParseCommand)localObject4, this);
    enqueueSaveEventuallyOperationAsync(localParseOperationSet);
    ((ParseCommand)localObject4).releaseLocalIds();
    if (OfflineStore.isEnabled()) {
      return localN.j();
    }
    return localN.d(new ParseObject.13(this, localParseOperationSet));
  }
  
  public final void saveEventually(SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(saveEventually(), paramSaveCallback);
  }
  
  public final N<Void> saveInBackground()
  {
    return taskQueue.enqueue(new ParseObject.9(this));
  }
  
  public final void saveInBackground(SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(saveInBackground(), paramSaveCallback);
  }
  
  void saveToDisk(Context paramContext, String paramString)
  {
    if (OfflineStore.isEnabled()) {
      throw new IllegalStateException("ParseObject#saveToDisk is not allowed when OfflineStore is enabled");
    }
    synchronized (mutex)
    {
      Parse.saveDiskObject(paramContext, paramString, toJSONObjectForDataFile(false, PointerEncodingStrategy.get()));
      return;
    }
  }
  
  public void setACL(ParseACL paramParseACL)
  {
    put("ACL", paramParseACL);
  }
  
  void setDefaultValues()
  {
    if ((needsDefaultACL()) && (ParseACL.getDefaultACL() != null)) {
      setACL(ParseACL.getDefaultACL());
    }
  }
  
  public void setObjectId(String paramString)
  {
    synchronized (mutex)
    {
      setObjectIdInternal(paramString);
      return;
    }
  }
  
  ParseOperationSet startSave()
  {
    synchronized (mutex)
    {
      ParseOperationSet localParseOperationSet = currentOperations();
      operationSetQueue.addLast(new ParseOperationSet());
      return localParseOperationSet;
    }
  }
  
  JSONObject toJSONObjectForDataFile(boolean paramBoolean, ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONObject localJSONObject;
    Object localObject2;
    Iterator localIterator1;
    Object localObject3;
    Object localObject4;
    for (;;)
    {
      synchronized (mutex)
      {
        checkForChangesToMutableContainers();
        localJSONObject = new JSONObject();
        localObject2 = new JSONObject();
        try
        {
          localIterator1 = serverData.keySet().iterator();
          if (!localIterator1.hasNext()) {
            break;
          }
          localObject3 = (String)localIterator1.next();
          localObject4 = serverData.get(localObject3);
          if ((Parse.isContainerObject(localObject4)) && (hashedObjects.containsKey(localObject4)))
          {
            ((JSONObject)localObject2).put((String)localObject3, ((ParseJSONCacheItem)hashedObjects.get(localObject4)).getJSONObject());
            continue;
            paramParseObjectEncodingStrategy = finally;
          }
        }
        catch (JSONException paramParseObjectEncodingStrategy)
        {
          throw new RuntimeException("could not serialize object to JSON");
        }
      }
      ((JSONObject)localObject2).put((String)localObject3, Parse.encode(localObject4, paramParseObjectEncodingStrategy));
    }
    if (createdAt != null) {
      ((JSONObject)localObject2).put("createdAt", Parse.dateToString(createdAt));
    }
    if (updatedAt != null) {
      ((JSONObject)localObject2).put("updatedAt", Parse.dateToString(updatedAt));
    }
    if (objectId != null) {
      ((JSONObject)localObject2).put("objectId", objectId);
    }
    localJSONObject.put("data", localObject2);
    localJSONObject.put("classname", className);
    if (paramBoolean)
    {
      localObject2 = new JSONArray();
      localIterator1 = operationSetQueue.iterator();
      while (localIterator1.hasNext())
      {
        localObject3 = (ParseOperationSet)localIterator1.next();
        localObject4 = new JSONObject();
        Iterator localIterator2 = ((ParseOperationSet)localObject3).keySet().iterator();
        while (localIterator2.hasNext())
        {
          String str = (String)localIterator2.next();
          ((JSONObject)localObject4).put(str, ((ParseFieldOperation)((ParseOperationSet)localObject3).get(str)).encode(paramParseObjectEncodingStrategy));
        }
        ((JSONArray)localObject2).put(localObject4);
      }
      localJSONObject.put("operations", localObject2);
    }
    return localJSONObject;
  }
  
  JSONObject toJSONObjectForSaving(ParseOperationSet paramParseOperationSet, ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONObject localJSONObject1;
    JSONObject localJSONObject2;
    synchronized (mutex)
    {
      localJSONObject1 = new JSONObject();
      localJSONObject2 = new JSONObject();
      try
      {
        Iterator localIterator = paramParseOperationSet.keySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject2 = (String)localIterator.next();
          ParseFieldOperation localParseFieldOperation = (ParseFieldOperation)paramParseOperationSet.get(localObject2);
          localJSONObject2.put((String)localObject2, Parse.encode(localParseFieldOperation, paramParseObjectEncodingStrategy));
          if ((localParseFieldOperation instanceof ParseSetOperation))
          {
            localObject2 = ((ParseSetOperation)localParseFieldOperation).getValue();
            if ((Parse.isContainerObject(localObject2)) && (hashedObjects.containsKey(localObject2)))
            {
              hashedObjects.put(localObject2, new ParseJSONCacheItem(localObject2));
              continue;
              paramParseOperationSet = finally;
            }
          }
        }
      }
      catch (JSONException paramParseOperationSet)
      {
        throw new RuntimeException("could not serialize object to JSON");
      }
    }
    if (objectId != null) {
      localJSONObject2.put("objectId", objectId);
    }
    localJSONObject1.put("data", localJSONObject2);
    localJSONObject1.put("classname", className);
    return localJSONObject1;
  }
  
  JSONObject toRest(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    JSONObject localJSONObject;
    synchronized (mutex)
    {
      checkForChangesToMutableContainers();
      localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("className", className);
        localObject2 = serverData.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (String)((Iterator)localObject2).next();
          localJSONObject.put((String)localObject3, Parse.encode(serverData.get(localObject3), paramParseObjectEncodingStrategy));
          continue;
          paramParseObjectEncodingStrategy = finally;
        }
      }
      catch (JSONException paramParseObjectEncodingStrategy)
      {
        throw new RuntimeException("could not serialize object to JSON");
      }
    }
    if (objectId != null) {
      localJSONObject.put("objectId", objectId);
    }
    if (createdAt != null) {
      localJSONObject.put("createdAt", Parse.dateToString(createdAt));
    }
    if (updatedAt != null) {
      localJSONObject.put("updatedAt", Parse.dateToString(updatedAt));
    }
    localJSONObject.put("isDeletingEventually", isDeletingEventually);
    Object localObject2 = new JSONArray();
    Object localObject3 = operationSetQueue.iterator();
    while (((Iterator)localObject3).hasNext()) {
      ((JSONArray)localObject2).put(((ParseOperationSet)((Iterator)localObject3).next()).toRest(paramParseObjectEncodingStrategy, null));
    }
    localJSONObject.put("__operations", localObject2);
    localJSONObject.put("__complete", hasBeenFetched);
    return localJSONObject;
  }
  
  public void unpin()
  {
    Parse.waitForTask(unpinInBackground());
  }
  
  public void unpin(String paramString)
  {
    Parse.waitForTask(unpinInBackground(paramString));
  }
  
  public N<Void> unpinInBackground()
  {
    return unpinAllInBackground("_default", Arrays.asList(new ParseObject[] { this }));
  }
  
  public N<Void> unpinInBackground(String paramString)
  {
    return unpinAllInBackground(paramString, Arrays.asList(new ParseObject[] { this }));
  }
  
  public void unpinInBackground(DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(unpinInBackground(), paramDeleteCallback);
  }
  
  public void unpinInBackground(String paramString, DeleteCallback paramDeleteCallback)
  {
    Parse.callbackOnMainThreadAsync(unpinInBackground(paramString), paramDeleteCallback);
  }
  
  void unregisterSaveListener(GetCallback<ParseObject> paramGetCallback)
  {
    synchronized (mutex)
    {
      saveEvent.unsubscribe(paramGetCallback);
      return;
    }
  }
  
  void updateBeforeSave() {}
  
  void validateDelete() {}
  
  void validateSave() {}
}

/* Location:
 * Qualified Name:     com.parse.ParseObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */