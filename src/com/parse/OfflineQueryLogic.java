package com.parse;

import N;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class OfflineQueryLogic
{
  private final OfflineStore store;
  
  OfflineQueryLogic(OfflineStore paramOfflineStore)
  {
    store = paramOfflineStore;
  }
  
  private static boolean compare(Object paramObject1, Object paramObject2, OfflineQueryLogic.Decider paramDecider)
  {
    if ((paramObject2 instanceof List)) {
      return compareList(paramObject1, (List)paramObject2, paramDecider);
    }
    if ((paramObject2 instanceof JSONArray)) {
      return compareArray(paramObject1, (JSONArray)paramObject2, paramDecider);
    }
    return paramDecider.decide(paramObject1, paramObject2);
  }
  
  private static boolean compareArray(Object paramObject, JSONArray paramJSONArray, OfflineQueryLogic.Decider paramDecider)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramJSONArray.length()) {}
      try
      {
        bool1 = paramDecider.decide(paramObject, paramJSONArray.get(i));
        if (bool1)
        {
          bool1 = true;
          return bool1;
        }
      }
      catch (JSONException paramObject)
      {
        throw new RuntimeException((Throwable)paramObject);
      }
      i += 1;
    }
  }
  
  private static boolean compareList(Object paramObject, List<?> paramList, OfflineQueryLogic.Decider paramDecider)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (paramDecider.decide(paramObject, paramList.next())) {
        return true;
      }
    }
    return false;
  }
  
  private static int compareTo(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 instanceof Date)) {
      return ((Date)paramObject1).compareTo((Date)paramObject2);
    }
    if ((paramObject1 instanceof String)) {
      return ((String)paramObject1).compareTo((String)paramObject2);
    }
    if ((paramObject1 instanceof Number)) {
      return Parse.compareNumbers((Number)paramObject1, (Number)paramObject2);
    }
    throw new IllegalArgumentException("Cannot compare against " + paramObject1);
  }
  
  private <T extends ParseObject> OfflineQueryLogic.ConstraintMatcher<T> createDontSelectMatcher(Object paramObject, String paramString)
  {
    return new OfflineQueryLogic.9(this, createSelectMatcher(paramObject, paramString));
  }
  
  private <T extends ParseObject> OfflineQueryLogic.ConstraintMatcher<T> createInQueryMatcher(Object paramObject, String paramString)
  {
    return new OfflineQueryLogic.6(this, (ParseQuery)paramObject, paramString);
  }
  
  private <T extends ParseObject> OfflineQueryLogic.ConstraintMatcher<T> createMatcher(ParseQuery.QueryConstraints paramQueryConstraints)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = paramQueryConstraints.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      Object localObject = paramQueryConstraints.get(str1);
      if (str1.equals("$or"))
      {
        localArrayList.add(createOrMatcher((ArrayList)localObject));
      }
      else if ((localObject instanceof ParseQuery.KeyConstraints))
      {
        localObject = (ParseQuery.KeyConstraints)localObject;
        Iterator localIterator2 = ((ParseQuery.KeyConstraints)localObject).keySet().iterator();
        while (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          localArrayList.add(createMatcher(str2, ((ParseQuery.KeyConstraints)localObject).get(str2), str1, (ParseQuery.KeyConstraints)localObject));
        }
      }
      else if ((localObject instanceof ParseQuery.RelationConstraint))
      {
        localArrayList.add(new OfflineQueryLogic.12(this, (ParseQuery.RelationConstraint)localObject));
      }
      else
      {
        localArrayList.add(new OfflineQueryLogic.13(this, str1, localObject));
      }
    }
    return new OfflineQueryLogic.14(this, localArrayList);
  }
  
  private <T extends ParseObject> OfflineQueryLogic.ConstraintMatcher<T> createMatcher(String paramString1, Object paramObject, String paramString2, ParseQuery.KeyConstraints paramKeyConstraints)
  {
    if (paramString1.equals("$inQuery")) {
      return createInQueryMatcher(paramObject, paramString2);
    }
    if (paramString1.equals("$notInQuery")) {
      return createNotInQueryMatcher(paramObject, paramString2);
    }
    if (paramString1.equals("$select")) {
      return createSelectMatcher(paramObject, paramString2);
    }
    if (paramString1.equals("$dontSelect")) {
      return createDontSelectMatcher(paramObject, paramString2);
    }
    return new OfflineQueryLogic.10(this, paramString2, paramString1, paramObject, paramKeyConstraints);
  }
  
  private <T extends ParseObject> OfflineQueryLogic.ConstraintMatcher<T> createNotInQueryMatcher(Object paramObject, String paramString)
  {
    return new OfflineQueryLogic.7(this, createInQueryMatcher(paramObject, paramString));
  }
  
  private <T extends ParseObject> OfflineQueryLogic.ConstraintMatcher<T> createOrMatcher(ArrayList<ParseQuery.QueryConstraints> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      localArrayList.add(createMatcher((ParseQuery.QueryConstraints)paramArrayList.next()));
    }
    return new OfflineQueryLogic.11(this, localArrayList);
  }
  
  private <T extends ParseObject> OfflineQueryLogic.ConstraintMatcher<T> createSelectMatcher(Object paramObject, String paramString)
  {
    paramObject = (JSONObject)paramObject;
    return new OfflineQueryLogic.8(this, (ParseQuery)((JSONObject)paramObject).opt("query"), paramString, ((JSONObject)paramObject).optString("key", null));
  }
  
  private N<Void> fetchIncludeAsync(Object paramObject, String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    int i = 0;
    if (paramObject == null)
    {
      localObject = N.a(null);
      return (N<Void>)localObject;
    }
    if ((paramObject instanceof JSONArray))
    {
      JSONArray localJSONArray = (JSONArray)paramObject;
      paramObject = N.a(null);
      for (;;)
      {
        localObject = paramObject;
        if (i >= localJSONArray.length()) {
          break;
        }
        paramObject = ((N)paramObject).d(new OfflineQueryLogic.17(this, localJSONArray, i, paramString, paramParseSQLiteDatabase));
        i += 1;
      }
    }
    if ((paramObject instanceof List))
    {
      localObject = (List)paramObject;
      paramObject = N.a(null);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramObject = ((N)paramObject).d(new OfflineQueryLogic.18(this, ((Iterator)localObject).next(), paramString, paramParseSQLiteDatabase));
      }
      return (N<Void>)paramObject;
    }
    if (paramString == null)
    {
      if (!(paramObject instanceof ParseObject)) {
        return N.a(new ParseException(121, "include is invalid for non-ParseObjects"));
      }
      paramObject = (ParseObject)paramObject;
      return store.fetchLocallyAsync((ParseObject)paramObject, paramParseSQLiteDatabase).j();
    }
    paramString = paramString.split("\\.", 2);
    Object localObject = paramString[0];
    if (paramString.length > 1) {}
    for (paramString = paramString[1];; paramString = null) {
      return N.a(null).b(new OfflineQueryLogic.20(this, paramObject, paramParseSQLiteDatabase, (String)localObject)).d(new OfflineQueryLogic.19(this, paramString, paramParseSQLiteDatabase));
    }
  }
  
  private Object getValue(Object paramObject, String paramString)
  {
    return getValue(paramObject, paramString, 0);
  }
  
  private Object getValue(Object paramObject, String paramString, int paramInt)
  {
    String[] arrayOfString = null;
    Object localObject = null;
    if (paramString.contains("."))
    {
      arrayOfString = paramString.split("\\.", 2);
      paramObject = getValue(paramObject, arrayOfString[0], paramInt + 1);
      if ((paramObject != null) && (paramObject != JSONObject.NULL) && (!(paramObject instanceof Map)) && (!(paramObject instanceof JSONObject)) && (paramInt <= 0)) {}
    }
    try
    {
      paramObject = Parse.encode(paramObject, PointerEncodingStrategy.get());
      if ((paramObject instanceof JSONObject)) {
        localObject = getValue(paramObject, arrayOfString[1], paramInt + 1);
      }
      do
      {
        do
        {
          return localObject;
          throw new ParseException(102, String.format("Key %s is invalid.", new Object[] { paramString }));
          return getValue(paramObject, arrayOfString[1], paramInt + 1);
          if ((paramObject instanceof ParseObject))
          {
            paramObject = (ParseObject)paramObject;
            if (!((ParseObject)paramObject).isDataAvailable()) {
              throw new ParseException(121, String.format("Bad key: %s", new Object[] { paramString }));
            }
            if (paramString.equals("objectId")) {
              return ((ParseObject)paramObject).getObjectId();
            }
            if ((paramString.equals("createdAt")) || (paramString.equals("_created_at"))) {
              return ((ParseObject)paramObject).getCreatedAt();
            }
            if ((paramString.equals("updatedAt")) || (paramString.equals("_updated_at"))) {
              return ((ParseObject)paramObject).getUpdatedAt();
            }
            return ((ParseObject)paramObject).get(paramString);
          }
          if ((paramObject instanceof JSONObject)) {
            return ((JSONObject)paramObject).opt(paramString);
          }
          if ((paramObject instanceof Map)) {
            return ((Map)paramObject).get(paramString);
          }
          localObject = arrayOfString;
        } while (paramObject == JSONObject.NULL);
        localObject = arrayOfString;
      } while (paramObject == null);
      throw new ParseException(121, String.format("Bad key: %s", new Object[] { paramString }));
    }
    catch (Exception paramObject)
    {
      for (;;)
      {
        paramObject = localObject;
      }
    }
  }
  
  static <T extends ParseObject> boolean hasReadAccess(ParseUser paramParseUser, T paramT)
  {
    if (paramParseUser == paramT) {}
    do
    {
      return true;
      paramT = paramT.getACL();
    } while ((paramT == null) || (paramT.getPublicReadAccess()) || ((paramParseUser != null) && (paramT.getReadAccess(paramParseUser))));
    return false;
  }
  
  static <T extends ParseObject> boolean hasWriteAccess(ParseUser paramParseUser, T paramT)
  {
    if (paramParseUser == paramT) {}
    do
    {
      return true;
      paramT = paramT.getACL();
    } while ((paramT == null) || (paramT.getPublicWriteAccess()) || ((paramParseUser != null) && (paramT.getWriteAccess(paramParseUser))));
    return false;
  }
  
  private static boolean matchesAllConstraint(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 instanceof List))
    {
      paramObject1 = ((List)paramObject1).iterator();
      while (((Iterator)paramObject1).hasNext()) {
        if (!matchesInConstraint(paramObject2, ((Iterator)paramObject1).next())) {
          return false;
        }
      }
      return true;
    }
    if ((paramObject1 instanceof JSONArray))
    {
      int i = 0;
      for (;;)
      {
        if (i >= ((JSONArray)paramObject1).length()) {
          break label85;
        }
        if (!matchesInConstraint(paramObject2, ((JSONArray)paramObject1).opt(i))) {
          break;
        }
        i += 1;
      }
      label85:
      return true;
    }
    throw new IllegalArgumentException("Value type not supported for $all queries.");
  }
  
  private static boolean matchesEqualConstraint(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null)) {
      if (paramObject1 != paramObject2) {}
    }
    do
    {
      return true;
      return false;
      if ((!(paramObject1 instanceof Number)) || (!(paramObject2 instanceof Number))) {
        break;
      }
    } while (compareTo(paramObject1, paramObject2) == 0);
    return false;
    return compare(paramObject1, paramObject2, new OfflineQueryLogic.1());
  }
  
  private static boolean matchesExistsConstraint(Object paramObject1, Object paramObject2)
  {
    boolean bool = false;
    if ((paramObject1 != null) && (((Boolean)paramObject1).booleanValue())) {
      return (paramObject2 != null) && (paramObject2 != JSONObject.NULL);
    }
    if ((paramObject2 == null) || (paramObject2 == JSONObject.NULL)) {
      bool = true;
    }
    return bool;
  }
  
  private static boolean matchesGreaterThanConstraint(Object paramObject1, Object paramObject2)
  {
    return compare(paramObject1, paramObject2, new OfflineQueryLogic.4());
  }
  
  private static boolean matchesGreaterThanOrEqualToConstraint(Object paramObject1, Object paramObject2)
  {
    return compare(paramObject1, paramObject2, new OfflineQueryLogic.5());
  }
  
  private static boolean matchesInConstraint(Object paramObject1, Object paramObject2)
  {
    boolean bool2 = false;
    boolean bool1;
    if ((paramObject1 instanceof List)) {
      bool1 = ((List)paramObject1).contains(paramObject2);
    }
    do
    {
      do
      {
        return bool1;
        if ((paramObject1 instanceof JSONArray))
        {
          int i = 0;
          for (;;)
          {
            bool1 = bool2;
            if (i >= ((JSONArray)paramObject1).length()) {
              break;
            }
            if (((JSONArray)paramObject1).opt(i).equals(paramObject2)) {
              return true;
            }
            i += 1;
          }
        }
        bool1 = bool2;
      } while (paramObject1 == JSONObject.NULL);
      bool1 = bool2;
    } while (paramObject1 == null);
    throw new IllegalArgumentException("Value type not supported for $in queries.");
  }
  
  private static boolean matchesLessThanConstraint(Object paramObject1, Object paramObject2)
  {
    return compare(paramObject1, paramObject2, new OfflineQueryLogic.2());
  }
  
  private static boolean matchesLessThanOrEqualToConstraint(Object paramObject1, Object paramObject2)
  {
    return compare(paramObject1, paramObject2, new OfflineQueryLogic.3());
  }
  
  private static boolean matchesNearSphereConstraint(Object paramObject1, Object paramObject2, Double paramDouble)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramObject2 == null) || (paramObject2 == JSONObject.NULL)) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramDouble == null);
      bool1 = bool2;
    } while (((ParseGeoPoint)paramObject1).distanceInRadiansTo((ParseGeoPoint)paramObject2) <= paramDouble.doubleValue());
    return false;
  }
  
  private static boolean matchesNotEqualConstraint(Object paramObject1, Object paramObject2)
  {
    return !matchesEqualConstraint(paramObject1, paramObject2);
  }
  
  private static boolean matchesNotInConstraint(Object paramObject1, Object paramObject2)
  {
    return !matchesInConstraint(paramObject1, paramObject2);
  }
  
  private static boolean matchesRegexConstraint(Object paramObject1, Object paramObject2, String paramString)
  {
    int j = 0;
    if ((paramObject2 == null) || (paramObject2 == JSONObject.NULL)) {
      return false;
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!str.matches("^[imxs]*$")) {
      throw new ParseException(102, String.format("Invalid regex options: %s", new Object[] { str }));
    }
    if (str.contains("i")) {
      j = 2;
    }
    int i = j;
    if (str.contains("m")) {
      i = j | 0x8;
    }
    j = i;
    if (str.contains("x")) {
      j = i | 0x4;
    }
    i = j;
    if (str.contains("s")) {
      i = j | 0x20;
    }
    return Pattern.compile((String)paramObject1, i).matcher((String)paramObject2).find();
  }
  
  private static boolean matchesStatelessConstraint(String paramString, Object paramObject1, Object paramObject2, ParseQuery.KeyConstraints paramKeyConstraints)
  {
    boolean bool2 = true;
    boolean bool1;
    if (paramString.equals("$ne")) {
      bool1 = matchesNotEqualConstraint(paramObject1, paramObject2);
    }
    do
    {
      do
      {
        return bool1;
        if (paramString.equals("$lt")) {
          return matchesLessThanConstraint(paramObject1, paramObject2);
        }
        if (paramString.equals("$lte")) {
          return matchesLessThanOrEqualToConstraint(paramObject1, paramObject2);
        }
        if (paramString.equals("$gt")) {
          return matchesGreaterThanConstraint(paramObject1, paramObject2);
        }
        if (paramString.equals("$gte")) {
          return matchesGreaterThanOrEqualToConstraint(paramObject1, paramObject2);
        }
        if (paramString.equals("$in")) {
          return matchesInConstraint(paramObject1, paramObject2);
        }
        if (paramString.equals("$nin")) {
          return matchesNotInConstraint(paramObject1, paramObject2);
        }
        if (paramString.equals("$all")) {
          return matchesAllConstraint(paramObject1, paramObject2);
        }
        if (paramString.equals("$regex")) {
          return matchesRegexConstraint(paramObject1, paramObject2, (String)paramKeyConstraints.get("$options"));
        }
        bool1 = bool2;
      } while (paramString.equals("$options"));
      if (paramString.equals("$exists")) {
        return matchesExistsConstraint(paramObject1, paramObject2);
      }
      if (paramString.equals("$nearSphere")) {
        return matchesNearSphereConstraint(paramObject1, paramObject2, (Double)paramKeyConstraints.get("$maxDistance"));
      }
      bool1 = bool2;
    } while (paramString.equals("$maxDistance"));
    if (paramString.equals("$within")) {
      return matchesWithinConstraint(paramObject1, paramObject2);
    }
    throw new UnsupportedOperationException(String.format("The offline store does not yet support the %s operator.", new Object[] { paramString }));
  }
  
  private static boolean matchesWithinConstraint(Object paramObject1, Object paramObject2)
  {
    Object localObject = (ArrayList)((HashMap)paramObject1).get("$box");
    paramObject1 = (ParseGeoPoint)((ArrayList)localObject).get(0);
    localObject = (ParseGeoPoint)((ArrayList)localObject).get(1);
    paramObject2 = (ParseGeoPoint)paramObject2;
    if (((ParseGeoPoint)localObject).getLongitude() < ((ParseGeoPoint)paramObject1).getLongitude()) {
      throw new ParseException(102, "whereWithinGeoBox queries cannot cross the International Date Line.");
    }
    if (((ParseGeoPoint)localObject).getLatitude() < ((ParseGeoPoint)paramObject1).getLatitude()) {
      throw new ParseException(102, "The southwest corner of a geo box must be south of the northeast corner.");
    }
    if (((ParseGeoPoint)localObject).getLongitude() - ((ParseGeoPoint)paramObject1).getLongitude() > 180.0D) {
      throw new ParseException(102, "Geo box queries larger than 180 degrees in longitude are not supported. Please check point order.");
    }
    return (((ParseGeoPoint)paramObject2).getLatitude() >= ((ParseGeoPoint)paramObject1).getLatitude()) && (((ParseGeoPoint)paramObject2).getLatitude() <= ((ParseGeoPoint)localObject).getLatitude()) && (((ParseGeoPoint)paramObject2).getLongitude() >= ((ParseGeoPoint)paramObject1).getLongitude()) && (((ParseGeoPoint)paramObject2).getLongitude() <= ((ParseGeoPoint)localObject).getLongitude());
  }
  
  <T extends ParseObject> OfflineQueryLogic.ConstraintMatcher<T> createMatcher(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, boolean paramBoolean)
  {
    return new OfflineQueryLogic.15(this, paramBoolean, paramParseUser, createMatcher(paramParseQuery.getConstraints()));
  }
  
  <T extends ParseObject> N<Void> fetchIncludes(T paramT, ParseQuery<T> paramParseQuery, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    Object localObject = paramParseQuery.getIncludes();
    paramParseQuery = N.a(null);
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramParseQuery = paramParseQuery.d(new OfflineQueryLogic.21(this, paramT, (String)((Iterator)localObject).next(), paramParseSQLiteDatabase));
    }
    return paramParseQuery;
  }
  
  <T extends ParseObject> void sort(List<T> paramList, ParseQuery<T> paramParseQuery)
  {
    ParseGeoPoint localParseGeoPoint = null;
    String[] arrayOfString = paramParseQuery.sortKeys();
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      localObject1 = arrayOfString[i];
      if ((!((String)localObject1).matches("^-?[A-Za-z][A-Za-z0-9_]*$")) && (!"_created_at".equals(localObject1)) && (!"_updated_at".equals(localObject1))) {
        throw new ParseException(105, String.format("Invalid key name: \"%s\".", new Object[] { localObject1 }));
      }
      i += 1;
    }
    Iterator localIterator = paramParseQuery.getConstraints().keySet().iterator();
    Object localObject1 = null;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject2 = paramParseQuery.getConstraints().get(str);
      if (!(localObject2 instanceof ParseQuery.KeyConstraints)) {
        break label220;
      }
      localObject2 = (ParseQuery.KeyConstraints)localObject2;
      if (!((ParseQuery.KeyConstraints)localObject2).containsKey("$nearSphere")) {
        break label220;
      }
      localParseGeoPoint = (ParseGeoPoint)((ParseQuery.KeyConstraints)localObject2).get("$nearSphere");
      localObject1 = str;
    }
    label220:
    for (;;)
    {
      break;
      if ((arrayOfString.length == 0) && (localObject1 == null)) {
        return;
      }
      Collections.sort(paramList, new OfflineQueryLogic.16(this, (String)localObject1, localParseGeoPoint, arrayOfString));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */