package com.parse;

import java.io.File;
import java.io.IOException;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

class LocalIdManager
{
  private static LocalIdManager defaultInstance;
  private File diskPath = new File(Parse.getParseDir(), "LocalId");
  private Random random;
  
  private LocalIdManager()
  {
    diskPath.mkdirs();
    random = new Random();
  }
  
  public static LocalIdManager getDefaultInstance()
  {
    try
    {
      if (defaultInstance == null) {
        defaultInstance = new LocalIdManager();
      }
      LocalIdManager localLocalIdManager = defaultInstance;
      return localLocalIdManager;
    }
    finally {}
  }
  
  private LocalIdManager.MapEntry getMapEntry(String paramString)
  {
    try
    {
      if (!isLocalId(paramString)) {
        throw new IllegalStateException("Tried to get invalid local id: \"" + paramString + "\".");
      }
    }
    finally {}
    paramString = new File(diskPath, paramString);
    if (!paramString.exists()) {
      paramString = new LocalIdManager.MapEntry(this, null);
    }
    for (;;)
    {
      return paramString;
      JSONObject localJSONObject = Parse.getDiskObject(paramString);
      paramString = new LocalIdManager.MapEntry(this, null);
      retainCount = localJSONObject.optInt("retainCount", 0);
      objectId = localJSONObject.optString("objectId", null);
    }
  }
  
  private boolean isLocalId(String paramString)
  {
    if (!paramString.startsWith("local_")) {
      return false;
    }
    int i = 6;
    while (i < paramString.length())
    {
      int j = paramString.charAt(i);
      if (((j < 48) || (j > 57)) && ((j < 97) || (j > 102))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private void putMapEntry(String paramString, LocalIdManager.MapEntry paramMapEntry)
  {
    try
    {
      if (!isLocalId(paramString)) {
        throw new IllegalStateException("Tried to get invalid local id: \"" + paramString + "\".");
      }
    }
    finally {}
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("retainCount", retainCount);
      if (objectId != null) {
        localJSONObject.put("objectId", objectId);
      }
      paramString = new File(diskPath, paramString);
      if (!diskPath.exists()) {
        diskPath.mkdirs();
      }
      Parse.saveDiskObject(paramString, localJSONObject);
      return;
    }
    catch (JSONException paramString)
    {
      throw new IllegalStateException("Error creating local id map entry.", paramString);
    }
  }
  
  private void removeMapEntry(String paramString)
  {
    try
    {
      if (!isLocalId(paramString)) {
        throw new IllegalStateException("Tried to get invalid local id: \"" + paramString + "\".");
      }
    }
    finally {}
    new File(diskPath, paramString).delete();
  }
  
  boolean clear()
  {
    int i = 0;
    boolean bool = false;
    for (;;)
    {
      try
      {
        String[] arrayOfString = diskPath.list();
        if (arrayOfString == null) {
          return bool;
        }
        if (arrayOfString.length == 0) {
          continue;
        }
        int j = arrayOfString.length;
        if (i >= j) {
          break label111;
        }
        String str = arrayOfString[i];
        if (!new File(diskPath, str).delete()) {
          throw new IOException("Unable to delete file " + str + " in localId cache.");
        }
      }
      finally {}
      i += 1;
      continue;
      label111:
      bool = true;
    }
  }
  
  String createLocalId()
  {
    try
    {
      long l = random.nextLong();
      String str1 = "local_" + Long.toHexString(l);
      if (!isLocalId(str1)) {
        throw new IllegalStateException("Generated an invalid local id: \"" + str1 + "\". " + "This should never happen. Contact us at https://parse.com/help");
      }
    }
    finally {}
    return str2;
  }
  
  String getObjectId(String paramString)
  {
    try
    {
      paramString = getMapEntryobjectId;
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  void releaseLocalIdOnDisk(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 175	com/parse/LocalIdManager:getMapEntry	(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;
    //   7: astore_2
    //   8: aload_2
    //   9: aload_2
    //   10: getfield 93	com/parse/LocalIdManager$MapEntry:retainCount	I
    //   13: iconst_1
    //   14: isub
    //   15: putfield 93	com/parse/LocalIdManager$MapEntry:retainCount	I
    //   18: aload_2
    //   19: getfield 93	com/parse/LocalIdManager$MapEntry:retainCount	I
    //   22: ifle +12 -> 34
    //   25: aload_0
    //   26: aload_1
    //   27: aload_2
    //   28: invokespecial 178	com/parse/LocalIdManager:putMapEntry	(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial 180	com/parse/LocalIdManager:removeMapEntry	(Ljava/lang/String;)V
    //   39: goto -8 -> 31
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	LocalIdManager
    //   0	47	1	paramString	String
    //   7	21	2	localMapEntry	LocalIdManager.MapEntry
    // Exception table:
    //   from	to	target	type
    //   2	31	42	finally
    //   34	39	42	finally
  }
  
  void retainLocalIdOnDisk(String paramString)
  {
    try
    {
      LocalIdManager.MapEntry localMapEntry = getMapEntry(paramString);
      retainCount += 1;
      putMapEntry(paramString, localMapEntry);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  void setObjectId(String paramString1, String paramString2)
  {
    LocalIdManager.MapEntry localMapEntry;
    try
    {
      localMapEntry = getMapEntry(paramString1);
      if (retainCount <= 0) {
        break label48;
      }
      if (objectId != null) {
        throw new IllegalStateException("Tried to set an objectId for a localId that already has one.");
      }
    }
    finally {}
    objectId = paramString2;
    putMapEntry(paramString1, localMapEntry);
    label48:
  }
}

/* Location:
 * Qualified Name:     com.parse.LocalIdManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */