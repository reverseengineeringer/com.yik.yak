package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObject.Factory;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

public final class Settings
{
  private static final String ANALYTICS_EVENT = "event";
  public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
  private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
  private static final Uri ATTRIBUTION_ID_CONTENT_URI;
  private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
  public static final String CLIENT_TOKEN_PROPERTY = "com.facebook.sdk.ClientToken";
  private static final int DEFAULT_CORE_POOL_SIZE = 5;
  private static final int DEFAULT_KEEP_ALIVE = 1;
  private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
  private static final ThreadFactory DEFAULT_THREAD_FACTORY = new Settings.1();
  private static final BlockingQueue<Runnable> DEFAULT_WORK_QUEUE;
  private static final String FACEBOOK_COM = "facebook.com";
  private static final Object LOCK;
  private static final String MOBILE_INSTALL_EVENT = "MOBILE_APP_INSTALL";
  private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
  private static final String TAG = Settings.class.getCanonicalName();
  private static volatile String appClientToken;
  private static volatile String appVersion;
  private static volatile String applicationId;
  private static volatile boolean defaultsLoaded;
  private static volatile Executor executor;
  private static volatile String facebookDomain;
  private static volatile boolean isDebugEnabled;
  private static final HashSet<LoggingBehavior> loggingBehaviors = new HashSet(Arrays.asList(new LoggingBehavior[] { LoggingBehavior.DEVELOPER_ERRORS }));
  private static AtomicLong onProgressThreshold;
  private static volatile boolean platformCompatibilityEnabled;
  private static Boolean sdkInitialized = Boolean.valueOf(false);
  
  static
  {
    defaultsLoaded = false;
    facebookDomain = "facebook.com";
    onProgressThreshold = new AtomicLong(65536L);
    isDebugEnabled = false;
    LOCK = new Object();
    ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    DEFAULT_WORK_QUEUE = new LinkedBlockingQueue(10);
  }
  
  public static final void addLoggingBehavior(LoggingBehavior paramLoggingBehavior)
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.add(paramLoggingBehavior);
      return;
    }
  }
  
  public static final void clearLoggingBehaviors()
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.clear();
      return;
    }
  }
  
  public static String getAppVersion()
  {
    return appVersion;
  }
  
  public static String getApplicationId()
  {
    return applicationId;
  }
  
  /* Error */
  public static String getApplicationSignature(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: invokevirtual 171	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   10: astore_1
    //   11: aload_1
    //   12: ifnull -8 -> 4
    //   15: aload_0
    //   16: invokevirtual 174	android/content/Context:getPackageName	()Ljava/lang/String;
    //   19: astore_0
    //   20: aload_1
    //   21: aload_0
    //   22: bipush 64
    //   24: invokevirtual 180	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   27: astore_0
    //   28: aload_0
    //   29: getfield 186	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   32: astore_1
    //   33: aload_1
    //   34: ifnull -30 -> 4
    //   37: aload_1
    //   38: arraylength
    //   39: ifeq -35 -> 4
    //   42: ldc -68
    //   44: invokestatic 194	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   47: astore_1
    //   48: aload_1
    //   49: aload_0
    //   50: getfield 186	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   53: iconst_0
    //   54: aaload
    //   55: invokevirtual 200	android/content/pm/Signature:toByteArray	()[B
    //   58: invokevirtual 204	java/security/MessageDigest:update	([B)V
    //   61: aload_1
    //   62: invokevirtual 207	java/security/MessageDigest:digest	()[B
    //   65: bipush 9
    //   67: invokestatic 213	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   70: areturn
    //   71: astore_0
    //   72: aconst_null
    //   73: areturn
    //   74: astore_0
    //   75: aconst_null
    //   76: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	paramContext	Context
    //   10	52	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   20	28	71	android/content/pm/PackageManager$NameNotFoundException
    //   42	48	74	java/security/NoSuchAlgorithmException
  }
  
  private static Executor getAsyncTaskExecutor()
  {
    try
    {
      Object localObject = AsyncTask.class.getField("THREAD_POOL_EXECUTOR");
      if ((localIllegalAccessException instanceof Executor)) {
        break label35;
      }
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      try
      {
        localObject = ((Field)localObject).get(null);
        if (localObject != null) {
          break label26;
        }
        return null;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        return null;
      }
      localNoSuchFieldException = localNoSuchFieldException;
      return null;
    }
    label26:
    return null;
    label35:
    return (Executor)localIllegalAccessException;
  }
  
  /* Error */
  public static String getAttributionId(android.content.ContentResolver paramContentResolver)
  {
    // Byte code:
    //   0: aload_0
    //   1: getstatic 122	com/facebook/Settings:ATTRIBUTION_ID_CONTENT_URI	Landroid/net/Uri;
    //   4: iconst_1
    //   5: anewarray 241	java/lang/String
    //   8: dup
    //   9: iconst_0
    //   10: ldc 14
    //   12: aastore
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 247	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_0
    //   20: aload_0
    //   21: ifnull +16 -> 37
    //   24: aload_0
    //   25: astore_2
    //   26: aload_0
    //   27: invokeinterface 253 1 0
    //   32: istore_1
    //   33: iload_1
    //   34: ifne +17 -> 51
    //   37: aload_0
    //   38: ifnull +9 -> 47
    //   41: aload_0
    //   42: invokeinterface 256 1 0
    //   47: aconst_null
    //   48: astore_2
    //   49: aload_2
    //   50: areturn
    //   51: aload_0
    //   52: astore_2
    //   53: aload_0
    //   54: aload_0
    //   55: ldc 14
    //   57: invokeinterface 260 2 0
    //   62: invokeinterface 264 2 0
    //   67: astore_3
    //   68: aload_3
    //   69: astore_2
    //   70: aload_0
    //   71: ifnull -22 -> 49
    //   74: aload_0
    //   75: invokeinterface 256 1 0
    //   80: aload_3
    //   81: areturn
    //   82: astore_3
    //   83: aconst_null
    //   84: astore_0
    //   85: aload_0
    //   86: astore_2
    //   87: new 266	java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial 267	java/lang/StringBuilder:<init>	()V
    //   94: ldc_w 269
    //   97: invokevirtual 273	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: aload_3
    //   101: invokevirtual 276	java/lang/Exception:toString	()Ljava/lang/String;
    //   104: invokevirtual 273	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: pop
    //   111: aload_0
    //   112: ifnull +9 -> 121
    //   115: aload_0
    //   116: invokeinterface 256 1 0
    //   121: aconst_null
    //   122: areturn
    //   123: astore_0
    //   124: aconst_null
    //   125: astore_2
    //   126: aload_2
    //   127: ifnull +9 -> 136
    //   130: aload_2
    //   131: invokeinterface 256 1 0
    //   136: aload_0
    //   137: athrow
    //   138: astore_0
    //   139: goto -13 -> 126
    //   142: astore_3
    //   143: goto -58 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	paramContentResolver	android.content.ContentResolver
    //   32	2	1	bool	boolean
    //   25	106	2	localObject	Object
    //   67	14	3	str	String
    //   82	19	3	localException1	Exception
    //   142	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	20	82	java/lang/Exception
    //   0	20	123	finally
    //   26	33	138	finally
    //   53	68	138	finally
    //   87	111	138	finally
    //   26	33	142	java/lang/Exception
    //   53	68	142	java/lang/Exception
  }
  
  public static String getClientToken()
  {
    return appClientToken;
  }
  
  public static Executor getExecutor()
  {
    synchronized (LOCK)
    {
      if (executor == null)
      {
        Executor localExecutor = getAsyncTaskExecutor();
        Object localObject1 = localExecutor;
        if (localExecutor == null) {
          localObject1 = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, DEFAULT_WORK_QUEUE, DEFAULT_THREAD_FACTORY);
        }
        executor = (Executor)localObject1;
      }
      return executor;
    }
  }
  
  public static String getFacebookDomain()
  {
    return facebookDomain;
  }
  
  public static boolean getLimitEventAndDataUsage(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
  }
  
  public static final Set<LoggingBehavior> getLoggingBehaviors()
  {
    synchronized (loggingBehaviors)
    {
      Set localSet = Collections.unmodifiableSet(new HashSet(loggingBehaviors));
      return localSet;
    }
  }
  
  public static long getOnProgressThreshold()
  {
    return onProgressThreshold.get();
  }
  
  public static boolean getPlatformCompatibilityEnabled()
  {
    return platformCompatibilityEnabled;
  }
  
  public static String getSdkVersion()
  {
    return "3.23.1";
  }
  
  public static final boolean isDebugEnabled()
  {
    return isDebugEnabled;
  }
  
  public static final boolean isLoggingBehaviorEnabled(LoggingBehavior paramLoggingBehavior)
  {
    for (;;)
    {
      synchronized (loggingBehaviors)
      {
        if ((isDebugEnabled()) && (loggingBehaviors.contains(paramLoggingBehavior)))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  @Deprecated
  public static final boolean isLoggingEnabled()
  {
    return isDebugEnabled();
  }
  
  public static void loadDefaultsFromMetadata(Context paramContext)
  {
    defaultsLoaded = true;
    if (paramContext == null) {}
    for (;;)
    {
      return;
      try
      {
        paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
        if ((paramContext != null) && (metaData != null))
        {
          if (applicationId == null) {
            applicationId = metaData.getString("com.facebook.sdk.ApplicationId");
          }
          if (appClientToken == null)
          {
            appClientToken = metaData.getString("com.facebook.sdk.ClientToken");
            return;
          }
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
  }
  
  static void loadDefaultsFromMetadataIfNeeded(Context paramContext)
  {
    if (!defaultsLoaded) {
      loadDefaultsFromMetadata(paramContext);
    }
  }
  
  static Response publishInstallAndWaitForResponse(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (paramString == null)) {
      try
      {
        throw new IllegalArgumentException("Both context and applicationId must be non-null");
      }
      catch (Exception paramContext)
      {
        Utility.logd("Facebook-publish", paramContext);
        return new Response(null, null, new FacebookRequestError(null, paramContext));
      }
    }
    AttributionIdentifiers localAttributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(paramContext);
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
    String str1 = paramString + "ping";
    String str2 = paramString + "json";
    long l = localSharedPreferences.getLong(str1, 0L);
    String str3 = localSharedPreferences.getString(str2, null);
    GraphObject localGraphObject = GraphObject.Factory.create();
    localGraphObject.setProperty("event", "MOBILE_APP_INSTALL");
    Utility.setAppEventAttributionParameters(localGraphObject, localAttributionIdentifiers, AppEventsLogger.getAnonymousAppDeviceGUID(paramContext), getLimitEventAndDataUsage(paramContext));
    localGraphObject.setProperty("application_package_name", paramContext.getPackageName());
    paramString = Request.newPostRequest(null, String.format("%s/activities", new Object[] { paramString }), localGraphObject, null);
    if ((l == 0L) || (str3 != null)) {}
    try
    {
      for (paramContext = GraphObject.Factory.create(new JSONObject(str3));; paramContext = null)
      {
        if (paramContext == null) {
          return (Response)Response.createResponsesFromString("true", null, new RequestBatch(new Request[] { paramString }), true).get(0);
        }
        return new Response(null, null, null, paramContext, true);
        paramContext = paramString.executeAndWait();
        paramString = localSharedPreferences.edit();
        paramString.putLong(str1, System.currentTimeMillis());
        if ((paramContext.getGraphObject() != null) && (paramContext.getGraphObject().getInnerJSONObject() != null)) {
          paramString.putString(str2, paramContext.getGraphObject().getInnerJSONObject().toString());
        }
        paramString.apply();
        return paramContext;
      }
    }
    catch (JSONException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
  }
  
  static void publishInstallAsync(Context paramContext, String paramString, Request.Callback paramCallback)
  {
    paramContext = paramContext.getApplicationContext();
    getExecutor().execute(new Settings.2(paramContext, paramString, paramCallback));
  }
  
  public static final void removeLoggingBehavior(LoggingBehavior paramLoggingBehavior)
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.remove(paramLoggingBehavior);
      return;
    }
  }
  
  /* Error */
  public static void sdkInitialize(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 142	com/facebook/Settings:sdkInitialized	Ljava/lang/Boolean;
    //   6: invokevirtual 527	java/lang/Boolean:booleanValue	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: iconst_1
    //   12: if_icmpne +7 -> 19
    //   15: ldc 2
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: invokestatic 529	com/facebook/Settings:loadDefaultsFromMetadataIfNeeded	(Landroid/content/Context;)V
    //   23: aload_0
    //   24: invokestatic 531	com/facebook/Settings:getApplicationId	()Ljava/lang/String;
    //   27: invokestatic 535	com/facebook/internal/Utility:loadAppSettingsAsync	(Landroid/content/Context;Ljava/lang/String;)V
    //   30: aload_0
    //   31: invokevirtual 509	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   34: invokestatic 540	com/facebook/BoltsMeasurementEventListener:getInstance	(Landroid/content/Context;)Lcom/facebook/BoltsMeasurementEventListener;
    //   37: pop
    //   38: iconst_1
    //   39: invokestatic 140	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   42: putstatic 142	com/facebook/Settings:sdkInitialized	Ljava/lang/Boolean;
    //   45: goto -30 -> 15
    //   48: astore_0
    //   49: ldc 2
    //   51: monitorexit
    //   52: aload_0
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	paramContext	Context
    //   9	4	1	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	10	48	finally
    //   19	45	48	finally
  }
  
  public static void setAppVersion(String paramString)
  {
    appVersion = paramString;
  }
  
  public static void setApplicationId(String paramString)
  {
    applicationId = paramString;
  }
  
  public static void setClientToken(String paramString)
  {
    appClientToken = paramString;
  }
  
  public static void setExecutor(Executor paramExecutor)
  {
    Validate.notNull(paramExecutor, "executor");
    synchronized (LOCK)
    {
      executor = paramExecutor;
      return;
    }
  }
  
  public static void setFacebookDomain(String paramString)
  {
    facebookDomain = paramString;
  }
  
  public static final void setIsDebugEnabled(boolean paramBoolean)
  {
    isDebugEnabled = paramBoolean;
  }
  
  @Deprecated
  public static final void setIsLoggingEnabled(boolean paramBoolean)
  {
    setIsDebugEnabled(paramBoolean);
  }
  
  public static void setLimitEventAndDataUsage(Context paramContext, boolean paramBoolean)
  {
    paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("limitEventUsage", paramBoolean).apply();
  }
  
  public static void setOnProgressThreshold(long paramLong)
  {
    onProgressThreshold.set(paramLong);
  }
  
  public static void setPlatformCompatibilityEnabled(boolean paramBoolean)
  {
    platformCompatibilityEnabled = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.facebook.Settings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */