package com.parse;

import L;
import N;
import Z;
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
  private final WeakHashMap<ParseObject, N<ParseObject>> fetchedObjects = new WeakHashMap();
  private final OfflineSQLiteOpenHelper helper;
  private final Object lock = new Object();
  private final WeakHashMap<ParseObject, N<String>> objectToUuidMap = new WeakHashMap();
  private final WeakValueHashMap<String, ParseObject> uuidToObjectMap = new WeakValueHashMap();
  
  private OfflineStore(Context paramContext)
  {
    helper = new OfflineSQLiteOpenHelper(paramContext);
  }
  
  private N<Void> deleteDataForObjectAsync(ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    L localL = new L();
    synchronized (lock)
    {
      N localN = (N)objectToUuidMap.get(paramParseObject);
      if (localN == null)
      {
        paramParseObject = N.a(null);
        return paramParseObject;
      }
      return localN.d(new OfflineStore.38(this, localL)).d(new OfflineStore.40(this, localL, paramParseSQLiteDatabase)).d(new OfflineStore.39(this, paramParseSQLiteDatabase, paramParseObject)).d(new OfflineStore.42(this, localL, paramParseSQLiteDatabase)).d(new OfflineStore.41(this, localL, paramParseSQLiteDatabase));
    }
  }
  
  private N<Void> deleteObjects(List<String> paramList, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    int i = 0;
    if (paramList.size() <= 0) {
      return N.a(null);
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
  
  private N<String> getOrCreateUUIDAsync(ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    String str = UUID.randomUUID().toString();
    Z localZ = N.a();
    synchronized (lock)
    {
      N localN = (N)objectToUuidMap.get(paramParseObject);
      if (localN != null) {
        return localN;
      }
      objectToUuidMap.put(paramParseObject, localZ.a());
      uuidToObjectMap.put(str, paramParseObject);
      fetchedObjects.put(paramParseObject, localZ.a().c(new OfflineStore.1(this, paramParseObject)));
      ??? = new ContentValues();
      ((ContentValues)???).put("uuid", str);
      ((ContentValues)???).put("className", paramParseObject.getClassName());
      paramParseSQLiteDatabase.insertOrThrowAsync("ParseObjects", (ContentValues)???).a(new OfflineStore.2(this, localZ, str));
      return localZ.a();
    }
  }
  
  private <T extends ParseObject> N<T> getPointerAsync(String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    synchronized (lock)
    {
      ParseObject localParseObject = (ParseObject)uuidToObjectMap.get(paramString);
      if (localParseObject != null)
      {
        paramString = N.a(localParseObject);
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
  
  private N<Void> saveLocallyAsync(String paramString, ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    if ((paramParseObject.getObjectId() != null) && (!paramParseObject.isDataAvailable()) && (!paramParseObject.hasChanges()) && (!paramParseObject.hasOutstandingOperations())) {
      return N.a(null);
    }
    L localL1 = new L();
    L localL2 = new L();
    return N.a(null).b(new OfflineStore.19(this, paramParseObject, paramParseSQLiteDatabase)).d(new OfflineStore.18(this, paramParseObject, paramParseSQLiteDatabase)).d(new OfflineStore.17(this, localL1, paramParseSQLiteDatabase, localL2, paramParseObject)).d(new OfflineStore.16(this, paramParseObject, localL2, localL1, paramParseSQLiteDatabase)).d(new OfflineStore.15(this, paramString, localL1, paramParseSQLiteDatabase));
  }
  
  private N<Void> unpinAsync(String paramString)
  {
    return helper.getWritableDatabaseAsync().d(new OfflineStore.28(this, paramString));
  }
  
  private N<Void> unpinAsync(String paramString, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    LinkedList localLinkedList = new LinkedList();
    return N.a((Void)null).b(new OfflineStore.32(this, paramString, paramParseSQLiteDatabase)).d(new OfflineStore.31(this, localLinkedList, paramParseSQLiteDatabase)).d(new OfflineStore.30(this, paramString, paramParseSQLiteDatabase)).c(new OfflineStore.29(this, localLinkedList));
  }
  
  private N<Void> updateDataForObjectAsync(ParseObject paramParseObject, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    L localL1 = new L();
    L localL2 = new L();
    synchronized (lock)
    {
      N localN = (N)objectToUuidMap.get(paramParseObject);
      if (localN == null)
      {
        paramParseObject = N.a(null);
        return paramParseObject;
      }
      return localN.d(new OfflineStore.36(this, localL1, paramParseSQLiteDatabase, localL2, paramParseObject)).d(new OfflineStore.35(this, paramParseObject, localL2, localL1, paramParseSQLiteDatabase));
    }
  }
  
  void clearDatabase(Context paramContext)
  {
    helper.clearDatabase(paramContext);
  }
  
  <T extends ParseObject> N<Integer> countAsync(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2)
  {
    return findAsync(paramParseQuery, paramParseUser, paramParsePin, true, paramBoolean1, paramBoolean2).c(new OfflineStore.4(this));
  }
  
  N<Void> deleteDataForObjectAsync(ParseObject paramParseObject)
  {
    return helper.getWritableDatabaseAsync().b(new OfflineStore.37(this, paramParseObject));
  }
  
  <T extends ParseObject> N<T> fetchLocallyAsync(T paramT)
  {
    return helper.getWritableDatabaseAsync().b(new OfflineStore.14(this, paramT));
  }
  
  <T extends ParseObject> N<T> fetchLocallyAsync(T paramT, ParseSQLiteDatabase arg2)
  {
    Z localZ = N.a();
    for (;;)
    {
      N localN;
      String str1;
      String str2;
      synchronized (lock)
      {
        if (fetchedObjects.containsKey(paramT))
        {
          paramT = (N)fetchedObjects.get(paramT);
          return paramT;
        }
        fetchedObjects.put(paramT, localZ.a());
        localN = (N)objectToUuidMap.get(paramT);
        str1 = paramT.getClassName();
        str2 = paramT.getObjectId();
        ??? = N.a(null);
        if (str2 != null) {
          break label178;
        }
        if (localN == null) {
          return ((N)???).d(new OfflineStore.13(this, ???, paramT)).b(new OfflineStore.12(this, localZ, paramT));
        }
      }
      ??? = new L();
      ??? = localN.d(new OfflineStore.10(this, (L)???, ???, new String[] { "json" })).c(new OfflineStore.9(this, (L)???));
      continue;
      label178:
      if (localN != null)
      {
        localZ.b(new IllegalStateException("This object must have already been fetched from the local datastore, but isn't marked as fetched."));
        synchronized (lock)
        {
          fetchedObjects.remove(paramT);
          return localZ.a();
        }
      }
      ??? = String.format("%s = ? AND %s = ?", new Object[] { "className", "objectId" });
      ??? = ???.queryAsync("ParseObjects", new String[] { "json", "uuid" }, (String)???, new String[] { str1, str2 }).c(new OfflineStore.11(this, paramT));
    }
  }
  
  <T extends ParseObject> N<List<T>> findAsync(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2)
  {
    return findAsync(paramParseQuery, paramParseUser, paramParsePin, false, paramBoolean1, paramBoolean2);
  }
  
  <T extends ParseObject> N<List<T>> findAsync(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    return helper.getWritableDatabaseAsync().b(new OfflineStore.5(this, paramParseQuery, paramParseUser, paramParsePin, paramBoolean1, paramBoolean2, paramBoolean3));
  }
  
  <T extends ParseObject> N<List<T>> findAsync(ParseQuery<T> paramParseQuery, ParseUser paramParseUser, ParsePin paramParsePin, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, ParseSQLiteDatabase paramParseSQLiteDatabase)
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
      paramParsePin = (N)objectToUuidMap.get(paramParsePin);
      if (paramParsePin == null) {
        return N.a(localArrayList);
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
  
  N<Void> saveLocallyAsync(ParseObject paramParseObject, boolean paramBoolean)
  {
    return helper.getWritableDatabaseAsync().b(new OfflineStore.20(this, paramParseObject, paramBoolean));
  }
  
  N<Void> saveLocallyAsync(ParseObject paramParseObject, boolean paramBoolean, ParseSQLiteDatabase paramParseSQLiteDatabase)
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
    return N.a(localArrayList2).b(new OfflineStore.25(this, paramParseObject)).d(new OfflineStore.24(this, paramParseSQLiteDatabase)).d(new OfflineStore.23(this, paramParseObject, paramParseSQLiteDatabase)).d(new OfflineStore.22(this, localArrayList1, paramParseSQLiteDatabase));
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
  
  N<Void> unpinAsync(ParseObject paramParseObject)
  {
    return N.a(null).b(new OfflineStore.27(this, paramParseObject)).b(new OfflineStore.26(this));
  }
  
  N<Void> updateDataForObjectAsync(ParseObject paramParseObject)
  {
    synchronized (lock)
    {
      N localN = (N)fetchedObjects.get(paramParseObject);
      if (localN == null)
      {
        paramParseObject = N.a(new IllegalStateException("An object cannot be updated if it wasn't fetched."));
        return paramParseObject;
      }
      return localN.b(new OfflineStore.34(this, paramParseObject));
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