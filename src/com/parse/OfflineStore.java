package com.parse;

import P;
import R;
import ad;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.WeakHashMap;

class OfflineStore
{
  private static final int MAX_SQL_VARIABLES = 999;
  private static OfflineStore defaultInstance = null;
  private static final Object defaultInstanceLock = new Object();
  private final WeakValueHashMap<Pair<String, String>, ParseObject> classNameAndObjectIdToObjectMap = new WeakValueHashMap();
  private final WeakHashMap<ParseObject, R<ParseObject>> fetchedObjects = new WeakHashMap();
  private final OfflineSQLiteOpenHelper helper;
  private final Object lock = new Object();
  private final WeakHashMap<ParseObject, R<String>> objectToUuidMap = new WeakHashMap();
  private final WeakValueHashMap<String, ParseObject> uuidToObjectMap = new WeakValueHashMap();
  
  private OfflineStore(Context paramContext)
  {
    helper = new OfflineSQLiteOpenHelper(paramContext);
  }
  
  private R<Void> deleteDataForObjectAsync(ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    P localP = new P();
    synchronized (lock)
    {
      R localR = (R)objectToUuidMap.get(paramParseObject);
      if (localR == null)
      {
        paramParseObject = R.a(null);
        return paramParseObject;
      }
      return localR.d(new OfflineStore.38(this, localP)).d(new OfflineStore.40(this, localP, paramParseSQLiteDatabase)).d(new OfflineStore.39(this, paramParseSQLiteDatabase, paramParseObject)).d(new OfflineStore.42(this, localP, paramParseSQLiteDatabase)).d(new OfflineStore.41(this, localP, paramParseSQLiteDatabase));
    }
  }
  
  private R<Void> deleteObjects(List<String> paramList, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    int i = 0;
    if (paramList.size() <= 0) {
      return R.a(null);
    }
    if (paramList.size() > 999) {
      return deleteObjects(paramList.subList(0, 999), paramParseSQLiteDatabase).d(new OfflineStore.33(this, paramList, paramParseSQLiteDatabase));
    }
    String[] arrayOfString = new String[paramList.size()];
    while (i < arrayOfString.length)
    {
      arrayOfString[i] = "?";
      i += 1;
    }
    return paramParseSQLiteDatabase.deleteAsync("ParseObjects", "uuid IN (" + TextUtils.join(",", arrayOfString) + ")", (String[])paramList.toArray(new String[paramList.size()]));
  }
  
  static void disableOfflineStore()
  {
    synchronized (defaultInstanceLock)
    {
      defaultInstance = null;
      return;
    }
  }
  
  public static void enableOfflineStore(Context paramContext)
  {
    synchronized (defaultInstanceLock)
    {
      if (defaultInstance == null)
      {
        defaultInstance = new OfflineStore(paramContext);
        return;
      }
      throw new RuntimeException("enableOfflineStore() called multiple times.");
    }
  }
  
  public static OfflineStore getCurrent()
  {
    synchronized (defaultInstanceLock)
    {
      OfflineStore localOfflineStore = defaultInstance;
      return localOfflineStore;
    }
  }
  
  private R<String> getOrCreateUUIDAsync(ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    String str = UUID.randomUUID().toString();
    ad localad = R.a();
    synchronized (lock)
    {
      R localR = (R)objectToUuidMap.get(paramParseObject);
      if (localR != null) {
        return localR;
      }
      objectToUuidMap.put(paramParseObject, localad.a());
      uuidToObjectMap.put(str, paramParseObject);
      fetchedObjects.put(paramParseObject, localad.a().c(new OfflineStore.1(this, paramParseObject)));
      ??? = new ContentValues();
      ((ContentValues)???).put("uuid", str);
      ((ContentValues)???).put("className", paramParseObject.getClassName());
      paramParseSQLiteDatabase.insertOrThrowAsync("ParseObjects", (ContentValues)???).a(new OfflineStore.2(this, localad, str));
      return localad.a();
    }
  }
  
  private <T extends ParseObject> R<T> getPointerAsync(String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    synchronized (lock)
    {
      ParseObject localParseObject = (ParseObject)uuidToObjectMap.get(paramString);
      if (localParseObject != null)
      {
        paramString = R.a(localParseObject);
        return paramString;
      }
      return paramParseSQLiteDatabase.queryAsync("ParseObjects", new String[] { "className", "objectId" }, "uuid = ?", new String[] { paramString }).c(new OfflineStore.3(this, paramString));
    }
  }
  
  public static boolean isEnabled()
  {
    for (;;)
    {
      synchronized (defaultInstanceLock)
      {
        if (defaultInstance != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  private R<Void> saveLocallyAsync(String paramString, ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    if ((paramParseObject.getObjectId() != null) && (!paramParseObject.isDataAvailable()) && (!paramParseObject.hasChanges()) && (!paramParseObject.hasOutstandingOperations())) {
      return R.a(null);
    }
    P localP1 = new P();
    P localP2 = new P();
    return R.a(null).b(new OfflineStore.19(this, paramParseObject, paramParseSQLiteDatabase)).d(new OfflineStore.18(this, paramParseObject, paramParseSQLiteDatabase)).d(new OfflineStore.17(this, localP1, paramParseSQLiteDatabase, localP2, paramParseObject)).d(new OfflineStore.16(this, paramParseObject, localP2, localP1, paramParseSQLiteDatabase)).d(new OfflineStore.15(this, paramString, localP1, paramParseSQLiteDatabase));
  }
  
  private R<Void> unpinAsync(String paramString)
  {
    return helper.getWritableDatabaseAsync().d(new OfflineStore.28(this, paramString));
  }
  
  private R<Void> unpinAsync(String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    LinkedList localLinkedList = new LinkedList();
    return R.a((Void)null).b(new OfflineStore.32(this, paramString, paramParseSQLiteDatabase)).d(new OfflineStore.31(this, localLinkedList, paramParseSQLiteDatabase)).d(new OfflineStore.30(this, paramString, paramParseSQLiteDatabase)).c(new OfflineStore.29(this, localLinkedList));
  }
  
  private R<Void> updateDataForObjectAsync(ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    P localP1 = new P();
    P localP2 = new P();
    synchronized (lock)
    {
      R localR = (R)objectToUuidMap.get(paramParseObject);
      if (localR == null)
      {
        paramParseObject = R.a(null);
        return paramParseObject;
      }
      return localR.d(new OfflineStore.36(this, localP1, paramParseSQLiteDatabase, localP2, paramParseObject)).d(new OfflineStore.35(this, paramParseObject, localP2, localP1, paramParseSQLiteDatabase));
    }
  }
  
  void clearDatabase(Context paramContext)
  {
    helper.clearDatabase(paramContext);
  }
  
  <T extends ParseObject> R<Integer> countAsync(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2)
  {
    return findAsync(paramParseQuery, paramParseUser, paramParsePin, true, paramBoolean1, paramBoolean2).c(new OfflineStore.4(this));
  }
  
  R<Void> deleteDataForObjectAsync(ParseObject paramParseObject)
  {
    return helper.getWritableDatabaseAsync().b(new OfflineStore.37(this, paramParseObject));
  }
  
  <T extends ParseObject> R<T> fetchLocallyAsync(T paramT)
  {
    return helper.getWritableDatabaseAsync().b(new OfflineStore.14(this, paramT));
  }
  
  <T extends ParseObject> R<T> fetchLocallyAsync(T paramT, ParseSQLiteDatabase arg2)
  {
    ad localad = R.a();
    for (;;)
    {
      R localR;
      String str1;
      String str2;
      synchronized (lock)
      {
        if (fetchedObjects.containsKey(paramT))
        {
          paramT = (R)fetchedObjects.get(paramT);
          return paramT;
        }
        fetchedObjects.put(paramT, localad.a());
        localR = (R)objectToUuidMap.get(paramT);
        str1 = paramT.getClassName();
        str2 = paramT.getObjectId();
        ??? = R.a(null);
        if (str2 != null) {
          break label178;
        }
        if (localR == null) {
          return ((R)???).d(new OfflineStore.13(this, ???, paramT)).b(new OfflineStore.12(this, localad, paramT));
        }
      }
      ??? = new P();
      ??? = localR.d(new OfflineStore.10(this, (P)???, ???, new String[] { "json" })).c(new OfflineStore.9(this, (P)???));
      continue;
      label178:
      if (localR != null)
      {
        localad.b(new IllegalStateException("This object must have already been fetched from the local datastore, but isn't marked as fetched."));
        synchronized (lock)
        {
          fetchedObjects.remove(paramT);
          return localad.a();
        }
      }
      ??? = String.format("%s = ? AND %s = ?", new Object[] { "className", "objectId" });
      ??? = ???.queryAsync("ParseObjects", new String[] { "json", "uuid" }, (String)???, new String[] { str1, str2 }).c(new OfflineStore.11(this, paramT));
    }
  }
  
  <T extends ParseObject> R<List<T>> findAsync(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2)
  {
    return findAsync(paramParseQuery, paramParseUser, paramParsePin, false, paramBoolean1, paramBoolean2);
  }
  
  <T extends ParseObject> R<List<T>> findAsync(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    return helper.getWritableDatabaseAsync().b(new OfflineStore.5(this, paramParseQuery, paramParseUser, paramParsePin, paramBoolean1, paramBoolean2, paramBoolean3));
  }
  
  <T extends ParseObject> R<List<T>> findAsync(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    OfflineQueryLogic localOfflineQueryLogic = new OfflineQueryLogic(this);
    ArrayList localArrayList = new ArrayList();
    String str;
    if (paramParsePin == null)
    {
      paramParsePin = "className=?";
      if (!paramBoolean2) {
        paramParsePin = "className=?" + " AND isDeletingEventually=0";
      }
      str = paramParseQuery.getClassName();
    }
    for (paramParsePin = paramParseSQLiteDatabase.queryAsync("ParseObjects", new String[] { "uuid" }, paramParsePin, new String[] { str });; paramParsePin = paramParsePin.d(new OfflineStore.6(this, paramBoolean2, paramParseQuery, paramParseSQLiteDatabase)))
    {
      return paramParsePin.d(new OfflineStore.8(this, localOfflineQueryLogic, paramParseQuery, paramParseUser, paramBoolean3, paramParseSQLiteDatabase, localArrayList)).d(new OfflineStore.7(this, localOfflineQueryLogic, localArrayList, paramParseQuery, paramBoolean1, paramParseSQLiteDatabase));
      paramParsePin = (R)objectToUuidMap.get(paramParsePin);
      if (paramParsePin == null) {
        return R.a(localArrayList);
      }
    }
  }
  
  Pair<ParseObject, Boolean> getOrCreateObjectWithoutData(String paramString1, String arg2)
  {
    if (??? == null) {
      throw new IllegalStateException("objectId cannot be null.");
    }
    Object localObject = Pair.create(paramString1, ???);
    synchronized (lock)
    {
      localObject = (ParseObject)classNameAndObjectIdToObjectMap.get(localObject);
      if (localObject != null)
      {
        paramString1 = Pair.create(localObject, Boolean.valueOf(false));
        return paramString1;
      }
      paramString1 = Pair.create(ParseObject.create(paramString1), Boolean.valueOf(true));
      return paramString1;
    }
  }
  
  void registerNewObject(ParseObject paramParseObject)
  {
    Object localObject = paramParseObject.getObjectId();
    if (localObject != null)
    {
      localObject = Pair.create(paramParseObject.getClassName(), localObject);
      classNameAndObjectIdToObjectMap.put(localObject, paramParseObject);
    }
  }
  
  R<Void> saveLocallyAsync(ParseObject paramParseObject, boolean paramBoolean)
  {
    return helper.getWritableDatabaseAsync().b(new OfflineStore.20(this, paramParseObject, paramBoolean));
  }
  
  R<Void> saveLocallyAsync(ParseObject paramParseObject, boolean paramBoolean, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    ArrayList localArrayList1 = new ArrayList();
    if (!paramBoolean)
    {
      localArrayList1.add(paramParseObject);
      return fetchLocallyAsync(paramParseObject, paramParseSQLiteDatabase).j();
    }
    new OfflineStore.21(this, localArrayList1).setYieldRoot(true).setTraverseParseObjects(true).traverse(paramParseObject);
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localArrayList1.iterator();
    while (localIterator.hasNext()) {
      localArrayList2.add(fetchLocallyAsync((ParseObject)localIterator.next(), paramParseSQLiteDatabase).j());
    }
    return R.a(localArrayList2).b(new OfflineStore.25(this, paramParseObject)).d(new OfflineStore.24(this, paramParseSQLiteDatabase)).d(new OfflineStore.23(this, paramParseObject, paramParseSQLiteDatabase)).d(new OfflineStore.22(this, localArrayList1, paramParseSQLiteDatabase));
  }
  
  void simulateReboot()
  {
    synchronized (lock)
    {
      uuidToObjectMap.clear();
      objectToUuidMap.clear();
      classNameAndObjectIdToObjectMap.clear();
      fetchedObjects.clear();
      return;
    }
  }
  
  R<Void> unpinAsync(ParseObject paramParseObject)
  {
    return R.a(null).b(new OfflineStore.27(this, paramParseObject)).b(new OfflineStore.26(this));
  }
  
  R<Void> updateDataForObjectAsync(ParseObject paramParseObject)
  {
    synchronized (lock)
    {
      R localR = (R)fetchedObjects.get(paramParseObject);
      if (localR == null)
      {
        paramParseObject = R.a(new IllegalStateException("An object cannot be updated if it wasn't fetched."));
        return paramParseObject;
      }
      return localR.b(new OfflineStore.34(this, paramParseObject));
    }
  }
  
  void updateObjectId(ParseObject paramParseObject, String arg2, String paramString2)
  {
    if (??? != null)
    {
      if (???.equals(paramString2)) {
        return;
      }
      throw new RuntimeException("objectIds cannot be changed in offline mode.");
    }
    paramString2 = Pair.create(paramParseObject.getClassName(), paramString2);
    synchronized (lock)
    {
      ParseObject localParseObject = (ParseObject)classNameAndObjectIdToObjectMap.get(paramString2);
      if ((localParseObject != null) && (localParseObject != paramParseObject)) {
        throw new RuntimeException("Attempted to change an objectId to one that's already known to the Offline Store.");
      }
    }
    classNameAndObjectIdToObjectMap.put(paramString2, paramParseObject);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */