package com.amplitude.api;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.Location;
import android.text.TextUtils;
import android.util.Pair;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Amplitude$Lib
{
  private String advertisingId;
  private String apiKey;
  private String brand;
  private String carrier;
  private Context context;
  private String country;
  private String deviceId;
  private DeviceInfo deviceInfo;
  private Runnable endSessionRunnable;
  WorkerThread httpThread = new WorkerThread("httpThread");
  private boolean initialized = false;
  private String language;
  WorkerThread logThread = new WorkerThread("logThread");
  private String manufacturer;
  private String model;
  private boolean newDeviceIdPerInstall = false;
  private boolean optOut = false;
  private String osName;
  private String osVersion;
  private long sessionId = -1L;
  private boolean sessionOpen = false;
  private long sessionTimeoutMillis = 1800000L;
  private AtomicBoolean updateScheduled = new AtomicBoolean(false);
  private AtomicBoolean uploadingCurrently = new AtomicBoolean(false);
  private boolean useAdvertisingIdForDeviceId = false;
  private String userId;
  JSONObject userProperties;
  private String versionName;
  
  protected Amplitude$Lib()
  {
    logThread.start();
    httpThread.start();
  }
  
  private String bytesToHexString(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar1 = new char[16];
    char[] tmp8_6 = arrayOfChar1;
    tmp8_6[0] = 48;
    char[] tmp13_8 = tmp8_6;
    tmp13_8[1] = 49;
    char[] tmp18_13 = tmp13_8;
    tmp18_13[2] = 50;
    char[] tmp23_18 = tmp18_13;
    tmp23_18[3] = 51;
    char[] tmp28_23 = tmp23_18;
    tmp28_23[4] = 52;
    char[] tmp33_28 = tmp28_23;
    tmp33_28[5] = 53;
    char[] tmp38_33 = tmp33_28;
    tmp38_33[6] = 54;
    char[] tmp44_38 = tmp38_33;
    tmp44_38[7] = 55;
    char[] tmp50_44 = tmp44_38;
    tmp50_44[8] = 56;
    char[] tmp56_50 = tmp50_44;
    tmp56_50[9] = 57;
    char[] tmp62_56 = tmp56_50;
    tmp62_56[10] = 97;
    char[] tmp68_62 = tmp62_56;
    tmp68_62[11] = 98;
    char[] tmp74_68 = tmp68_62;
    tmp74_68[12] = 99;
    char[] tmp80_74 = tmp74_68;
    tmp80_74[13] = 100;
    char[] tmp86_80 = tmp80_74;
    tmp86_80[14] = 101;
    char[] tmp92_86 = tmp86_80;
    tmp92_86[15] = 102;
    tmp92_86;
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
  
  private void checkedLogEvent(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, long paramLong, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!contextAndApiKeySet("logEvent()")) {
      return;
    }
    runOnLogThread(new Amplitude.Lib.2(this, paramString, paramJSONObject1, paramJSONObject2, paramLong, paramBoolean));
  }
  
  private void clearEndSession()
  {
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().remove(Constants.PREFKEY_PREVIOUS_END_SESSION_TIME).remove(Constants.PREFKEY_PREVIOUS_END_SESSION_ID).commit();
  }
  
  private JSONObject cloneJSONObject(JSONObject paramJSONObject)
  {
    JSONArray localJSONArray = paramJSONObject.names();
    int j = localJSONArray.length();
    String[] arrayOfString = new String[j];
    int i = 0;
    while (i < j)
    {
      arrayOfString[i] = localJSONArray.optString(i);
      i += 1;
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
  
  private boolean contextAndApiKeySet(String paramString)
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
  
  private long getEndSessionId()
  {
    return context.getSharedPreferences(getSharedPreferencesName(), 0).getLong(Constants.PREFKEY_PREVIOUS_END_SESSION_ID, -1L);
  }
  
  private long getEndSessionTime()
  {
    return context.getSharedPreferences(getSharedPreferencesName(), 0).getLong(Constants.PREFKEY_PREVIOUS_END_SESSION_TIME, -1L);
  }
  
  private long getLastEventTime()
  {
    return context.getSharedPreferences(getSharedPreferencesName(), 0).getLong(Constants.PREFKEY_PREVIOUS_SESSION_TIME, -1L);
  }
  
  private String getSharedPreferencesName()
  {
    return Constants.SHARED_PREFERENCES_NAME_PREFIX + "." + context.getPackageName();
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
    String str = localSharedPreferences.getString(Constants.PREFKEY_DEVICE_ID, null);
    if ((!TextUtils.isEmpty(str)) && (!((Set)localObject).contains(str))) {
      return str;
    }
    if ((!newDeviceIdPerInstall) && (useAdvertisingIdForDeviceId))
    {
      str = deviceInfo.getAdvertisingId();
      if ((!TextUtils.isEmpty(str)) && (!((Set)localObject).contains(str)))
      {
        localSharedPreferences.edit().putString(Constants.PREFKEY_DEVICE_ID, str).commit();
        return str;
      }
    }
    localObject = deviceInfo.generateUUID() + "R";
    localSharedPreferences.edit().putString(Constants.PREFKEY_DEVICE_ID, (String)localObject).commit();
    return (String)localObject;
  }
  
  private void initializeDeviceInfo()
  {
    deviceInfo = new DeviceInfo(context);
    runOnLogThread(new Amplitude.Lib.1(this));
  }
  
  private long logEvent(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, long paramLong, boolean paramBoolean)
  {
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
        paramString.put("version", "1.4.6");
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
  
  /* Error */
  private void makeEventUploadPostRequest(String paramString1, String paramString2, long paramLong)
  {
    // Byte code:
    //   0: new 491	org/apache/http/client/methods/HttpPost
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 492	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   8: astore 12
    //   10: new 494	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 495	java/util/ArrayList:<init>	()V
    //   17: astore 13
    //   19: new 305	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 306	java/lang/StringBuilder:<init>	()V
    //   26: ldc_w 338
    //   29: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokestatic 500	java/lang/System:currentTimeMillis	()J
    //   35: invokevirtual 503	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   38: invokevirtual 313	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: astore 14
    //   43: ldc_w 338
    //   46: astore_1
    //   47: new 305	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 306	java/lang/StringBuilder:<init>	()V
    //   54: ldc_w 505
    //   57: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_0
    //   61: getfield 315	com/amplitude/api/Amplitude$Lib:apiKey	Ljava/lang/String;
    //   64: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_2
    //   68: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: aload 14
    //   73: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 313	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: astore 11
    //   81: aload_0
    //   82: ldc_w 507
    //   85: invokestatic 513	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   88: aload 11
    //   90: ldc_w 515
    //   93: invokevirtual 519	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   96: invokevirtual 523	java/security/MessageDigest:digest	([B)[B
    //   99: invokespecial 525	com/amplitude/api/Amplitude$Lib:bytesToHexString	([B)Ljava/lang/String;
    //   102: astore 11
    //   104: aload 11
    //   106: astore_1
    //   107: aload 13
    //   109: new 527	org/apache/http/message/BasicNameValuePair
    //   112: dup
    //   113: ldc_w 529
    //   116: ldc_w 505
    //   119: invokespecial 532	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   122: invokeinterface 535 2 0
    //   127: pop
    //   128: aload 13
    //   130: new 527	org/apache/http/message/BasicNameValuePair
    //   133: dup
    //   134: ldc_w 537
    //   137: aload_0
    //   138: getfield 315	com/amplitude/api/Amplitude$Lib:apiKey	Ljava/lang/String;
    //   141: invokespecial 532	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   144: invokeinterface 535 2 0
    //   149: pop
    //   150: aload 13
    //   152: new 527	org/apache/http/message/BasicNameValuePair
    //   155: dup
    //   156: ldc_w 539
    //   159: aload_2
    //   160: invokespecial 532	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   163: invokeinterface 535 2 0
    //   168: pop
    //   169: aload 13
    //   171: new 527	org/apache/http/message/BasicNameValuePair
    //   174: dup
    //   175: ldc_w 541
    //   178: aload 14
    //   180: invokespecial 532	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   183: invokeinterface 535 2 0
    //   188: pop
    //   189: aload 13
    //   191: new 527	org/apache/http/message/BasicNameValuePair
    //   194: dup
    //   195: ldc_w 543
    //   198: aload_1
    //   199: invokespecial 532	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   202: invokeinterface 535 2 0
    //   207: pop
    //   208: aload 12
    //   210: new 545	org/apache/http/client/entity/UrlEncodedFormEntity
    //   213: dup
    //   214: aload 13
    //   216: ldc_w 515
    //   219: invokespecial 548	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   222: invokevirtual 552	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   225: new 554	org/apache/http/impl/client/DefaultHttpClient
    //   228: dup
    //   229: invokespecial 555	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   232: astore_2
    //   233: aload_2
    //   234: aload 12
    //   236: invokeinterface 561 2 0
    //   241: invokeinterface 567 1 0
    //   246: invokestatic 572	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   249: astore_1
    //   250: aload_1
    //   251: ldc_w 574
    //   254: invokevirtual 577	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   257: istore 10
    //   259: iload 10
    //   261: ifeq +107 -> 368
    //   264: iconst_1
    //   265: istore 5
    //   267: iconst_1
    //   268: istore 7
    //   270: iconst_1
    //   271: istore 8
    //   273: iconst_1
    //   274: istore 9
    //   276: iconst_1
    //   277: istore 6
    //   279: aload_0
    //   280: getfield 80	com/amplitude/api/Amplitude$Lib:logThread	Lcom/amplitude/api/WorkerThread;
    //   283: new 579	com/amplitude/api/Amplitude$Lib$10
    //   286: dup
    //   287: aload_0
    //   288: lload_3
    //   289: invokespecial 581	com/amplitude/api/Amplitude$Lib$10:<init>	(Lcom/amplitude/api/Amplitude$Lib;J)V
    //   292: invokevirtual 584	com/amplitude/api/WorkerThread:post	(Ljava/lang/Runnable;)V
    //   295: iload 6
    //   297: istore 5
    //   299: aload_2
    //   300: invokeinterface 588 1 0
    //   305: ifnull +18 -> 323
    //   308: aload_2
    //   309: invokeinterface 588 1 0
    //   314: invokeinterface 593 1 0
    //   319: iload 6
    //   321: istore 5
    //   323: iload 5
    //   325: ifne +11 -> 336
    //   328: aload_0
    //   329: getfield 72	com/amplitude/api/Amplitude$Lib:uploadingCurrently	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   332: iconst_0
    //   333: invokevirtual 596	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   336: return
    //   337: astore 11
    //   339: aload 11
    //   341: invokevirtual 597	java/security/NoSuchAlgorithmException:toString	()Ljava/lang/String;
    //   344: pop
    //   345: goto -238 -> 107
    //   348: astore 11
    //   350: aload 11
    //   352: invokevirtual 598	java/io/UnsupportedEncodingException:toString	()Ljava/lang/String;
    //   355: pop
    //   356: goto -249 -> 107
    //   359: astore_1
    //   360: aload_1
    //   361: invokevirtual 598	java/io/UnsupportedEncodingException:toString	()Ljava/lang/String;
    //   364: pop
    //   365: goto -140 -> 225
    //   368: aload_1
    //   369: ldc_w 600
    //   372: invokevirtual 577	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   375: ifeq +9 -> 384
    //   378: iconst_0
    //   379: istore 6
    //   381: goto -86 -> 295
    //   384: aload_1
    //   385: ldc_w 602
    //   388: invokevirtual 577	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   391: ifeq +9 -> 400
    //   394: iconst_0
    //   395: istore 6
    //   397: goto -102 -> 295
    //   400: aload_1
    //   401: ldc_w 604
    //   404: invokevirtual 577	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   407: ifeq +9 -> 416
    //   410: iconst_0
    //   411: istore 6
    //   413: goto -118 -> 295
    //   416: new 305	java/lang/StringBuilder
    //   419: dup
    //   420: invokespecial 306	java/lang/StringBuilder:<init>	()V
    //   423: ldc_w 606
    //   426: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: aload_1
    //   430: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: ldc_w 608
    //   436: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   439: invokevirtual 313	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   442: pop
    //   443: iconst_0
    //   444: istore 6
    //   446: goto -151 -> 295
    //   449: astore_1
    //   450: iconst_0
    //   451: istore 6
    //   453: iload 6
    //   455: istore 5
    //   457: aload_2
    //   458: invokeinterface 588 1 0
    //   463: ifnull -140 -> 323
    //   466: aload_2
    //   467: invokeinterface 588 1 0
    //   472: invokeinterface 593 1 0
    //   477: iload 6
    //   479: istore 5
    //   481: goto -158 -> 323
    //   484: astore_1
    //   485: iconst_0
    //   486: istore 6
    //   488: iload 6
    //   490: istore 5
    //   492: aload_2
    //   493: invokeinterface 588 1 0
    //   498: ifnull -175 -> 323
    //   501: aload_2
    //   502: invokeinterface 588 1 0
    //   507: invokeinterface 593 1 0
    //   512: iload 6
    //   514: istore 5
    //   516: goto -193 -> 323
    //   519: astore_1
    //   520: iconst_0
    //   521: istore 5
    //   523: aload_1
    //   524: invokevirtual 609	org/apache/http/client/ClientProtocolException:toString	()Ljava/lang/String;
    //   527: pop
    //   528: iload 5
    //   530: istore 6
    //   532: aload_2
    //   533: invokeinterface 588 1 0
    //   538: ifnull +192 -> 730
    //   541: aload_2
    //   542: invokeinterface 588 1 0
    //   547: invokeinterface 593 1 0
    //   552: goto -229 -> 323
    //   555: astore_1
    //   556: iconst_0
    //   557: istore 5
    //   559: aload_1
    //   560: invokevirtual 610	java/io/IOException:toString	()Ljava/lang/String;
    //   563: pop
    //   564: iload 5
    //   566: istore 6
    //   568: aload_2
    //   569: invokeinterface 588 1 0
    //   574: ifnull +156 -> 730
    //   577: aload_2
    //   578: invokeinterface 588 1 0
    //   583: invokeinterface 593 1 0
    //   588: goto -265 -> 323
    //   591: astore_1
    //   592: iconst_0
    //   593: istore 6
    //   595: iload 6
    //   597: istore 5
    //   599: aload_2
    //   600: invokeinterface 588 1 0
    //   605: ifnull -282 -> 323
    //   608: aload_2
    //   609: invokeinterface 588 1 0
    //   614: invokeinterface 593 1 0
    //   619: iload 6
    //   621: istore 5
    //   623: goto -300 -> 323
    //   626: astore_1
    //   627: iconst_0
    //   628: istore 6
    //   630: iload 6
    //   632: istore 5
    //   634: aload_2
    //   635: invokeinterface 588 1 0
    //   640: ifnull -317 -> 323
    //   643: aload_2
    //   644: invokeinterface 588 1 0
    //   649: invokeinterface 593 1 0
    //   654: iload 6
    //   656: istore 5
    //   658: goto -335 -> 323
    //   661: astore_1
    //   662: aload_2
    //   663: invokeinterface 588 1 0
    //   668: ifnull +14 -> 682
    //   671: aload_2
    //   672: invokeinterface 588 1 0
    //   677: invokeinterface 593 1 0
    //   682: aload_1
    //   683: athrow
    //   684: astore_1
    //   685: iload 9
    //   687: istore 6
    //   689: goto -59 -> 630
    //   692: astore_1
    //   693: iload 8
    //   695: istore 6
    //   697: goto -102 -> 595
    //   700: astore_1
    //   701: iconst_1
    //   702: istore 5
    //   704: goto -145 -> 559
    //   707: astore_1
    //   708: iconst_1
    //   709: istore 5
    //   711: goto -188 -> 523
    //   714: astore_1
    //   715: iload 7
    //   717: istore 6
    //   719: goto -231 -> 488
    //   722: astore_1
    //   723: iload 5
    //   725: istore 6
    //   727: goto -274 -> 453
    //   730: iload 6
    //   732: istore 5
    //   734: goto -411 -> 323
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	737	0	this	Lib
    //   0	737	1	paramString1	String
    //   0	737	2	paramString2	String
    //   0	737	3	paramLong	long
    //   265	468	5	i	int
    //   277	454	6	j	int
    //   268	448	7	k	int
    //   271	423	8	m	int
    //   274	412	9	n	int
    //   257	3	10	bool	boolean
    //   79	26	11	str1	String
    //   337	3	11	localNoSuchAlgorithmException	java.security.NoSuchAlgorithmException
    //   348	3	11	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    //   8	227	12	localHttpPost	org.apache.http.client.methods.HttpPost
    //   17	198	13	localArrayList	java.util.ArrayList
    //   41	138	14	str2	String
    // Exception table:
    //   from	to	target	type
    //   47	104	337	java/security/NoSuchAlgorithmException
    //   47	104	348	java/io/UnsupportedEncodingException
    //   208	225	359	java/io/UnsupportedEncodingException
    //   233	259	449	org/apache/http/conn/HttpHostConnectException
    //   368	378	449	org/apache/http/conn/HttpHostConnectException
    //   384	394	449	org/apache/http/conn/HttpHostConnectException
    //   400	410	449	org/apache/http/conn/HttpHostConnectException
    //   416	443	449	org/apache/http/conn/HttpHostConnectException
    //   233	259	484	java/net/UnknownHostException
    //   368	378	484	java/net/UnknownHostException
    //   384	394	484	java/net/UnknownHostException
    //   400	410	484	java/net/UnknownHostException
    //   416	443	484	java/net/UnknownHostException
    //   233	259	519	org/apache/http/client/ClientProtocolException
    //   368	378	519	org/apache/http/client/ClientProtocolException
    //   384	394	519	org/apache/http/client/ClientProtocolException
    //   400	410	519	org/apache/http/client/ClientProtocolException
    //   416	443	519	org/apache/http/client/ClientProtocolException
    //   233	259	555	java/io/IOException
    //   368	378	555	java/io/IOException
    //   384	394	555	java/io/IOException
    //   400	410	555	java/io/IOException
    //   416	443	555	java/io/IOException
    //   233	259	591	java/lang/AssertionError
    //   368	378	591	java/lang/AssertionError
    //   384	394	591	java/lang/AssertionError
    //   400	410	591	java/lang/AssertionError
    //   416	443	591	java/lang/AssertionError
    //   233	259	626	java/lang/Exception
    //   368	378	626	java/lang/Exception
    //   384	394	626	java/lang/Exception
    //   400	410	626	java/lang/Exception
    //   416	443	626	java/lang/Exception
    //   233	259	661	finally
    //   279	295	661	finally
    //   368	378	661	finally
    //   384	394	661	finally
    //   400	410	661	finally
    //   416	443	661	finally
    //   523	528	661	finally
    //   559	564	661	finally
    //   279	295	684	java/lang/Exception
    //   279	295	692	java/lang/AssertionError
    //   279	295	700	java/io/IOException
    //   279	295	707	org/apache/http/client/ClientProtocolException
    //   279	295	714	java/net/UnknownHostException
    //   279	295	722	org/apache/http/conn/HttpHostConnectException
  }
  
  private void openSession()
  {
    clearEndSession();
    sessionOpen = true;
  }
  
  private Object replaceWithJSONNull(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == null) {
      localObject = JSONObject.NULL;
    }
    return localObject;
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
  
  private long saveEvent(JSONObject paramJSONObject)
  {
    DatabaseHelper localDatabaseHelper = DatabaseHelper.getDatabaseHelper(context);
    long l = localDatabaseHelper.addEvent(paramJSONObject.toString());
    if (localDatabaseHelper.getEventCount() >= 1000L) {
      localDatabaseHelper.removeEvents(localDatabaseHelper.getNthEventId(20L));
    }
    if (localDatabaseHelper.getEventCount() >= 30L)
    {
      updateServer();
      return l;
    }
    updateServerLater(30000L);
    return l;
  }
  
  private void setLastEventTime(long paramLong)
  {
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().putLong(Constants.PREFKEY_PREVIOUS_SESSION_TIME, paramLong).commit();
  }
  
  private void startNewSession(long paramLong)
  {
    openSession();
    sessionId = paramLong;
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().putLong(Constants.PREFKEY_PREVIOUS_SESSION_ID, sessionId).commit();
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
      if (paramLong - getEndSessionTime() < 15000L)
      {
        l = context.getSharedPreferences(getSharedPreferencesName(), 0).getLong(Constants.PREFKEY_PREVIOUS_SESSION_ID, -1L);
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
  
  private void updateServer()
  {
    updateServer(true);
  }
  
  private void updateServer(boolean paramBoolean)
  {
    if (optOut) {}
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
          i = 100;
          localObject = ((DatabaseHelper)localObject).getEvents(l, i);
          l = ((Long)first).longValue();
          localObject = (JSONArray)second;
          httpThread.post(new Amplitude.Lib.9(this, (JSONArray)localObject, l));
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
  
  private void updateServerLater(long paramLong)
  {
    if (!updateScheduled.getAndSet(true)) {
      logThread.postDelayed(new Amplitude.Lib.4(this), paramLong);
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
    runOnLogThread(new Amplitude.Lib.6(this, System.currentTimeMillis()));
    logThread.removeCallbacks(endSessionRunnable);
    endSessionRunnable = new Amplitude.Lib.7(this);
    logThread.postDelayed(endSessionRunnable, 16000L);
  }
  
  public String getDeviceId()
  {
    return deviceId;
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
          paramContext.edit().putString(Constants.PREFKEY_USER_ID, paramString2).commit();
          optOut = paramContext.getBoolean(Constants.PREFKEY_OPT_OUT, false);
          initialized = true;
          break;
        }
      }
      finally {}
      userId = paramContext.getString(Constants.PREFKEY_USER_ID, null);
    }
  }
  
  public void logEvent(String paramString)
  {
    logEvent(paramString, null);
  }
  
  public void logEvent(String paramString, JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      paramJSONObject = cloneJSONObject(paramJSONObject);
    }
    for (;;)
    {
      checkedLogEvent(paramString, paramJSONObject, null, System.currentTimeMillis(), true);
      return;
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
      checkedLogEvent("revenue_amount", null, localJSONObject, System.currentTimeMillis(), true);
      return;
    }
    catch (JSONException paramString1)
    {
      for (;;) {}
    }
  }
  
  public void setOptOut(boolean paramBoolean)
  {
    optOut = paramBoolean;
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().putBoolean(Constants.PREFKEY_OPT_OUT, paramBoolean).commit();
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
    context.getSharedPreferences(getSharedPreferencesName(), 0).edit().putString(Constants.PREFKEY_USER_ID, paramString).commit();
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
    runOnLogThread(new Amplitude.Lib.8(this, paramJSONObject, userProperties));
  }
  
  public void startSession()
  {
    if (!contextAndApiKeySet("startSession()")) {
      return;
    }
    runOnLogThread(new Amplitude.Lib.5(this, System.currentTimeMillis()));
  }
  
  public void uploadEvents()
  {
    if (!contextAndApiKeySet("uploadEvents()")) {
      return;
    }
    logThread.post(new Amplitude.Lib.3(this));
  }
  
  public void useAdvertisingIdForDeviceId()
  {
    useAdvertisingIdForDeviceId = true;
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.Amplitude.Lib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */