package com.parse;

import N;
import Z;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.parse.codec.binary.Base64;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SimpleTimeZone;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class Parse
{
  public static final int LOG_LEVEL_DEBUG = 3;
  public static final int LOG_LEVEL_ERROR = 6;
  public static final int LOG_LEVEL_INFO = 4;
  public static final int LOG_LEVEL_NONE = Integer.MAX_VALUE;
  public static final int LOG_LEVEL_VERBOSE = 2;
  public static final int LOG_LEVEL_WARNING = 5;
  private static final Object SCHEDULED_EXECUTOR_LOCK = new Object();
  private static final String TAG = "com.parse.Parse";
  static Context applicationContext;
  static String applicationId;
  static String clientKey;
  private static final DateFormat dateFormat;
  static ParseEventuallyQueue eventuallyQueue;
  static final Object lock;
  private static int logLevel = 6;
  static int maxKeyValueCacheBytes;
  static int maxKeyValueCacheFiles;
  static int maxParseFileSize = 10485760;
  private static ScheduledExecutorService scheduledExecutor;
  
  static
  {
    maxKeyValueCacheBytes = 2097152;
    maxKeyValueCacheFiles = 1000;
    eventuallyQueue = null;
    lock = new Object();
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(new SimpleTimeZone(0, "GMT"));
    dateFormat = localSimpleDateFormat;
  }
  
  private Parse()
  {
    throw new AssertionError();
  }
  
  static Number addNumbers(Number paramNumber1, Number paramNumber2)
  {
    if (((paramNumber1 instanceof Double)) || ((paramNumber2 instanceof Double))) {
      return Double.valueOf(paramNumber1.doubleValue() + paramNumber2.doubleValue());
    }
    if (((paramNumber1 instanceof Float)) || ((paramNumber2 instanceof Float))) {
      return Float.valueOf(paramNumber1.floatValue() + paramNumber2.floatValue());
    }
    if (((paramNumber1 instanceof Long)) || ((paramNumber2 instanceof Long))) {
      return Long.valueOf(paramNumber1.longValue() + paramNumber2.longValue());
    }
    if (((paramNumber1 instanceof Integer)) || ((paramNumber2 instanceof Integer))) {
      return Integer.valueOf(paramNumber1.intValue() + paramNumber2.intValue());
    }
    if (((paramNumber1 instanceof Short)) || ((paramNumber2 instanceof Short))) {
      return Integer.valueOf(paramNumber1.shortValue() + paramNumber2.shortValue());
    }
    if (((paramNumber1 instanceof Byte)) || ((paramNumber2 instanceof Byte))) {
      return Integer.valueOf(paramNumber1.byteValue() + paramNumber2.byteValue());
    }
    throw new RuntimeException("Unknown number type.");
  }
  
  private static boolean allParsePushIntentReceiversInternal()
  {
    Iterator localIterator = ManifestInfo.getIntentReceivers(new String[] { "com.parse.push.intent.RECEIVE", "com.parse.push.intent.DELETE", "com.parse.push.intent.OPEN" }).iterator();
    while (localIterator.hasNext()) {
      if (nextactivityInfo.exported) {
        return false;
      }
    }
    return true;
  }
  
  static <T> N<T> callbackOnMainThreadAsync(N<T> paramN, ParseCallback<T> paramParseCallback)
  {
    return callbackOnMainThreadAsync(paramN, paramParseCallback, false);
  }
  
  static <T> N<T> callbackOnMainThreadAsync(N<T> paramN, ParseCallback<T> paramParseCallback, boolean paramBoolean)
  {
    if (paramParseCallback == null) {
      return paramN;
    }
    Z localZ = N.a();
    paramN.a(new Parse.6(paramBoolean, localZ, paramParseCallback));
    return localZ.a();
  }
  
  static void checkCacheApplicationId()
  {
    Object localObject2;
    synchronized (lock)
    {
      boolean bool1;
      if (applicationId != null)
      {
        localObject2 = new File(getParseDir(), "applicationId");
        bool1 = ((File)localObject2).exists();
        if (bool1) {
          bool1 = false;
        }
      }
      try
      {
        localObject2 = new RandomAccessFile((File)localObject2, "r");
        byte[] arrayOfByte = new byte[(int)((RandomAccessFile)localObject2).length()];
        ((RandomAccessFile)localObject2).readFully(arrayOfByte);
        ((RandomAccessFile)localObject2).close();
        boolean bool2 = new String(arrayOfByte, "UTF-8").equals(applicationId);
        bool1 = bool2;
      }
      catch (IOException localIOException2)
      {
        for (;;) {}
      }
      catch (FileNotFoundException localFileNotFoundException2)
      {
        for (;;) {}
      }
      if (!bool1) {
        recursiveDelete(getParseDir());
      }
      localObject2 = new File(getParseDir(), "applicationId");
    }
    try
    {
      localObject2 = new FileOutputStream((File)localObject2);
      ((FileOutputStream)localObject2).write(applicationId.getBytes("UTF-8"));
      ((FileOutputStream)localObject2).close();
      return;
      localObject3 = finally;
      throw ((Throwable)localObject3);
    }
    catch (IOException localIOException1)
    {
      for (;;) {}
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;) {}
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      for (;;) {}
    }
  }
  
  static void checkContext()
  {
    if (applicationContext == null) {
      throw new RuntimeException("applicationContext is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library.");
    }
  }
  
  static void checkInit()
  {
    if (applicationId == null) {
      throw new RuntimeException("applicationId is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library.");
    }
    if (clientKey == null) {
      throw new RuntimeException("clientKey is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library.");
    }
  }
  
  static void clearCacheDir()
  {
    File[] arrayOfFile = getKeyValueCacheDir().listFiles();
    if (arrayOfFile == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < arrayOfFile.length)
      {
        arrayOfFile[i].delete();
        i += 1;
      }
    }
  }
  
  static void clearFromKeyValueCache(String paramString)
  {
    paramString = getKeyValueCacheFile(paramString);
    if (paramString != null) {
      paramString.delete();
    }
  }
  
  static int compareNumbers(Number paramNumber1, Number paramNumber2)
  {
    if (((paramNumber1 instanceof Double)) || ((paramNumber2 instanceof Double))) {
      return (int)Math.signum(paramNumber1.doubleValue() - paramNumber2.doubleValue());
    }
    if (((paramNumber1 instanceof Float)) || ((paramNumber2 instanceof Float))) {
      return (int)Math.signum(paramNumber1.floatValue() - paramNumber2.floatValue());
    }
    if (((paramNumber1 instanceof Long)) || ((paramNumber2 instanceof Long)))
    {
      long l = paramNumber1.longValue() - paramNumber2.longValue();
      if (l < 0L) {
        return -1;
      }
      if (l > 0L) {
        return 1;
      }
      return 0;
    }
    if (((paramNumber1 instanceof Integer)) || ((paramNumber2 instanceof Integer))) {
      return paramNumber1.intValue() - paramNumber2.intValue();
    }
    if (((paramNumber1 instanceof Short)) || ((paramNumber2 instanceof Short))) {
      return paramNumber1.shortValue() - paramNumber2.shortValue();
    }
    if (((paramNumber1 instanceof Byte)) || ((paramNumber2 instanceof Byte))) {
      return paramNumber1.byteValue() - paramNumber2.byteValue();
    }
    throw new RuntimeException("Unknown number type.");
  }
  
  static File createKeyValueCacheFile(String paramString)
  {
    paramString = String.valueOf(new Date().getTime()) + '.' + paramString;
    return new File(getKeyValueCacheDir(), paramString);
  }
  
  static String dateToString(Date paramDate)
  {
    synchronized (lock)
    {
      paramDate = dateFormat.format(paramDate);
      return paramDate;
    }
  }
  
  static void deleteDiskObject(Context paramContext, String paramString)
  {
    try
    {
      setContextIfNeeded(paramContext);
      ParseFileUtils.deleteQuietly(new File(getParseDir(), paramString));
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void enableLocalDatastore(Context paramContext)
  {
    OfflineStore.enableOfflineStore(paramContext);
  }
  
  static Object encode(Object paramObject, ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    Object localObject1;
    Object localObject2;
    try
    {
      if ((paramObject instanceof ParseObject)) {
        return paramParseObjectEncodingStrategy.encodeRelatedObject((ParseObject)paramObject);
      }
      if ((paramObject instanceof ParseQuery)) {
        return ((ParseQuery)paramObject).toREST();
      }
      if ((paramObject instanceof Date)) {
        return encodeDate((Date)paramObject);
      }
      if ((paramObject instanceof byte[]))
      {
        paramParseObjectEncodingStrategy = new JSONObject();
        paramParseObjectEncodingStrategy.put("__type", "Bytes");
        paramParseObjectEncodingStrategy.put("base64", Base64.encodeBase64String((byte[])paramObject));
        return paramParseObjectEncodingStrategy;
      }
      if ((paramObject instanceof ParseFile)) {
        return ((ParseFile)paramObject).encode();
      }
      if ((paramObject instanceof ParseGeoPoint))
      {
        paramObject = (ParseGeoPoint)paramObject;
        paramParseObjectEncodingStrategy = new JSONObject();
        paramParseObjectEncodingStrategy.put("__type", "GeoPoint");
        paramParseObjectEncodingStrategy.put("latitude", ((ParseGeoPoint)paramObject).getLatitude());
        paramParseObjectEncodingStrategy.put("longitude", ((ParseGeoPoint)paramObject).getLongitude());
        return paramParseObjectEncodingStrategy;
      }
      if ((paramObject instanceof ParseACL)) {
        return ((ParseACL)paramObject).toJSONObject(paramParseObjectEncodingStrategy);
      }
      if ((paramObject instanceof Map))
      {
        localObject1 = (Map)paramObject;
        paramObject = new JSONObject();
        localObject1 = ((Map)localObject1).entrySet().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Map.Entry)((Iterator)localObject1).next();
          ((JSONObject)paramObject).put((String)((Map.Entry)localObject2).getKey(), encode(((Map.Entry)localObject2).getValue(), paramParseObjectEncodingStrategy));
        }
        return paramObject;
      }
    }
    catch (JSONException paramObject)
    {
      throw new RuntimeException((Throwable)paramObject);
    }
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      localObject1 = new JSONObject();
      localObject2 = ((JSONObject)paramObject).keys();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        ((JSONObject)localObject1).put(str, encode(((JSONObject)paramObject).opt(str), paramParseObjectEncodingStrategy));
      }
    }
    if ((paramObject instanceof List))
    {
      localObject1 = new JSONArray();
      paramObject = ((List)paramObject).iterator();
      while (((Iterator)paramObject).hasNext()) {
        ((JSONArray)localObject1).put(encode(((Iterator)paramObject).next(), paramParseObjectEncodingStrategy));
      }
    }
    if ((paramObject instanceof JSONArray))
    {
      paramObject = (JSONArray)paramObject;
      localObject1 = new JSONArray();
      int i = 0;
      while (i < ((JSONArray)paramObject).length())
      {
        ((JSONArray)localObject1).put(encode(((JSONArray)paramObject).opt(i), paramParseObjectEncodingStrategy));
        i += 1;
      }
    }
    if ((paramObject instanceof ParseRelation)) {
      return ((ParseRelation)paramObject).encodeToJSON(paramParseObjectEncodingStrategy);
    }
    if ((paramObject instanceof ParseFieldOperation)) {
      return ((ParseFieldOperation)paramObject).encode(paramParseObjectEncodingStrategy);
    }
    if ((paramObject instanceof ParseQuery.RelationConstraint)) {
      return ((ParseQuery.RelationConstraint)paramObject).encode(paramParseObjectEncodingStrategy);
    }
    if (paramObject == null)
    {
      paramObject = JSONObject.NULL;
      return paramObject;
    }
    if (!isValidType(paramObject)) {
      throw new IllegalArgumentException("invalid type for ParseObject: " + paramObject.getClass().toString());
    }
    return paramObject;
    return localObject1;
    return localObject1;
    return localObject1;
  }
  
  static JSONObject encodeDate(Date paramDate)
  {
    JSONObject localJSONObject = new JSONObject();
    paramDate = dateToString(paramDate);
    try
    {
      localJSONObject.put("__type", "Date");
      localJSONObject.put("iso", paramDate);
      return localJSONObject;
    }
    catch (JSONException paramDate)
    {
      throw new RuntimeException(paramDate);
    }
  }
  
  static Context getApplicationContext()
  {
    checkContext();
    return applicationContext;
  }
  
  static JSONObject getDiskObject(Context paramContext, String paramString)
  {
    try
    {
      setContextIfNeeded(paramContext);
      paramContext = getDiskObject(new File(getParseDir(), paramString));
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  /* Error */
  static JSONObject getDiskObject(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 2
    //   4: monitorenter
    //   5: aload_0
    //   6: invokevirtual 242	java/io/File:exists	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: ifne +10 -> 21
    //   14: aload_2
    //   15: astore_0
    //   16: ldc 2
    //   18: monitorexit
    //   19: aload_0
    //   20: areturn
    //   21: new 394	org/json/JSONObject
    //   24: dup
    //   25: new 527	org/json/JSONTokener
    //   28: dup
    //   29: new 155	java/lang/String
    //   32: dup
    //   33: aload_0
    //   34: invokestatic 531	com/parse/ParseFileUtils:readFileToByteArray	(Ljava/io/File;)[B
    //   37: ldc_w 259
    //   40: invokespecial 262	java/lang/String:<init>	([BLjava/lang/String;)V
    //   43: invokespecial 532	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   46: invokespecial 535	org/json/JSONObject:<init>	(Lorg/json/JSONTokener;)V
    //   49: astore_0
    //   50: goto -34 -> 16
    //   53: astore_0
    //   54: ldc 2
    //   56: monitorexit
    //   57: aload_0
    //   58: athrow
    //   59: astore_0
    //   60: aload_2
    //   61: astore_0
    //   62: goto -46 -> 16
    //   65: astore_0
    //   66: aload_2
    //   67: astore_0
    //   68: goto -52 -> 16
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	paramFile	File
    //   9	2	1	bool	boolean
    //   1	66	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	10	53	finally
    //   21	50	53	finally
    //   21	50	59	org/json/JSONException
    //   21	50	65	java/io/IOException
  }
  
  static ParseEventuallyQueue getEventuallyQueue()
  {
    synchronized (lock)
    {
      boolean bool = OfflineStore.isEnabled();
      if ((eventuallyQueue == null) || ((bool) && ((eventuallyQueue instanceof ParseCommandCache))) || ((!bool) && ((eventuallyQueue instanceof ParsePinningEventuallyQueue))))
      {
        checkContext();
        if (!bool) {
          break label93;
        }
        localObject1 = new ParsePinningEventuallyQueue(applicationContext);
        eventuallyQueue = (ParseEventuallyQueue)localObject1;
        if ((bool) && (ParseCommandCache.getPendingCount() > 0)) {
          new ParseCommandCache(applicationContext);
        }
      }
      Object localObject1 = eventuallyQueue;
      return (ParseEventuallyQueue)localObject1;
      label93:
      localObject1 = new ParseCommandCache(applicationContext);
    }
  }
  
  static long getKeyValueCacheAge(File paramFile)
  {
    paramFile = paramFile.getName();
    try
    {
      long l = Long.parseLong(paramFile.substring(0, paramFile.indexOf('.')));
      return l;
    }
    catch (NumberFormatException paramFile) {}
    return 0L;
  }
  
  static File getKeyValueCacheDir()
  {
    synchronized (lock)
    {
      checkContext();
      File localFile = new File(applicationContext.getCacheDir(), "ParseKeyValueCache");
      if ((localFile.isDirectory()) || (localFile.mkdir())) {
        return localFile;
      }
      throw new RuntimeException("could not create Parse cache directory");
    }
  }
  
  static File getKeyValueCacheFile(String paramString)
  {
    paramString = '.' + paramString;
    paramString = getKeyValueCacheDir().listFiles(new Parse.3(paramString));
    if ((paramString == null) || (paramString.length == 0)) {
      return null;
    }
    return paramString[0];
  }
  
  public static int getLogLevel()
  {
    return logLevel;
  }
  
  static File getParseCacheDir(String paramString)
  {
    synchronized (lock)
    {
      checkContext();
      paramString = new File(new File(applicationContext.getCacheDir(), "com.parse"), paramString);
      if (!paramString.exists()) {
        paramString.mkdirs();
      }
      return paramString;
    }
  }
  
  static File getParseDir()
  {
    synchronized (lock)
    {
      checkContext();
      File localFile = applicationContext.getDir("Parse", 0);
      return localFile;
    }
  }
  
  static File getParseFilesDir(String paramString)
  {
    synchronized (lock)
    {
      checkContext();
      paramString = new File(new File(applicationContext.getFilesDir(), "com.parse"), paramString);
      if (!paramString.exists()) {
        paramString.mkdirs();
      }
      return paramString;
    }
  }
  
  static ScheduledExecutorService getScheduledExecutor()
  {
    synchronized (SCHEDULED_EXECUTOR_LOCK)
    {
      if (scheduledExecutor == null) {
        scheduledExecutor = Executors.newScheduledThreadPool(1);
      }
      return scheduledExecutor;
    }
  }
  
  static boolean hasPermission(String paramString)
  {
    checkContext();
    return applicationContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  public static void initialize(Context paramContext, String paramString1, String paramString2)
  {
    ParseRequest.initialize(paramContext);
    ParseObject.registerParseSubclasses();
    applicationId = paramString1;
    clientKey = paramString2;
    if (paramContext != null)
    {
      applicationContext = paramContext.getApplicationContext();
      checkCacheApplicationId();
      new Parse.1("Parse.initialize Disk Check & Starting Command Cache").start();
    }
    ParseFieldOperations.registerDefaultDecoders();
    if (!allParsePushIntentReceiversInternal()) {
      throw new SecurityException("To prevent external tampering to your app's notifications, all receivers registered to handle the following actions must have their exported attributes set to false: com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, com.parse.push.intent.DELETE");
    }
    GcmRegistrar.updateAsync();
    ParseUser.getCurrentUser();
    ParseAnonymousUtils.initialize();
    N.a(null).a(new Parse.2(), N.a);
  }
  
  static boolean isContainerObject(Object paramObject)
  {
    return ((paramObject instanceof JSONObject)) || ((paramObject instanceof JSONArray)) || ((paramObject instanceof ParseACL)) || ((paramObject instanceof ParseGeoPoint)) || ((paramObject instanceof List)) || ((paramObject instanceof Map));
  }
  
  static boolean isValidType(Object paramObject)
  {
    return ((paramObject instanceof JSONObject)) || ((paramObject instanceof JSONArray)) || ((paramObject instanceof String)) || ((paramObject instanceof Number)) || ((paramObject instanceof Boolean)) || (paramObject == JSONObject.NULL) || ((paramObject instanceof ParseObject)) || ((paramObject instanceof ParseACL)) || ((paramObject instanceof ParseFile)) || ((paramObject instanceof ParseGeoPoint)) || ((paramObject instanceof Date)) || ((paramObject instanceof byte[])) || ((paramObject instanceof List)) || ((paramObject instanceof Map)) || ((paramObject instanceof ParseRelation));
  }
  
  static String join(Collection<String> paramCollection, String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    paramCollection = paramCollection.iterator();
    if (paramCollection.hasNext())
    {
      localStringBuffer.append((String)paramCollection.next());
      while (paramCollection.hasNext())
      {
        localStringBuffer.append(paramString);
        localStringBuffer.append((String)paramCollection.next());
      }
    }
    return localStringBuffer.toString();
  }
  
  static Object jsonFromKeyValueCache(String paramString, long paramLong)
  {
    Object localObject = loadFromKeyValueCache(paramString, paramLong);
    if (localObject == null) {
      return null;
    }
    localObject = new JSONTokener((String)localObject);
    try
    {
      localObject = ((JSONTokener)localObject).nextValue();
      return localObject;
    }
    catch (JSONException localJSONException)
    {
      logE("com.parse.Parse", "corrupted cache for " + paramString, localJSONException);
      clearFromKeyValueCache(paramString);
    }
    return null;
  }
  
  static Iterable<String> keys(JSONObject paramJSONObject)
  {
    return new Parse.5(paramJSONObject);
  }
  
  static String loadFromKeyValueCache(String paramString, long paramLong)
  {
    paramString = getKeyValueCacheFile(paramString);
    if (paramString == null) {}
    Object localObject;
    do
    {
      return null;
      localObject = new Date();
      paramLong = Math.max(0L, ((Date)localObject).getTime() - paramLong);
    } while (getKeyValueCacheAge(paramString) < paramLong);
    paramString.setLastModified(((Date)localObject).getTime());
    try
    {
      paramString = new RandomAccessFile(paramString, "r");
      localObject = new byte[(int)paramString.length()];
      paramString.readFully((byte[])localObject);
      paramString.close();
      paramString = new String((byte[])localObject, "UTF-8");
      return paramString;
    }
    catch (IOException paramString)
    {
      logE("com.parse.Parse", "error reading from cache", paramString);
    }
    return null;
  }
  
  private static void log(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (paramInt >= logLevel)
    {
      if (paramThrowable == null) {
        Log.println(logLevel, paramString1, paramString2);
      }
    }
    else {
      return;
    }
    Log.println(logLevel, paramString1, paramString2 + '\n' + Log.getStackTraceString(paramThrowable));
  }
  
  static void logD(String paramString1, String paramString2)
  {
    logD(paramString1, paramString2, null);
  }
  
  static void logD(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(3, paramString1, paramString2, paramThrowable);
  }
  
  static void logE(String paramString1, String paramString2)
  {
    logE(paramString1, paramString2, null);
  }
  
  static void logE(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(6, paramString1, paramString2, paramThrowable);
  }
  
  static void logI(String paramString1, String paramString2)
  {
    logI(paramString1, paramString2, null);
  }
  
  static void logI(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(4, paramString1, paramString2, paramThrowable);
  }
  
  static void logV(String paramString1, String paramString2)
  {
    logV(paramString1, paramString2, null);
  }
  
  static void logV(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(2, paramString1, paramString2, paramThrowable);
  }
  
  static void logW(String paramString1, String paramString2)
  {
    logW(paramString1, paramString2, null);
  }
  
  static void logW(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(5, paramString1, paramString2, paramThrowable);
  }
  
  static void recursiveDelete(File paramFile)
  {
    synchronized (lock)
    {
      if (paramFile.isDirectory())
      {
        File[] arrayOfFile = paramFile.listFiles();
        int j = arrayOfFile.length;
        int i = 0;
        while (i < j)
        {
          recursiveDelete(arrayOfFile[i]);
          i += 1;
        }
      }
      paramFile.delete();
      return;
    }
  }
  
  static void requirePermission(String paramString)
  {
    if (!hasPermission(paramString)) {
      throw new IllegalStateException("To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\"" + paramString + "\" />");
    }
  }
  
  static void saveDiskObject(Context paramContext, String paramString, JSONObject paramJSONObject)
  {
    try
    {
      setContextIfNeeded(paramContext);
      saveDiskObject(new File(getParseDir(), paramString), paramJSONObject);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  /* Error */
  static void saveDiskObject(File paramFile, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: aload_1
    //   5: invokevirtual 778	org/json/JSONObject:toString	()Ljava/lang/String;
    //   8: ldc_w 259
    //   11: invokevirtual 278	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   14: invokestatic 782	com/parse/ParseFileUtils:writeByteArrayToFile	(Ljava/io/File;[B)V
    //   17: ldc 2
    //   19: monitorexit
    //   20: return
    //   21: astore_0
    //   22: ldc 2
    //   24: monitorexit
    //   25: aload_0
    //   26: athrow
    //   27: astore_0
    //   28: goto -11 -> 17
    //   31: astore_0
    //   32: goto -15 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	paramFile	File
    //   0	35	1	paramJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   3	17	21	finally
    //   3	17	27	java/io/IOException
    //   3	17	31	java/io/UnsupportedEncodingException
  }
  
  static void saveToKeyValueCache(String paramString1, String paramString2)
  {
    int m = 0;
    File localFile = getKeyValueCacheFile(paramString1);
    if (localFile != null) {
      localFile.delete();
    }
    paramString1 = createKeyValueCacheFile(paramString1);
    try
    {
      paramString1 = new FileOutputStream(paramString1);
      paramString1.write(paramString2.getBytes("UTF-8"));
      paramString1.close();
      paramString1 = getKeyValueCacheDir().listFiles();
      int k = paramString1.length;
      int n = paramString1.length;
      int j = 0;
      int i = 0;
      while (j < n)
      {
        paramString2 = paramString1[j];
        i = (int)(i + paramString2.length());
        j += 1;
      }
      if ((k > maxKeyValueCacheFiles) || (i > maxKeyValueCacheBytes))
      {
        Arrays.sort(paramString1, new Parse.4());
        n = paramString1.length;
        j = i;
        i = m;
      }
      for (;;)
      {
        if (i < n)
        {
          paramString2 = paramString1[i];
          k -= 1;
          j = (int)(j - paramString2.length());
          paramString2.delete();
          if ((k > maxKeyValueCacheFiles) || (j > maxKeyValueCacheBytes)) {}
        }
        else
        {
          return;
        }
        i += 1;
      }
    }
    catch (IOException paramString1)
    {
      for (;;) {}
    }
    catch (UnsupportedEncodingException paramString1)
    {
      for (;;) {}
    }
  }
  
  static void setContextIfNeeded(Context paramContext)
  {
    if (applicationContext == null) {
      applicationContext = paramContext;
    }
  }
  
  public static void setLogLevel(int paramInt)
  {
    logLevel = paramInt;
  }
  
  static Date stringToDate(String paramString)
  {
    synchronized (lock)
    {
      try
      {
        Date localDate = dateFormat.parse(paramString);
        return localDate;
      }
      catch (java.text.ParseException localParseException)
      {
        logE("com.parse.Parse", "could not parse date: " + paramString, localParseException);
        return null;
      }
    }
  }
  
  static Number subtractNumbers(Number paramNumber1, Number paramNumber2)
  {
    if (((paramNumber1 instanceof Double)) || ((paramNumber2 instanceof Double))) {
      return Double.valueOf(paramNumber1.doubleValue() - paramNumber2.doubleValue());
    }
    if (((paramNumber1 instanceof Float)) || ((paramNumber2 instanceof Float))) {
      return Float.valueOf(paramNumber1.floatValue() - paramNumber2.floatValue());
    }
    if (((paramNumber1 instanceof Long)) || ((paramNumber2 instanceof Long))) {
      return Long.valueOf(paramNumber1.longValue() - paramNumber2.longValue());
    }
    if (((paramNumber1 instanceof Integer)) || ((paramNumber2 instanceof Integer))) {
      return Integer.valueOf(paramNumber1.intValue() - paramNumber2.intValue());
    }
    if (((paramNumber1 instanceof Short)) || ((paramNumber2 instanceof Short))) {
      return Integer.valueOf(paramNumber1.shortValue() - paramNumber2.shortValue());
    }
    if (((paramNumber1 instanceof Byte)) || ((paramNumber2 instanceof Byte))) {
      return Integer.valueOf(paramNumber1.byteValue() - paramNumber2.byteValue());
    }
    throw new RuntimeException("Unknown number type.");
  }
  
  static <T> T waitForTask(N<T> paramN)
  {
    try
    {
      paramN.g();
      if (!paramN.d()) {
        break label59;
      }
      paramN = paramN.f();
      if ((paramN instanceof ParseException)) {
        throw ((ParseException)paramN);
      }
    }
    catch (InterruptedException paramN)
    {
      throw new RuntimeException(paramN);
    }
    if ((paramN instanceof RuntimeException)) {
      throw ((RuntimeException)paramN);
    }
    throw new RuntimeException(paramN);
    label59:
    if (paramN.c()) {
      throw new RuntimeException(new CancellationException());
    }
    paramN = paramN.e();
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.Parse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */