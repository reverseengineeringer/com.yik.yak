package com.amplitude.api;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.Location;
import android.text.TextUtils;
import android.util.Pair;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.conn.HttpHostConnectException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import wY;
import xF;
import xJ;
import xM;
import xq;
import xy;

public class AmplitudeClient
{
  public static final String END_SESSION_EVENT = "session_end";
  public static final String REVENUE_EVENT = "revenue_amount";
  public static final String START_SESSION_EVENT = "session_start";
  public static final String TAG = "com.amplitude.api.AmplitudeClient";
  protected static AmplitudeClient instance = new AmplitudeClient();
  private String advertisingId;
  protected String apiKey;
  private String brand;
  private String carrier;
  protected Context context;
  private String country;
  protected String deviceId;
  private DeviceInfo deviceInfo;
  private Runnable endSessionRunnable;
  private int eventMaxCount = 1000;
  private int eventUploadMaxBatchSize = 100;
  private long eventUploadPeriodMillis = 30000L;
  private int eventUploadThreshold = 30;
  WorkerThread httpThread = new WorkerThread("httpThread");
  private boolean initialized = false;
  private String language;
  Throwable lastError;
  WorkerThread logThread = new WorkerThread("logThread");
  private String manufacturer;
  private long minTimeBetweenSessionsMillis = 15000L;
  private String model;
  private boolean newDeviceIdPerInstall = false;
  private boolean offline = false;
  private boolean optOut = false;
  private String osName;
  private String osVersion;
  private long sessionId = -1L;
  private boolean sessionOpen = false;
  private long sessionTimeoutMillis = 1800000L;
  private AtomicBoolean updateScheduled = new AtomicBoolean(false);
  private AtomicBoolean uploadingCurrently = new AtomicBoolean(false);
  String url = "https://api.amplitude.com/";
  private boolean useAdvertisingIdForDeviceId = false;
  protected String userId;
  JSONObject userProperties;
  private String versionName;
  
  public AmplitudeClient()
  {
    logThread.start();
    httpThread.start();
  }
  
  private JSONObject cloneJSONObject(JSONObject paramJSONObject)
  {
    int j = 0;
    if (paramJSONObject == null) {
      return null;
    }
    JSONArray localJSONArray = paramJSONObject.names();
    if (localJSONArray != null) {}
    String[] arrayOfString;
    for (int i = localJSONArray.length();; i = 0)
    {
      arrayOfString = new String[i];
      while (j < i)
      {
        arrayOfString[j] = localJSONArray.optString(j);
        j += 1;
      }
    }
    try
    {
      paramJSONObject = new JSONObject(paramJSONObject, arrayOfString);
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.toString();
    }
    return null;
  }
  
  private void closeSession()
  {
    sessionOpen = false;
  }
  
  public static AmplitudeClient getInstance()
  {
    return instance;
  }
  
  private long getLastEventTime()
  {
    return context.getSharedPreferences(getSharedPreferencesName(), 0).getLong("com.amplitude.api.previousSessionTime", -1L);
  }
  
  private String initializeDeviceId()
  {
    Object localObject = new HashSet();
    ((Set)localObject).add("");
    ((Set)localObject).add("9774d56d682e549c");
    ((Set)localObject).add("unknown");
    ((Set)localObject).add("000000000000000");
    ((Set)localObject).add("Android");
    ((Set)localObject).add("DEFACE");
    SharedPreferences localSharedPreferences = context.getSharedPreferences(getSharedPreferencesName(), 0);
    String str = localSharedPreferences.getString("com.amplitude.api.deviceId", null);
    if ((!TextUtils.isEmpty(str)) && (!((Set)localObject).contains(str))) {
      return str;
    }
    if ((!newDeviceIdPerInstall) && (useAdvertisingIdForDeviceId))
    {
      str = deviceInfo.getAdvertisingId();
      if ((!TextUtils.isEmpty(str)) && (!((Set)localObject).contains(str)))
      {
        localSharedPreferences.edit().putString("com.amplitude.api.deviceId", str).commit();
        return str;
      }
    }
    localObject = deviceInfo.generateUUID() + "R";
    localSharedPreferences.edit().putString("com.amplitude.api.deviceId", (String)localObject).commit();
    return (String)localObject;
  }
  
  private void initializeDeviceInfo()
  {
    deviceInfo = new DeviceInfo(context);
    runOnLogThread(new AmplitudeClient.1(this));
  }
  
  private void openSession()
  {
    clearEndSession();
    sessionOpen = true;
  }
  
  private void runOnLogThread(Runnable paramRunnable)
  {
    if (Thread.currentThread() != logThread)
    {
      logThread.post(paramRunnable);
      return;
    }
    paramRunnable.run();
  }
  
  private void startNewSession(long paramLong)
  {
    openSession();
    sessionId = paramLong;
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().putLong("com.amplitude.api.previousSessionId", sessionId).commit();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("special", "session_start");
      logEvent("session_start", null, localJSONObject, paramLong, false);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  private void startNewSessionIfNeeded(long paramLong)
  {
    if (!sessionOpen) {
      if (paramLong - getEndSessionTime() < minTimeBetweenSessionsMillis)
      {
        l = context.getSharedPreferences(getSharedPreferencesName(), 0).getLong("com.amplitude.api.previousSessionId", -1L);
        if (l == -1L) {
          startNewSession(paramLong);
        }
      }
    }
    while ((paramLong - getLastEventTime() <= sessionTimeoutMillis) && (sessionId != -1L))
    {
      long l;
      return;
      sessionId = l;
      return;
      startNewSession(paramLong);
      return;
    }
    startNewSession(paramLong);
  }
  
  private void updateServerLater(long paramLong)
  {
    if (updateScheduled.getAndSet(true)) {
      return;
    }
    logThread.postDelayed(new AmplitudeClient.8(this), paramLong);
  }
  
  static boolean upgradePrefs(Context paramContext)
  {
    return upgradePrefs(paramContext, null, null);
  }
  
  static boolean upgradePrefs(Context paramContext, String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "com.amplitude.api";
    }
    try
    {
      paramString1 = Constants.class.getPackage().getName();
      str = paramString1;
    }
    catch (Exception paramString1)
    {
      for (;;) {}
    }
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "com.amplitude.api";
    }
    try
    {
      if (paramString1.equals(str)) {
        return false;
      }
      paramString2 = str + "." + paramContext.getPackageName();
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(paramString2, 0);
      if (localSharedPreferences.getAll().size() != 0)
      {
        paramString1 = paramString1 + "." + paramContext.getPackageName();
        paramContext = paramContext.getSharedPreferences(paramString1, 0).edit();
        if (localSharedPreferences.contains(str + ".previousSessionTime")) {
          paramContext.putLong("com.amplitude.api.previousSessionTime", localSharedPreferences.getLong(str + ".previousSessionTime", -1L));
        }
        if (localSharedPreferences.contains(str + ".previousEndSessionTime")) {
          paramContext.putLong("com.amplitude.api.previousEndSessionTime", localSharedPreferences.getLong(str + ".previousEndSessionTime", -1L));
        }
        if (localSharedPreferences.contains(str + ".previousEndSessionId")) {
          paramContext.putLong("com.amplitude.api.previousEndSessionId", localSharedPreferences.getLong(str + ".previousEndSessionId", -1L));
        }
        if (localSharedPreferences.contains(str + ".previousSessionId")) {
          paramContext.putLong("com.amplitude.api.previousSessionId", localSharedPreferences.getLong(str + ".previousSessionId", -1L));
        }
        if (localSharedPreferences.contains(str + ".deviceId")) {
          paramContext.putString("com.amplitude.api.deviceId", localSharedPreferences.getString(str + ".deviceId", null));
        }
        if (localSharedPreferences.contains(str + ".userId")) {
          paramContext.putString("com.amplitude.api.userId", localSharedPreferences.getString(str + ".userId", null));
        }
        if (localSharedPreferences.contains(str + ".optOut")) {
          paramContext.putBoolean("com.amplitude.api.optOut", localSharedPreferences.getBoolean(str + ".optOut", false));
        }
        paramContext.apply();
        localSharedPreferences.edit().clear().apply();
        new StringBuilder().append("Upgraded shared preferences from ").append(paramString2).append(" to ").append(paramString1).toString();
        return true;
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    return false;
  }
  
  protected String bytesToHexString(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar1 = new char[16];
    char[] tmp8_6 = arrayOfChar1;
    tmp8_6[0] = 48;
    char[] tmp14_8 = tmp8_6;
    tmp14_8[1] = 49;
    char[] tmp20_14 = tmp14_8;
    tmp20_14[2] = 50;
    char[] tmp26_20 = tmp20_14;
    tmp26_20[3] = 51;
    char[] tmp32_26 = tmp26_20;
    tmp32_26[4] = 52;
    char[] tmp38_32 = tmp32_26;
    tmp38_32[5] = 53;
    char[] tmp44_38 = tmp38_32;
    tmp44_38[6] = 54;
    char[] tmp51_44 = tmp44_38;
    tmp51_44[7] = 55;
    char[] tmp58_51 = tmp51_44;
    tmp58_51[8] = 56;
    char[] tmp65_58 = tmp58_51;
    tmp65_58[9] = 57;
    char[] tmp72_65 = tmp65_58;
    tmp72_65[10] = 97;
    char[] tmp79_72 = tmp72_65;
    tmp79_72[11] = 98;
    char[] tmp86_79 = tmp79_72;
    tmp86_79[12] = 99;
    char[] tmp93_86 = tmp86_79;
    tmp93_86[13] = 100;
    char[] tmp100_93 = tmp93_86;
    tmp100_93[14] = 101;
    char[] tmp107_100 = tmp100_93;
    tmp107_100[15] = 102;
    tmp107_100;
    char[] arrayOfChar2 = new char[paramArrayOfByte.length * 2];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      arrayOfChar2[(i * 2)] = arrayOfChar1[(j >>> 4)];
      arrayOfChar2[(i * 2 + 1)] = arrayOfChar1[(j & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar2);
  }
  
  void clearEndSession()
  {
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().remove("com.amplitude.api.previousEndSessionTime").remove("com.amplitude.api.previousEndSessionId").commit();
  }
  
  protected boolean contextAndApiKeySet(String paramString)
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        if (context == null)
        {
          new StringBuilder().append("context cannot be null, set context with initialize() before calling ").append(paramString).toString();
          return bool;
        }
        if (TextUtils.isEmpty(apiKey)) {
          new StringBuilder().append("apiKey cannot be null or empty, set apiKey with initialize() before calling ").append(paramString).toString();
        } else {
          bool = true;
        }
      }
      finally {}
    }
  }
  
  public void disableLocationListening()
  {
    if (deviceInfo == null) {
      throw new IllegalStateException("Must initialize before acting on location listening.");
    }
    deviceInfo.setLocationListening(false);
  }
  
  public void enableLocationListening()
  {
    if (deviceInfo == null) {
      throw new IllegalStateException("Must initialize before acting on location listening.");
    }
    deviceInfo.setLocationListening(true);
  }
  
  public void enableNewDeviceIdPerInstall(boolean paramBoolean)
  {
    newDeviceIdPerInstall = paramBoolean;
  }
  
  public void endSession()
  {
    if (!contextAndApiKeySet("endSession()")) {
      return;
    }
    runOnLogThread(new AmplitudeClient.4(this, System.currentTimeMillis()));
    logThread.removeCallbacks(endSessionRunnable);
    endSessionRunnable = new AmplitudeClient.5(this);
    logThread.postDelayed(endSessionRunnable, minTimeBetweenSessionsMillis + 1000L);
  }
  
  public String getDeviceId()
  {
    return deviceId;
  }
  
  long getEndSessionId()
  {
    return context.getSharedPreferences(getSharedPreferencesName(), 0).getLong("com.amplitude.api.previousEndSessionId", -1L);
  }
  
  long getEndSessionTime()
  {
    return context.getSharedPreferences(getSharedPreferencesName(), 0).getLong("com.amplitude.api.previousEndSessionTime", -1L);
  }
  
  protected String getSharedPreferencesName()
  {
    return "com.amplitude.api." + context.getPackageName();
  }
  
  public void initialize(Context paramContext, String paramString)
  {
    initialize(paramContext, paramString, null);
  }
  
  public void initialize(Context paramContext, String paramString1, String paramString2)
  {
    if (paramContext == null) {
      return;
    }
    for (;;)
    {
      try
      {
        upgradePrefs(paramContext);
        if ((TextUtils.isEmpty(paramString1)) || (initialized)) {
          break;
        }
        context = paramContext.getApplicationContext();
        apiKey = paramString1;
        initializeDeviceInfo();
        paramContext = paramContext.getSharedPreferences(getSharedPreferencesName(), 0);
        if (paramString2 != null)
        {
          userId = paramString2;
          paramContext.edit().putString("com.amplitude.api.userId", paramString2).commit();
          optOut = paramContext.getBoolean("com.amplitude.api.optOut", false);
          initialized = true;
          break;
        }
      }
      finally {}
      userId = paramContext.getString("com.amplitude.api.userId", null);
    }
  }
  
  protected long logEvent(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, long paramLong, boolean paramBoolean)
  {
    new StringBuilder().append("Logged event to Amplitude: ").append(paramString).toString();
    if (optOut) {
      return -1L;
    }
    if (paramBoolean) {
      startNewSessionIfNeeded(paramLong);
    }
    setLastEventTime(paramLong);
    JSONObject localJSONObject1 = new JSONObject();
    for (;;)
    {
      try
      {
        localJSONObject1.put("event_type", replaceWithJSONNull(paramString));
        localJSONObject1.put("timestamp", paramLong);
        if (userId != null) {
          continue;
        }
        paramString = replaceWithJSONNull(deviceId);
        localJSONObject1.put("user_id", paramString);
        localJSONObject1.put("device_id", replaceWithJSONNull(deviceId));
        localJSONObject1.put("session_id", sessionId);
        localJSONObject1.put("version_name", replaceWithJSONNull(versionName));
        localJSONObject1.put("os_name", replaceWithJSONNull(osName));
        localJSONObject1.put("os_version", replaceWithJSONNull(osVersion));
        localJSONObject1.put("device_brand", replaceWithJSONNull(brand));
        localJSONObject1.put("device_manufacturer", replaceWithJSONNull(manufacturer));
        localJSONObject1.put("device_model", replaceWithJSONNull(model));
        localJSONObject1.put("carrier", replaceWithJSONNull(carrier));
        localJSONObject1.put("country", replaceWithJSONNull(country));
        localJSONObject1.put("language", replaceWithJSONNull(language));
        localJSONObject1.put("platform", "Android");
        paramString = new JSONObject();
        paramString.put("name", "amplitude-android");
        paramString.put("version", "1.7.0");
        localJSONObject1.put("library", paramString);
        paramString = paramJSONObject2;
        if (paramJSONObject2 == null) {
          paramString = new JSONObject();
        }
        paramJSONObject2 = deviceInfo.getMostRecentLocation();
        if (paramJSONObject2 != null)
        {
          JSONObject localJSONObject2 = new JSONObject();
          localJSONObject2.put("lat", paramJSONObject2.getLatitude());
          localJSONObject2.put("lng", paramJSONObject2.getLongitude());
          paramString.put("location", localJSONObject2);
        }
        if (advertisingId != null) {
          paramString.put("androidADID", advertisingId);
        }
        localJSONObject1.put("api_properties", paramString);
        paramString = paramJSONObject1;
        if (paramJSONObject1 == null) {
          paramString = new JSONObject();
        }
        localJSONObject1.put("event_properties", paramString);
        if (userProperties != null) {
          continue;
        }
        paramString = new JSONObject();
        localJSONObject1.put("user_properties", paramString);
      }
      catch (JSONException paramString)
      {
        paramString.toString();
        continue;
      }
      return saveEvent(localJSONObject1);
      paramString = replaceWithJSONNull(userId);
      continue;
      paramString = userProperties;
    }
  }
  
  public void logEvent(String paramString)
  {
    logEvent(paramString, null);
  }
  
  public void logEvent(String paramString, JSONObject paramJSONObject)
  {
    if (validateLogEvent(paramString)) {
      logEventAsync(paramString, paramJSONObject, null, System.currentTimeMillis(), true);
    }
  }
  
  protected void logEventAsync(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, long paramLong, boolean paramBoolean)
  {
    if (paramJSONObject1 != null) {
      paramJSONObject1 = cloneJSONObject(paramJSONObject1);
    }
    for (;;)
    {
      runOnLogThread(new AmplitudeClient.2(this, paramString, paramJSONObject1, paramJSONObject2, paramLong, paramBoolean));
      return;
    }
  }
  
  public void logEventSync(String paramString, JSONObject paramJSONObject)
  {
    if (validateLogEvent(paramString)) {
      logEvent(paramString, paramJSONObject, null, System.currentTimeMillis(), true);
    }
  }
  
  public void logRevenue(double paramDouble)
  {
    logRevenue(null, 1, paramDouble);
  }
  
  public void logRevenue(String paramString, int paramInt, double paramDouble)
  {
    logRevenue(paramString, paramInt, paramDouble, null, null);
  }
  
  public void logRevenue(String paramString1, int paramInt, double paramDouble, String paramString2, String paramString3)
  {
    if (!contextAndApiKeySet("logRevenue()")) {
      return;
    }
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("special", "revenue_amount");
      localJSONObject.put("productId", paramString1);
      localJSONObject.put("quantity", paramInt);
      localJSONObject.put("price", paramDouble);
      localJSONObject.put("receipt", paramString2);
      localJSONObject.put("receiptSig", paramString3);
      logEvent("revenue_amount", null, localJSONObject, System.currentTimeMillis(), true);
      return;
    }
    catch (JSONException paramString1)
    {
      for (;;) {}
    }
  }
  
  protected void makeEventUploadPostRequest(xy paramxy, String paramString, long paramLong)
  {
    String str2 = "" + System.currentTimeMillis();
    Object localObject = "";
    try
    {
      String str1 = "2" + apiKey + paramString + str2;
      str1 = bytesToHexString(MessageDigest.getInstance("MD5").digest(str1.getBytes("UTF-8")));
      localObject = str1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        try
        {
          paramxy = paramxy.a(paramString).a().h().f();
          boolean bool = paramxy.equals("success");
          if (bool) {
            i = 1;
          }
        }
        catch (HttpHostConnectException paramxy)
        {
          i = 0;
          lastError = paramxy;
          continue;
        }
        catch (UnknownHostException paramxy)
        {
          i = 0;
          lastError = paramxy;
          continue;
        }
        catch (IOException paramxy)
        {
          i = 0;
          paramxy.toString();
          lastError = paramxy;
          continue;
        }
        catch (AssertionError paramxy)
        {
          i = 0;
          lastError = paramxy;
          continue;
        }
        catch (Exception paramxy)
        {
          i = 0;
          lastError = paramxy;
          continue;
        }
        try
        {
          logThread.post(new AmplitudeClient.10(this, paramLong));
          if (i == 0) {
            uploadingCurrently.set(false);
          }
          return;
        }
        catch (Exception paramxy)
        {
          i = 1;
          continue;
        }
        catch (AssertionError paramxy)
        {
          i = 1;
          continue;
        }
        catch (IOException paramxy)
        {
          i = 1;
          continue;
        }
        catch (UnknownHostException paramxy)
        {
          i = 1;
          continue;
        }
        catch (HttpHostConnectException paramxy)
        {
          i = 1;
          continue;
        }
        localNoSuchAlgorithmException = localNoSuchAlgorithmException;
        localNoSuchAlgorithmException.toString();
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.toString();
        continue;
        if (paramxy.equals("invalid_api_key"))
        {
          i = 0;
        }
        else if (paramxy.equals("bad_checksum"))
        {
          i = 0;
        }
        else if (paramxy.equals("request_db_write_failed"))
        {
          i = 0;
        }
        else
        {
          new StringBuilder().append("Upload failed, ").append(paramxy).append(", will attempt to reupload later").toString();
          i = 0;
        }
      }
    }
    paramString = new xq().a("v", "2").a("client", apiKey).a("e", paramString).a("upload_time", str2).a("checksum", (String)localObject).a();
    paramString = new xF().a(url).a(paramString).b();
  }
  
  protected Object replaceWithJSONNull(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == null) {
      localObject = JSONObject.NULL;
    }
    return localObject;
  }
  
  protected long saveEvent(JSONObject paramJSONObject)
  {
    DatabaseHelper localDatabaseHelper = DatabaseHelper.getDatabaseHelper(context);
    long l = localDatabaseHelper.addEvent(paramJSONObject.toString());
    if (localDatabaseHelper.getEventCount() >= eventMaxCount) {
      localDatabaseHelper.removeEvents(localDatabaseHelper.getNthEventId(20L));
    }
    if (localDatabaseHelper.getEventCount() >= eventUploadThreshold)
    {
      updateServer();
      return l;
    }
    updateServerLater(eventUploadPeriodMillis);
    return l;
  }
  
  public void setEventMaxCount(int paramInt)
  {
    eventMaxCount = paramInt;
  }
  
  public void setEventUploadMaxBatchSize(int paramInt)
  {
    eventUploadMaxBatchSize = paramInt;
  }
  
  public void setEventUploadPeriodMillis(int paramInt)
  {
    eventUploadPeriodMillis = paramInt;
  }
  
  public void setEventUploadThreshold(int paramInt)
  {
    eventUploadThreshold = paramInt;
  }
  
  void setLastEventTime(long paramLong)
  {
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().putLong("com.amplitude.api.previousSessionTime", paramLong).commit();
  }
  
  public void setMinTimeBetweenSessionsMillis(int paramInt)
  {
    minTimeBetweenSessionsMillis = paramInt;
  }
  
  public void setOffline(boolean paramBoolean)
  {
    offline = paramBoolean;
    if (!paramBoolean) {
      uploadEvents();
    }
  }
  
  public void setOptOut(boolean paramBoolean)
  {
    optOut = paramBoolean;
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().putBoolean("com.amplitude.api.optOut", paramBoolean).commit();
  }
  
  public void setSessionTimeoutMillis(long paramLong)
  {
    sessionTimeoutMillis = paramLong;
  }
  
  public void setUserId(String paramString)
  {
    if (!contextAndApiKeySet("setUserId()")) {
      return;
    }
    userId = paramString;
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().putString("com.amplitude.api.userId", paramString).commit();
  }
  
  public void setUserProperties(JSONObject paramJSONObject)
  {
    setUserProperties(paramJSONObject, false);
  }
  
  public void setUserProperties(JSONObject paramJSONObject, boolean paramBoolean)
  {
    if ((paramBoolean) || (userProperties == null)) {
      userProperties = paramJSONObject;
    }
    while (paramJSONObject == null) {
      return;
    }
    runOnLogThread(new AmplitudeClient.6(this, paramJSONObject, userProperties));
  }
  
  public void startSession()
  {
    if (!contextAndApiKeySet("startSession()")) {
      return;
    }
    runOnLogThread(new AmplitudeClient.3(this, System.currentTimeMillis()));
  }
  
  protected void updateServer()
  {
    updateServer(true);
  }
  
  protected void updateServer(boolean paramBoolean)
  {
    if ((optOut) || (offline)) {}
    while (uploadingCurrently.getAndSet(true)) {
      return;
    }
    Object localObject = DatabaseHelper.getDatabaseHelper(context);
    for (;;)
    {
      try
      {
        long l = getEndSessionId();
        if (paramBoolean)
        {
          i = eventUploadMaxBatchSize;
          localObject = ((DatabaseHelper)localObject).getEvents(l, i);
          l = ((Long)first).longValue();
          localObject = (JSONArray)second;
          httpThread.post(new AmplitudeClient.9(this, (JSONArray)localObject, l));
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        uploadingCurrently.set(false);
        localJSONException.toString();
        return;
      }
      int i = -1;
    }
  }
  
  public void uploadEvents()
  {
    if (!contextAndApiKeySet("uploadEvents()")) {
      return;
    }
    logThread.post(new AmplitudeClient.7(this));
  }
  
  public void useAdvertisingIdForDeviceId()
  {
    useAdvertisingIdForDeviceId = true;
  }
  
  protected boolean validateLogEvent(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!contextAndApiKeySet("logEvent()")) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */