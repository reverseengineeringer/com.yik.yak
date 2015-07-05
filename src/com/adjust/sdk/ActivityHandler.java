package com.adjust.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.preference.PreferenceManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ActivityHandler
  extends HandlerThread
{
  private static final String ADJUST_PREFIX = "adjust_";
  private static long SESSION_INTERVAL = 0L;
  private static long SUBSESSION_INTERVAL = 0L;
  private static long TIMER_INTERVAL = 0L;
  private static final String TIME_TRAVEL = "Time travel!";
  private static ScheduledExecutorService timer;
  private ActivityState activityState;
  private String androidId;
  private String appToken;
  private String clientSdk;
  private Context context;
  private String defaultTracker;
  private boolean dropOfflineActivities;
  private boolean enabled;
  private String environment;
  private boolean eventBuffering;
  private String fbAttributionId;
  private Logger logger;
  private String macSha1;
  private String macShortMd5;
  private OnFinishedListener onFinishedListener;
  private IPackageHandler packageHandler;
  private Map<String, String> pluginKeys;
  private ActivityHandler.SessionHandler sessionHandler;
  private String userAgent;
  
  public ActivityHandler(Context paramContext)
  {
    super("Adjust", 1);
    initActivityHandler(paramContext);
    paramContext = Message.obtain();
    arg1 = 72630;
    sessionHandler.sendMessage(paramContext);
  }
  
  public ActivityHandler(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    super("Adjust", 1);
    initActivityHandler(paramContext);
    environment = paramString2;
    eventBuffering = paramBoolean;
    logger.setLogLevelString(paramString3);
    paramContext = Message.obtain();
    arg1 = 72633;
    obj = paramString1;
    sessionHandler.sendMessage(paramContext);
  }
  
  private boolean canInit(String paramString)
  {
    return (checkAppTokenNotNull(paramString)) && (checkAppTokenLength(paramString)) && (checkContext(context)) && (checkPermissions(context));
  }
  
  private boolean canTrackEvent(PackageBuilder paramPackageBuilder)
  {
    return (checkAppTokenNotNull(appToken)) && (checkActivityState(activityState)) && (paramPackageBuilder.isValidForEvent());
  }
  
  private boolean canTrackRevenue(PackageBuilder paramPackageBuilder)
  {
    return (checkAppTokenNotNull(appToken)) && (checkActivityState(activityState)) && (paramPackageBuilder.isValidForRevenue());
  }
  
  private boolean checkActivityState(ActivityState paramActivityState)
  {
    if (paramActivityState == null)
    {
      logger.error("Missing activity state.", new Object[0]);
      return false;
    }
    return true;
  }
  
  private boolean checkAppTokenLength(String paramString)
  {
    if (12 != paramString.length())
    {
      logger.error("Malformed App Token '%s'", new Object[] { paramString });
      return false;
    }
    return true;
  }
  
  private boolean checkAppTokenNotNull(String paramString)
  {
    if (paramString == null)
    {
      logger.error("Missing App Token.", new Object[0]);
      return false;
    }
    return true;
  }
  
  private boolean checkContext(Context paramContext)
  {
    if (paramContext == null)
    {
      logger.error("Missing context", new Object[0]);
      return false;
    }
    return true;
  }
  
  private static boolean checkPermission(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  private boolean checkPermissions(Context paramContext)
  {
    boolean bool = true;
    if (!checkPermission(paramContext, "android.permission.INTERNET"))
    {
      logger.error("Missing permission: INTERNET", new Object[0]);
      bool = false;
    }
    if (!checkPermission(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
      logger.warn("Missing permission: ACCESS_WIFI_STATE", new Object[0]);
    }
    return bool;
  }
  
  public static Boolean deleteActivityState(Context paramContext)
  {
    return Boolean.valueOf(paramContext.deleteFile("AdjustIoActivityState"));
  }
  
  private void endInternal()
  {
    if (!checkAppTokenNotNull(appToken)) {
      return;
    }
    packageHandler.pauseSending();
    stopTimer();
    updateActivityState(System.currentTimeMillis());
    writeActivityState();
  }
  
  private void initActivityHandler(Context paramContext)
  {
    setDaemon(true);
    start();
    TIMER_INTERVAL = AdjustFactory.getTimerInterval();
    SESSION_INTERVAL = AdjustFactory.getSessionInterval();
    SUBSESSION_INTERVAL = AdjustFactory.getSubsessionInterval();
    sessionHandler = new ActivityHandler.SessionHandler(getLooper(), this);
    context = paramContext.getApplicationContext();
    clientSdk = "android3.6.1";
    pluginKeys = Util.getPluginKeys(context);
    enabled = true;
    logger = AdjustFactory.getLogger();
  }
  
  private void initInternal(boolean paramBoolean, String paramString)
  {
    if (paramBoolean) {
      paramString = processApplicationBundle();
    }
    while (!canInit(paramString))
    {
      return;
      setEnvironment(environment);
      setEventBuffering(eventBuffering);
    }
    appToken = paramString;
    androidId = Util.getAndroidId(context);
    fbAttributionId = Util.getAttributionId(context);
    userAgent = Util.getUserAgent(context);
    if (Util.getPlayAdId(context) == null) {
      logger.info("Unable to get Google Play Services Advertising ID at start time", new Object[0]);
    }
    if (!Util.isGooglePlayServicesAvailable(context))
    {
      paramString = Util.getMacAddress(context);
      macSha1 = Util.getMacSha1(paramString);
      macShortMd5 = Util.getMacShortMd5(paramString);
    }
    packageHandler = AdjustFactory.getPackageHandler(this, context, dropOfflineActivities);
    readActivityState();
  }
  
  private void injectGeneralAttributes(PackageBuilder paramPackageBuilder)
  {
    paramPackageBuilder.setAppToken(appToken);
    paramPackageBuilder.setMacShortMd5(macShortMd5);
    paramPackageBuilder.setMacSha1(macSha1);
    paramPackageBuilder.setAndroidId(androidId);
    paramPackageBuilder.setFbAttributionId(fbAttributionId);
    paramPackageBuilder.setUserAgent(userAgent);
    paramPackageBuilder.setClientSdk(clientSdk);
    paramPackageBuilder.setEnvironment(environment);
    paramPackageBuilder.setDefaultTracker(defaultTracker);
    paramPackageBuilder.setPluginKeys(pluginKeys);
  }
  
  private void injectReferrer(PackageBuilder paramPackageBuilder)
  {
    try
    {
      paramPackageBuilder.setReferrer(PreferenceManager.getDefaultSharedPreferences(context).getString("AdjustInstallReferrer", null));
      return;
    }
    catch (Exception paramPackageBuilder)
    {
      logger.error("Failed to inject referrer (%s)", new Object[] { paramPackageBuilder });
    }
  }
  
  private void launchDeepLinkMain(String paramString)
  {
    if (paramString == null) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    localIntent.setFlags(268435456);
    if (context.getPackageManager().queryIntentActivities(localIntent, 0).size() > 0) {}
    for (int i = 1; i == 0; i = 0)
    {
      logger.error("Unable to open deep link (%s)", new Object[] { paramString });
      return;
    }
    logger.info("Open deep link (%s)", new Object[] { paramString });
    context.startActivity(localIntent);
  }
  
  private String processApplicationBundle()
  {
    Bundle localBundle = Util.getApplicationBundle(context, logger);
    if (localBundle == null) {
      return null;
    }
    String str = localBundle.getString("AdjustAppToken");
    setEnvironment(localBundle.getString("AdjustEnvironment"));
    setDefaultTracker(localBundle.getString("AdjustDefaultTracker"));
    setEventBuffering(localBundle.getBoolean("AdjustEventBuffering"));
    logger.setLogLevelString(localBundle.getString("AdjustLogLevel"));
    setDropOfflineActivities(localBundle.getBoolean("AdjustDropOfflineActivities"));
    return str;
  }
  
  /* Error */
  private void readActivityState()
  {
    // Byte code:
    //   0: new 505	java/io/ObjectInputStream
    //   3: dup
    //   4: new 507	java/io/BufferedInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 152	com/adjust/sdk/ActivityHandler:context	Landroid/content/Context;
    //   12: ldc -32
    //   14: invokevirtual 511	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   17: invokespecial 514	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   20: invokespecial 515	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   23: astore_1
    //   24: aload_0
    //   25: aload_1
    //   26: invokevirtual 519	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   29: checkcast 521	com/adjust/sdk/ActivityState
    //   32: putfield 165	com/adjust/sdk/ActivityHandler:activityState	Lcom/adjust/sdk/ActivityState;
    //   35: aload_0
    //   36: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   39: ldc_w 523
    //   42: iconst_2
    //   43: anewarray 183	java/lang/Object
    //   46: dup
    //   47: iconst_0
    //   48: aload_0
    //   49: getfield 165	com/adjust/sdk/ActivityHandler:activityState	Lcom/adjust/sdk/ActivityState;
    //   52: aastore
    //   53: dup
    //   54: iconst_1
    //   55: aload_0
    //   56: getfield 165	com/adjust/sdk/ActivityHandler:activityState	Lcom/adjust/sdk/ActivityState;
    //   59: getfield 526	com/adjust/sdk/ActivityState:uuid	Ljava/lang/String;
    //   62: aastore
    //   63: invokeinterface 529 3 0
    //   68: aload_1
    //   69: invokevirtual 532	java/io/ObjectInputStream:close	()V
    //   72: return
    //   73: astore_2
    //   74: aload_0
    //   75: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   78: ldc_w 534
    //   81: iconst_0
    //   82: anewarray 183	java/lang/Object
    //   85: invokeinterface 187 3 0
    //   90: aload_1
    //   91: invokevirtual 532	java/io/ObjectInputStream:close	()V
    //   94: aload_0
    //   95: aconst_null
    //   96: putfield 165	com/adjust/sdk/ActivityHandler:activityState	Lcom/adjust/sdk/ActivityState;
    //   99: return
    //   100: astore_2
    //   101: aload_1
    //   102: invokevirtual 532	java/io/ObjectInputStream:close	()V
    //   105: goto -11 -> 94
    //   108: astore_1
    //   109: aload_0
    //   110: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   113: ldc_w 536
    //   116: iconst_0
    //   117: anewarray 183	java/lang/Object
    //   120: invokeinterface 539 3 0
    //   125: goto -31 -> 94
    //   128: astore_2
    //   129: aload_0
    //   130: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   133: ldc_w 541
    //   136: iconst_0
    //   137: anewarray 183	java/lang/Object
    //   140: invokeinterface 187 3 0
    //   145: aload_1
    //   146: invokevirtual 532	java/io/ObjectInputStream:close	()V
    //   149: goto -55 -> 94
    //   152: astore_1
    //   153: aload_0
    //   154: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   157: ldc_w 543
    //   160: iconst_1
    //   161: anewarray 183	java/lang/Object
    //   164: dup
    //   165: iconst_0
    //   166: aload_1
    //   167: aastore
    //   168: invokeinterface 187 3 0
    //   173: goto -79 -> 94
    //   176: astore_2
    //   177: aload_0
    //   178: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   181: ldc_w 545
    //   184: iconst_0
    //   185: anewarray 183	java/lang/Object
    //   188: invokeinterface 187 3 0
    //   193: aload_1
    //   194: invokevirtual 532	java/io/ObjectInputStream:close	()V
    //   197: goto -103 -> 94
    //   200: astore_2
    //   201: aload_1
    //   202: invokevirtual 532	java/io/ObjectInputStream:close	()V
    //   205: aload_2
    //   206: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	this	ActivityHandler
    //   23	79	1	localObjectInputStream	java.io.ObjectInputStream
    //   108	38	1	localFileNotFoundException	java.io.FileNotFoundException
    //   152	50	1	localException	Exception
    //   73	1	2	localClassNotFoundException	ClassNotFoundException
    //   100	1	2	localOptionalDataException	java.io.OptionalDataException
    //   128	1	2	localIOException	java.io.IOException
    //   176	1	2	localClassCastException	ClassCastException
    //   200	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   24	68	73	java/lang/ClassNotFoundException
    //   24	68	100	java/io/OptionalDataException
    //   0	24	108	java/io/FileNotFoundException
    //   68	72	108	java/io/FileNotFoundException
    //   90	94	108	java/io/FileNotFoundException
    //   101	105	108	java/io/FileNotFoundException
    //   145	149	108	java/io/FileNotFoundException
    //   193	197	108	java/io/FileNotFoundException
    //   201	207	108	java/io/FileNotFoundException
    //   24	68	128	java/io/IOException
    //   0	24	152	java/lang/Exception
    //   68	72	152	java/lang/Exception
    //   90	94	152	java/lang/Exception
    //   101	105	152	java/lang/Exception
    //   145	149	152	java/lang/Exception
    //   193	197	152	java/lang/Exception
    //   201	207	152	java/lang/Exception
    //   24	68	176	java/lang/ClassCastException
    //   24	68	200	finally
    //   74	90	200	finally
    //   129	145	200	finally
    //   177	193	200	finally
  }
  
  private void readOpenUrlInternal(Uri paramUri)
  {
    if (paramUri == null) {}
    do
    {
      do
      {
        return;
        localObject1 = paramUri.getQuery();
      } while (localObject1 == null);
      paramUri = new HashMap();
      localObject1 = ((String)localObject1).split("&");
      int j = localObject1.length;
      int i = 0;
      if (i < j)
      {
        Object localObject2 = localObject1[i].split("=");
        if (localObject2.length != 2) {}
        for (;;)
        {
          i += 1;
          break;
          String str = localObject2[0];
          if (str.startsWith("adjust_"))
          {
            localObject2 = localObject2[1];
            if (((String)localObject2).length() != 0)
            {
              str = str.substring("adjust_".length());
              if (str.length() != 0) {
                paramUri.put(str, localObject2);
              }
            }
          }
        }
      }
    } while (paramUri.size() == 0);
    Object localObject1 = new PackageBuilder(context);
    ((PackageBuilder)localObject1).setDeepLinkParameters(paramUri);
    injectGeneralAttributes((PackageBuilder)localObject1);
    localObject1 = ((PackageBuilder)localObject1).buildReattributionPackage();
    packageHandler.addPackage((ActivityPackage)localObject1);
    packageHandler.sendFirstPackage();
    logger.debug("Reattribution %s", new Object[] { paramUri.toString() });
  }
  
  private void runDelegateMain(ResponseData paramResponseData)
  {
    if (onFinishedListener == null) {}
    while (paramResponseData == null) {
      return;
    }
    onFinishedListener.onFinishedTracking(paramResponseData);
  }
  
  private void setDefaultTracker(String paramString)
  {
    defaultTracker = paramString;
    if (defaultTracker != null) {
      logger.info("Default tracker: '%s'", new Object[] { defaultTracker });
    }
  }
  
  private void setDropOfflineActivities(boolean paramBoolean)
  {
    dropOfflineActivities = paramBoolean;
    if (dropOfflineActivities) {
      logger.info("Offline activities will get dropped", new Object[0]);
    }
  }
  
  private void setEnvironment(String paramString)
  {
    environment = paramString;
    if (environment == null)
    {
      logger.Assert("Missing environment", new Object[0]);
      logger.setLogLevel(Logger.LogLevel.ASSERT);
      environment = "unknown";
      return;
    }
    if ("sandbox".equalsIgnoreCase(environment))
    {
      logger.Assert("SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don't forget to set the environment to `production` before publishing!", new Object[0]);
      return;
    }
    if ("production".equalsIgnoreCase(environment))
    {
      logger.Assert("PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!", new Object[0]);
      logger.setLogLevel(Logger.LogLevel.ASSERT);
      return;
    }
    logger.Assert("Malformed environment '%s'", new Object[] { environment });
    logger.setLogLevel(Logger.LogLevel.ASSERT);
    environment = "malformed";
  }
  
  private void setEventBuffering(boolean paramBoolean)
  {
    eventBuffering = paramBoolean;
    if (eventBuffering) {
      logger.info("Event buffering is enabled", new Object[0]);
    }
  }
  
  private void startInternal()
  {
    if (!checkAppTokenNotNull(appToken)) {}
    while ((activityState != null) && (!activityState.enabled.booleanValue())) {
      return;
    }
    packageHandler.resumeSending();
    startTimer();
    long l1 = System.currentTimeMillis();
    if (activityState == null)
    {
      activityState = new ActivityState();
      activityState.sessionCount = 1;
      activityState.createdAt = l1;
      transferSessionPackage();
      activityState.resetSessionAttributes(l1);
      activityState.enabled = Boolean.valueOf(enabled);
      writeActivityState();
      logger.info("First session", new Object[0]);
      return;
    }
    long l2 = l1 - activityState.lastActivity;
    if (l2 < 0L)
    {
      logger.error("Time travel!", new Object[0]);
      activityState.lastActivity = l1;
      writeActivityState();
      return;
    }
    if (l2 > SESSION_INTERVAL)
    {
      localActivityState = activityState;
      sessionCount += 1;
      activityState.createdAt = l1;
      activityState.lastInterval = l2;
      transferSessionPackage();
      activityState.resetSessionAttributes(l1);
      writeActivityState();
      logger.debug("Session %d", new Object[] { Integer.valueOf(activityState.sessionCount) });
      return;
    }
    if (l2 > SUBSESSION_INTERVAL)
    {
      localActivityState = activityState;
      subsessionCount += 1;
      logger.info("Started subsession %d of session %d", new Object[] { Integer.valueOf(activityState.subsessionCount), Integer.valueOf(activityState.sessionCount) });
    }
    ActivityState localActivityState = activityState;
    sessionLength = (l2 + sessionLength);
    activityState.lastActivity = l1;
    writeActivityState();
  }
  
  private void startTimer()
  {
    if (timer != null) {
      stopTimer();
    }
    timer = Executors.newSingleThreadScheduledExecutor();
    timer.scheduleWithFixedDelay(new ActivityHandler.2(this), 1000L, TIMER_INTERVAL, TimeUnit.MILLISECONDS);
  }
  
  private void stopTimer()
  {
    try
    {
      timer.shutdown();
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      logger.error("No timer found", new Object[0]);
    }
  }
  
  private void timerFired()
  {
    if ((activityState != null) && (!activityState.enabled.booleanValue())) {
      return;
    }
    packageHandler.sendFirstPackage();
    updateActivityState(System.currentTimeMillis());
    writeActivityState();
  }
  
  private void trackEventInternal(PackageBuilder paramPackageBuilder)
  {
    if (!canTrackEvent(paramPackageBuilder)) {}
    while (!activityState.enabled.booleanValue()) {
      return;
    }
    long l = System.currentTimeMillis();
    activityState.createdAt = l;
    ActivityState localActivityState = activityState;
    eventCount += 1;
    updateActivityState(l);
    injectGeneralAttributes(paramPackageBuilder);
    activityState.injectEventAttributes(paramPackageBuilder);
    paramPackageBuilder = paramPackageBuilder.buildEventPackage();
    packageHandler.addPackage(paramPackageBuilder);
    if (eventBuffering) {
      logger.info("Buffered event %s", new Object[] { paramPackageBuilder.getSuffix() });
    }
    for (;;)
    {
      writeActivityState();
      logger.debug("Event %d", new Object[] { Integer.valueOf(activityState.eventCount) });
      return;
      packageHandler.sendFirstPackage();
    }
  }
  
  private void trackRevenueInternal(PackageBuilder paramPackageBuilder)
  {
    if (!canTrackRevenue(paramPackageBuilder)) {}
    while (!activityState.enabled.booleanValue()) {
      return;
    }
    long l = System.currentTimeMillis();
    activityState.createdAt = l;
    ActivityState localActivityState = activityState;
    eventCount += 1;
    updateActivityState(l);
    injectGeneralAttributes(paramPackageBuilder);
    activityState.injectEventAttributes(paramPackageBuilder);
    paramPackageBuilder = paramPackageBuilder.buildRevenuePackage();
    packageHandler.addPackage(paramPackageBuilder);
    if (eventBuffering) {
      logger.info("Buffered revenue %s", new Object[] { paramPackageBuilder.getSuffix() });
    }
    for (;;)
    {
      writeActivityState();
      logger.debug("Event %d (revenue)", new Object[] { Integer.valueOf(activityState.eventCount) });
      return;
      packageHandler.sendFirstPackage();
    }
  }
  
  private void transferSessionPackage()
  {
    Object localObject = new PackageBuilder(context);
    injectGeneralAttributes((PackageBuilder)localObject);
    injectReferrer((PackageBuilder)localObject);
    activityState.injectSessionAttributes((PackageBuilder)localObject);
    localObject = ((PackageBuilder)localObject).buildSessionPackage();
    packageHandler.addPackage((ActivityPackage)localObject);
    packageHandler.sendFirstPackage();
  }
  
  private void updateActivityState(long paramLong)
  {
    if (!checkActivityState(activityState)) {}
    long l;
    do
    {
      return;
      l = paramLong - activityState.lastActivity;
      if (l < 0L)
      {
        logger.error("Time travel!", new Object[0]);
        activityState.lastActivity = paramLong;
        return;
      }
    } while (l > SESSION_INTERVAL);
    ActivityState localActivityState = activityState;
    sessionLength += l;
    localActivityState = activityState;
    timeSpent = (l + timeSpent);
    activityState.lastActivity = paramLong;
  }
  
  /* Error */
  private void writeActivityState()
  {
    // Byte code:
    //   0: new 767	java/io/ObjectOutputStream
    //   3: dup
    //   4: new 769	java/io/BufferedOutputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 152	com/adjust/sdk/ActivityHandler:context	Landroid/content/Context;
    //   12: ldc -32
    //   14: iconst_0
    //   15: invokevirtual 773	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   18: invokespecial 776	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   21: invokespecial 777	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   24: astore_1
    //   25: aload_1
    //   26: aload_0
    //   27: getfield 165	com/adjust/sdk/ActivityHandler:activityState	Lcom/adjust/sdk/ActivityState;
    //   30: invokevirtual 781	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   33: aload_0
    //   34: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   37: ldc_w 783
    //   40: iconst_1
    //   41: anewarray 183	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: aload_0
    //   47: getfield 165	com/adjust/sdk/ActivityHandler:activityState	Lcom/adjust/sdk/ActivityState;
    //   50: aastore
    //   51: invokeinterface 529 3 0
    //   56: aload_1
    //   57: invokevirtual 784	java/io/ObjectOutputStream:close	()V
    //   60: return
    //   61: astore_2
    //   62: aload_0
    //   63: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   66: ldc_w 786
    //   69: iconst_0
    //   70: anewarray 183	java/lang/Object
    //   73: invokeinterface 187 3 0
    //   78: aload_1
    //   79: invokevirtual 784	java/io/ObjectOutputStream:close	()V
    //   82: return
    //   83: astore_1
    //   84: aload_0
    //   85: getfield 84	com/adjust/sdk/ActivityHandler:logger	Lcom/adjust/sdk/Logger;
    //   88: ldc_w 788
    //   91: iconst_1
    //   92: anewarray 183	java/lang/Object
    //   95: dup
    //   96: iconst_0
    //   97: aload_1
    //   98: aastore
    //   99: invokeinterface 187 3 0
    //   104: return
    //   105: astore_2
    //   106: aload_1
    //   107: invokevirtual 784	java/io/ObjectOutputStream:close	()V
    //   110: aload_2
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	ActivityHandler
    //   24	55	1	localObjectOutputStream	java.io.ObjectOutputStream
    //   83	24	1	localException	Exception
    //   61	1	2	localNotSerializableException	java.io.NotSerializableException
    //   105	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   25	56	61	java/io/NotSerializableException
    //   0	25	83	java/lang/Exception
    //   56	60	83	java/lang/Exception
    //   78	82	83	java/lang/Exception
    //   106	112	83	java/lang/Exception
    //   25	56	105	finally
    //   62	78	105	finally
  }
  
  public void finishedTrackingActivity(ResponseData paramResponseData, String paramString)
  {
    if ((onFinishedListener == null) && (paramString == null)) {
      return;
    }
    new Handler(context.getMainLooper()).post(new ActivityHandler.1(this, paramResponseData, paramString));
  }
  
  public Boolean isEnabled()
  {
    if (checkActivityState(activityState)) {
      return activityState.enabled;
    }
    return Boolean.valueOf(enabled);
  }
  
  public void readOpenUrl(Uri paramUri)
  {
    Message localMessage = Message.obtain();
    arg1 = 72680;
    obj = paramUri;
    sessionHandler.sendMessage(localMessage);
  }
  
  public void setEnabled(Boolean paramBoolean)
  {
    enabled = paramBoolean.booleanValue();
    if (checkActivityState(activityState)) {
      activityState.enabled = paramBoolean;
    }
    if (paramBoolean.booleanValue())
    {
      trackSubsessionStart();
      return;
    }
    trackSubsessionEnd();
  }
  
  public void setOnFinishedListener(OnFinishedListener paramOnFinishedListener)
  {
    onFinishedListener = paramOnFinishedListener;
  }
  
  public void setSdkPrefix(String paramString)
  {
    clientSdk = String.format("%s@%s", new Object[] { paramString, clientSdk });
  }
  
  public void trackEvent(String paramString, Map<String, String> paramMap)
  {
    PackageBuilder localPackageBuilder = new PackageBuilder(context);
    localPackageBuilder.setEventToken(paramString);
    localPackageBuilder.setCallbackParameters(paramMap);
    paramString = Message.obtain();
    arg1 = 72660;
    obj = localPackageBuilder;
    sessionHandler.sendMessage(paramString);
  }
  
  public void trackRevenue(double paramDouble, String paramString, Map<String, String> paramMap)
  {
    PackageBuilder localPackageBuilder = new PackageBuilder(context);
    localPackageBuilder.setAmountInCents(paramDouble);
    localPackageBuilder.setEventToken(paramString);
    localPackageBuilder.setCallbackParameters(paramMap);
    paramString = Message.obtain();
    arg1 = 72670;
    obj = localPackageBuilder;
    sessionHandler.sendMessage(paramString);
  }
  
  public void trackSubsessionEnd()
  {
    Message localMessage = Message.obtain();
    arg1 = 72650;
    sessionHandler.sendMessage(localMessage);
  }
  
  public void trackSubsessionStart()
  {
    Message localMessage = Message.obtain();
    arg1 = 72640;
    sessionHandler.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ActivityHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */