package com.mixpanel.android.mpmetrics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import rZ;
import sD;
import sH;
import sI;
import sK;
import sL;
import sM;
import sQ;
import sR;
import sS;
import sT;
import sU;
import sV;
import sa;
import sj;
import sn;
import so;
import tc;
import un;
import up;
import uq;

public class MixpanelAPI
{
  private static final String APP_LINKS_LOGTAG = "MixpanelAPI - App Links (OPTIONAL)";
  private static final String ENGAGE_DATE_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ss";
  private static final String LOGTAG = "MixpanelAPI.MixpanelAPI";
  public static final String VERSION = "4.5.3";
  private static final Map<String, Map<Context, MixpanelAPI>> sInstanceMap = new HashMap();
  private static final tc sPrefsLoader = new tc();
  private static Future<SharedPreferences> sReferrerPrefs;
  private final sD mConfig;
  private final Context mContext;
  private final sn mDecideMessages;
  private final Map<String, String> mDeviceInfo;
  private final Map<String, Long> mEventTimings;
  private final rZ mMessages;
  private final sM mPeople;
  private final sV mPersistentIdentity;
  private final String mToken;
  private final un mTrackingDebug;
  private final up mUpdatesFromMixpanel;
  private final sT mUpdatesListener;
  
  MixpanelAPI(Context paramContext, Future<SharedPreferences> paramFuture, String paramString)
  {
    mContext = paramContext;
    mToken = paramString;
    mEventTimings = new HashMap();
    mPeople = new sM(this, null);
    mMessages = getAnalyticsMessages();
    mConfig = getConfig();
    HashMap localHashMap = new HashMap();
    localHashMap.put("$android_lib_version", "4.5.3");
    localHashMap.put("$android_os", "Android");
    Object localObject;
    if (Build.VERSION.RELEASE == null) {
      localObject = "UNKNOWN";
    }
    for (;;)
    {
      localHashMap.put("$android_os_version", localObject);
      if (Build.MANUFACTURER == null)
      {
        localObject = "UNKNOWN";
        label119:
        localHashMap.put("$android_manufacturer", localObject);
        if (Build.BRAND != null) {
          break label353;
        }
        localObject = "UNKNOWN";
        label141:
        localHashMap.put("$android_brand", localObject);
        if (Build.MODEL != null) {
          break label361;
        }
        localObject = "UNKNOWN";
        localHashMap.put("$android_model", localObject);
      }
      try
      {
        localObject = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0);
        localHashMap.put("$android_app_version", versionName);
        localHashMap.put("$android_app_version_code", Integer.toString(versionCode));
        mDeviceInfo = Collections.unmodifiableMap(localHashMap);
        mUpdatesFromMixpanel = constructUpdatesFromMixpanel(paramContext, paramString);
        mTrackingDebug = constructTrackingDebug();
        mPersistentIdentity = getPersistentIdentity(paramContext, paramFuture, paramString);
        mUpdatesListener = constructUpdatesListener();
        mDecideMessages = constructDecideUpdates(paramString, mUpdatesListener, mUpdatesFromMixpanel);
        paramContext = mPersistentIdentity.d();
        mDecideMessages.a(paramContext);
        mMessages.a(mDecideMessages);
        registerMixpanelActivityLifecycleCallbacks();
        if (sendAppOpen()) {
          track("$app_open", null);
        }
        return;
        localObject = Build.VERSION.RELEASE;
        continue;
        localObject = Build.MANUFACTURER;
        break label119;
        label353:
        localObject = Build.BRAND;
        break label141;
        label361:
        localObject = Build.MODEL;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;) {}
      }
    }
  }
  
  public static void allInstances(sK paramsK)
  {
    synchronized (sInstanceMap)
    {
      Iterator localIterator1 = sInstanceMap.values().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((Map)localIterator1.next()).values().iterator();
        if (localIterator2.hasNext()) {
          paramsK.a((MixpanelAPI)localIterator2.next());
        }
      }
    }
  }
  
  private static void checkIntentForInboundAppLink(Context paramContext)
  {
    if ((paramContext instanceof Activity)) {}
    try
    {
      Class localClass = Class.forName("L");
      Intent localIntent = ((Activity)paramContext).getIntent();
      localClass.getMethod("getTargetUrlFromInboundIntent", new Class[] { Context.class, Intent.class }).invoke(null, new Object[] { paramContext, localIntent });
      return;
    }
    catch (ClassNotFoundException paramContext)
    {
      new StringBuilder().append("Please install the Bolts library >= 1.1.2 to track App Links: ").append(paramContext.getMessage()).toString();
      return;
    }
    catch (NoSuchMethodException paramContext)
    {
      new StringBuilder().append("Please install the Bolts library >= 1.1.2 to track App Links: ").append(paramContext.getMessage()).toString();
      return;
    }
    catch (IllegalAccessException paramContext)
    {
      new StringBuilder().append("Unable to detect inbound App Links: ").append(paramContext.getMessage()).toString();
      return;
    }
    catch (InvocationTargetException paramContext) {}
  }
  
  @Deprecated
  public static void enableFallbackServer(Context paramContext, boolean paramBoolean) {}
  
  public static MixpanelAPI getInstance(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramContext == null)) {
      return null;
    }
    for (;;)
    {
      synchronized (sInstanceMap)
      {
        Context localContext = paramContext.getApplicationContext();
        if (sReferrerPrefs == null) {
          sReferrerPrefs = sPrefsLoader.a(paramContext, "com.mixpanel.android.mpmetrics.ReferralInfo", null);
        }
        Object localObject = (Map)sInstanceMap.get(paramString);
        if (localObject == null)
        {
          localObject = new HashMap();
          sInstanceMap.put(paramString, localObject);
          MixpanelAPI localMixpanelAPI2 = (MixpanelAPI)((Map)localObject).get(localContext);
          MixpanelAPI localMixpanelAPI1 = localMixpanelAPI2;
          if (localMixpanelAPI2 == null)
          {
            localMixpanelAPI1 = localMixpanelAPI2;
            if (sj.a(localContext))
            {
              localMixpanelAPI1 = new MixpanelAPI(localContext, sReferrerPrefs, paramString);
              registerAppLinksListeners(paramContext, localMixpanelAPI1);
              ((Map)localObject).put(localContext, localMixpanelAPI1);
            }
          }
          checkIntentForInboundAppLink(paramContext);
          return localMixpanelAPI1;
        }
      }
    }
  }
  
  private void pushWaitingPeopleRecord()
  {
    JSONArray localJSONArray = mPersistentIdentity.e();
    if (localJSONArray != null) {
      sendAllPeopleRecords(localJSONArray);
    }
  }
  
  private void recordPeopleMessage(JSONObject paramJSONObject)
  {
    if (paramJSONObject.has("$distinct_id"))
    {
      mMessages.a(paramJSONObject);
      return;
    }
    mPersistentIdentity.a(paramJSONObject);
  }
  
  private static void registerAppLinksListeners(Context paramContext, MixpanelAPI paramMixpanelAPI)
  {
    try
    {
      Class localClass = Class.forName("android.support.v4.content.LocalBroadcastManager");
      Method localMethod = localClass.getMethod("getInstance", new Class[] { Context.class });
      localClass.getMethod("registerReceiver", new Class[] { BroadcastReceiver.class, IntentFilter.class }).invoke(localMethod.invoke(null, new Object[] { paramContext }), new Object[] { new sI(paramMixpanelAPI), new IntentFilter("com.parse.bolts.measurement_event") });
      return;
    }
    catch (ClassNotFoundException paramContext)
    {
      new StringBuilder().append("To enable App Links tracking android.support.v4 must be installed: ").append(paramContext.getMessage()).toString();
      return;
    }
    catch (NoSuchMethodException paramContext)
    {
      new StringBuilder().append("To enable App Links tracking android.support.v4 must be installed: ").append(paramContext.getMessage()).toString();
      return;
    }
    catch (IllegalAccessException paramContext)
    {
      new StringBuilder().append("App Links tracking will not be enabled due to this exception: ").append(paramContext.getMessage()).toString();
      return;
    }
    catch (InvocationTargetException paramContext) {}
  }
  
  private void sendAllPeopleRecords(JSONArray paramJSONArray)
  {
    int i = 0;
    for (;;)
    {
      if (i < paramJSONArray.length()) {}
      try
      {
        JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
        mMessages.a(localJSONObject);
        i += 1;
        continue;
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;) {}
      }
    }
  }
  
  @Deprecated
  public static void setFlushInterval(Context paramContext, long paramLong) {}
  
  public void alias(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = getDistinctId();
    }
    if (paramString1.equals(str))
    {
      new StringBuilder().append("Attempted to alias identical distinct_ids ").append(paramString1).append(". Alias message will not be sent.").toString();
      return;
    }
    try
    {
      paramString2 = new JSONObject();
      paramString2.put("alias", paramString1);
      paramString2.put("original", str);
      track("$create_alias", paramString2);
      flush();
      return;
    }
    catch (JSONException paramString1)
    {
      for (;;) {}
    }
  }
  
  public void clearSuperProperties()
  {
    mPersistentIdentity.h();
  }
  
  sn constructDecideUpdates(String paramString, so paramso, up paramup)
  {
    return new sn(paramString, paramso, paramup);
  }
  
  un constructTrackingDebug()
  {
    if ((mUpdatesFromMixpanel instanceof uq)) {
      return (un)mUpdatesFromMixpanel;
    }
    return null;
  }
  
  up constructUpdatesFromMixpanel(Context paramContext, String paramString)
  {
    if (Build.VERSION.SDK_INT < 16) {
      return new sR(this);
    }
    return new uq(mContext, mToken, this);
  }
  
  sT constructUpdatesListener()
  {
    if (Build.VERSION.SDK_INT < 16) {
      return new sS(this, null);
    }
    return new sQ(this, null);
  }
  
  public void flush()
  {
    mMessages.a();
  }
  
  rZ getAnalyticsMessages()
  {
    return rZ.a(mContext);
  }
  
  sD getConfig()
  {
    return sD.a(mContext);
  }
  
  public Map<String, String> getDeviceInfo()
  {
    return mDeviceInfo;
  }
  
  public String getDistinctId()
  {
    return mPersistentIdentity.c();
  }
  
  public sL getPeople()
  {
    return mPeople;
  }
  
  sV getPersistentIdentity(Context paramContext, Future<SharedPreferences> paramFuture, String paramString)
  {
    sH localsH = new sH(this);
    paramString = "com.mixpanel.android.mpmetrics.MixpanelAPI_" + paramString;
    return new sV(paramFuture, sPrefsLoader.a(paramContext, paramString, localsH));
  }
  
  public JSONObject getSuperProperties()
  {
    return mPersistentIdentity.a();
  }
  
  public void identify(String paramString)
  {
    mPersistentIdentity.a(paramString);
  }
  
  @Deprecated
  public void logPosts() {}
  
  @TargetApi(16)
  void registerMixpanelActivityLifecycleCallbacks()
  {
    if ((Build.VERSION.SDK_INT >= 16) && (mConfig.o()) && ((mContext.getApplicationContext() instanceof Application))) {
      ((Application)mContext.getApplicationContext()).registerActivityLifecycleCallbacks(new sU(this));
    }
  }
  
  public void registerSuperProperties(JSONObject paramJSONObject)
  {
    mPersistentIdentity.b(paramJSONObject);
  }
  
  public void registerSuperPropertiesOnce(JSONObject paramJSONObject)
  {
    mPersistentIdentity.c(paramJSONObject);
  }
  
  public void reset()
  {
    mPersistentIdentity.f();
  }
  
  boolean sendAppOpen()
  {
    return !mConfig.g();
  }
  
  public void timeEvent(String paramString)
  {
    long l = System.currentTimeMillis();
    synchronized (mEventTimings)
    {
      mEventTimings.put(paramString, Long.valueOf(l));
      return;
    }
  }
  
  public void track(String paramString, JSONObject paramJSONObject)
  {
    do
    {
      Object localObject2;
      synchronized (mEventTimings)
      {
        localObject2 = (Long)mEventTimings.get(paramString);
        mEventTimings.remove(paramString);
        try
        {
          ??? = new JSONObject();
          localObject3 = mPersistentIdentity.b().entrySet().iterator();
          while (((Iterator)localObject3).hasNext())
          {
            localObject4 = (Map.Entry)((Iterator)localObject3).next();
            ((JSONObject)???).put((String)((Map.Entry)localObject4).getKey(), (String)((Map.Entry)localObject4).getValue());
            continue;
            paramString = finally;
          }
        }
        catch (JSONException paramJSONObject)
        {
          new StringBuilder().append("Exception tracking event ").append(paramString).toString();
          return;
        }
      }
      Object localObject3 = mPersistentIdentity.a();
      Object localObject4 = ((JSONObject)localObject3).keys();
      while (((Iterator)localObject4).hasNext())
      {
        String str = (String)((Iterator)localObject4).next();
        ((JSONObject)???).put(str, ((JSONObject)localObject3).get(str));
      }
      double d = System.currentTimeMillis() / 1000.0D;
      ((JSONObject)???).put("time", d);
      ((JSONObject)???).put("distinct_id", getDistinctId());
      if (localObject2 != null) {
        ((JSONObject)???).put("$duration", d - ((Long)localObject2).longValue() / 1000.0D);
      }
      if (paramJSONObject != null)
      {
        localObject2 = paramJSONObject.keys();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (String)((Iterator)localObject2).next();
          ((JSONObject)???).put((String)localObject3, paramJSONObject.get((String)localObject3));
        }
      }
      paramJSONObject = new sa(paramString, (JSONObject)???, mToken);
      mMessages.a(paramJSONObject);
    } while (mTrackingDebug == null);
    mTrackingDebug.a(paramString);
  }
  
  public void unregisterSuperProperty(String paramString)
  {
    mPersistentIdentity.c(paramString);
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.mpmetrics.MixpanelAPI
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */