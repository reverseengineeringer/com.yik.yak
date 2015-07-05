package com.parse;

import R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class PushRouter
{
  private static final ExecutorService EXECUTOR = Executors.newSingleThreadExecutor();
  public static final String GCM_RECEIVE_ACTION = "com.google.android.c2dm.intent.RECEIVE";
  private static final String LEGACY_ROUTE_LOCATION = "persistentCallbacks";
  static int MAX_HISTORY_LENGTH = 10;
  private static final String STATE_LOCATION = "pushState";
  private static final String TAG = "com.parse.ParsePushRouter";
  private static final Integer V1_LATEST_PUSH_STATE_VERSION;
  public static final Integer V2_PUSH_STATE_VERSION = Integer.valueOf(4);
  private static PushRouter instance;
  private static R<Void> lastTask;
  private static PushRouter.PushListener pushListener;
  private Boolean forceEnabled;
  private final PushHistory history;
  private final AtomicBoolean isRefreshingInstallation = new AtomicBoolean(false);
  private int pushStateVersion;
  private final PushRoutes routes;
  private final String stateLocation;
  
  static
  {
    V1_LATEST_PUSH_STATE_VERSION = Integer.valueOf(3);
  }
  
  public PushRouter(String paramString, PushRoutes paramPushRoutes, PushHistory paramPushHistory)
  {
    stateLocation = paramString;
    routes = paramPushRoutes;
    history = paramPushHistory;
    forceEnabled = null;
    pushStateVersion = V1_LATEST_PUSH_STATE_VERSION.intValue();
  }
  
  private static JSONArray getChannelsArrayFromInstallation(ParseInstallation paramParseInstallation)
  {
    Object localObject = null;
    List localList = paramParseInstallation.getList("channels");
    paramParseInstallation = (ParseInstallation)localObject;
    if (localList != null) {
      paramParseInstallation = (JSONArray)Parse.encode(localList, PointerOrLocalIdEncodingStrategy.get());
    }
    if (paramParseInstallation != null) {
      return paramParseInstallation;
    }
    return new JSONArray();
  }
  
  public static R<Boolean> getForceEnabledStateAsync()
  {
    try
    {
      R localR = getLastTask().c(new PushRouter.4(), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(localR.j());
      return localR;
    }
    finally {}
  }
  
  private static PushRouter getInstance()
  {
    JSONObject localJSONObject1;
    if (instance == null)
    {
      JSONObject localJSONObject2 = migrateV1toV3("persistentCallbacks", "pushState");
      localJSONObject1 = localJSONObject2;
      if (localJSONObject2 == null) {
        localJSONObject1 = migrateV2toV3("pushState", "pushState");
      }
      if (localJSONObject1 != null) {
        break label113;
      }
      localJSONObject1 = Parse.getDiskObject(Parse.applicationContext, "pushState");
    }
    label113:
    for (;;)
    {
      instance = new PushRouter("pushState", new PushRoutes(localJSONObject1), new PushHistory(MAX_HISTORY_LENGTH, localJSONObject1));
      if (localJSONObject1 != null)
      {
        instanceforceEnabled = ((Boolean)localJSONObject1.opt("forceEnabled"));
        instancepushStateVersion = localJSONObject1.optInt("version", V1_LATEST_PUSH_STATE_VERSION.intValue());
      }
      return instance;
    }
  }
  
  private static R<Void> getLastTask()
  {
    try
    {
      if (lastTask == null) {
        lastTask = R.a(null).j();
      }
      R localR = lastTask;
      return localR;
    }
    finally {}
  }
  
  public static R<JSONObject> getPushRequestJSONAsync()
  {
    try
    {
      R localR = getLastTask().c(new PushRouter.7(), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(localR.j());
      return localR;
    }
    finally {}
  }
  
  public static R<Integer> getPushStateVersionAsync()
  {
    try
    {
      R localR = getLastTask().c(new PushRouter.12(), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(localR.j());
      return localR;
    }
    finally {}
  }
  
  public static PushRoutes.Route getRoute(String paramString)
  {
    try
    {
      paramString = (PushRoutes.Route)Parse.waitForTask(getRouteAsync(paramString));
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private static R<PushRoutes.Route> getRouteAsync(String paramString)
  {
    try
    {
      paramString = getLastTask().c(new PushRouter.5(paramString), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(paramString.j());
      return paramString;
    }
    finally {}
  }
  
  public static R<Set<String>> getSubscriptionsAsync(boolean paramBoolean)
  {
    try
    {
      R localR = getLastTask().c(new PushRouter.6(paramBoolean), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(localR.j());
      return localR;
    }
    finally {}
  }
  
  public static void handleGcmPushIntent(Intent paramIntent)
  {
    Semaphore localSemaphore = new Semaphore(0);
    EXECUTOR.submit(new PushRouter.8(paramIntent, localSemaphore));
    localSemaphore.acquireUninterruptibly();
  }
  
  public static R<Void> handlePpnsPushAsync(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = getLastTask().c(new PushRouter.9(paramJSONObject), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(paramJSONObject);
      return paramJSONObject;
    }
    finally {}
  }
  
  private void handlePushInternal(JSONObject paramJSONObject)
  {
    Object localObject2 = paramJSONObject.optJSONObject("data");
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new JSONObject();
    }
    getInstance();
    localObject2 = paramJSONObject.optString("channel", null);
    paramJSONObject = new Bundle();
    paramJSONObject.putString("com.parse.Data", ((JSONObject)localObject1).toString());
    paramJSONObject.putString("com.parse.Channel", (String)localObject2);
    localObject1 = Parse.applicationContext;
    localObject2 = new Intent("com.parse.push.intent.RECEIVE");
    ((Intent)localObject2).putExtras(paramJSONObject);
    ((Intent)localObject2).setPackage(((Context)localObject1).getPackageName());
    ((Context)localObject1).sendBroadcast((Intent)localObject2);
  }
  
  private PushRouter.HandlePushResult handlePushLegacy(JSONObject paramJSONObject)
  {
    Object localObject2 = paramJSONObject.optJSONObject("data");
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new JSONObject();
    }
    String str2 = paramJSONObject.optString("channel", null);
    String str1 = ((JSONObject)localObject1).optString("action", null);
    Bundle localBundle = new Bundle();
    localBundle.putString("com.parse.Data", ((JSONObject)localObject1).toString());
    localBundle.putString("com.parse.Channel", str2);
    if (str1 != null)
    {
      localObject2 = new Intent();
      ((Intent)localObject2).putExtras(localBundle);
      ((Intent)localObject2).setAction(str1);
      ((Intent)localObject2).setPackage(Parse.applicationContext.getPackageName());
      Parse.applicationContext.sendBroadcast((Intent)localObject2);
      if ((!((JSONObject)localObject1).has("alert")) && (!((JSONObject)localObject1).has("title"))) {
        return PushRouter.HandlePushResult.BROADCAST_INTENT;
      }
    }
    Object localObject3 = routes.get(str2);
    localObject2 = localObject3;
    if (localObject3 == null)
    {
      localObject2 = localObject3;
      if (str2 != null) {
        localObject2 = routes.get(null);
      }
    }
    if (localObject2 == null)
    {
      Parse.logW("com.parse.ParsePushRouter", "Received push that has no handler. Did you call PushService.setDefaultPushCallback or PushService.subscribe? Push payload: " + paramJSONObject);
      if (str1 != null) {
        return PushRouter.HandlePushResult.BROADCAST_INTENT;
      }
      return PushRouter.HandlePushResult.NO_ROUTE_FOUND;
    }
    paramJSONObject = ((PushRoutes.Route)localObject2).getActivityClass();
    int j = ((PushRoutes.Route)localObject2).getIconId();
    localObject2 = ((JSONObject)localObject1).optString("title", ManifestInfo.getDisplayName());
    localObject1 = ((JSONObject)localObject1).optString("alert", "Notification received.");
    int i = j;
    if (j == 0)
    {
      i = ManifestInfo.getIconId();
      Parse.logW("com.parse.ParsePushRouter", "Icon ID associated with channel " + str2 + "is invalid; defaulting to package icon");
    }
    localObject3 = Parse.applicationContext;
    ParseNotificationManager.getInstance().showNotification((Context)localObject3, (String)localObject2, (String)localObject1, paramJSONObject, i, localBundle);
    if (str1 != null) {
      return PushRouter.HandlePushResult.SHOW_NOTIFICATION_AND_BROADCAST_INTENT;
    }
    return PushRouter.HandlePushResult.SHOW_NOTIFICATION;
  }
  
  public static boolean isGcmPushIntent(Intent paramIntent)
  {
    return (paramIntent != null) && ("com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction()));
  }
  
  private static R<Void> makeUnhandledExceptionsFatal(R<Void> paramR)
  {
    return paramR.a(new PushRouter.13(), EXECUTOR);
  }
  
  private void maybeRefreshInstallation(Date paramDate)
  {
    Date localDate = ParseInstallation.getCurrentInstallation().getUpdatedAt();
    if ((localDate != null) && (paramDate != null) && (localDate.compareTo(paramDate) < 0) && (isRefreshingInstallation.compareAndSet(false, true))) {
      ParseInstallation.getCurrentInstallation().fetchInBackground().a(new PushRouter.15(this));
    }
  }
  
  private static JSONObject merge(JSONObject... paramVarArgs)
  {
    JSONObject localJSONObject1 = new JSONObject();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      JSONObject localJSONObject2 = paramVarArgs[i];
      Iterator localIterator = localJSONObject2.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localJSONObject1.put(str, localJSONObject2.get(str));
      }
      i += 1;
    }
    return localJSONObject1;
  }
  
  static JSONObject migrateV1toV3(String paramString1, String paramString2)
  {
    ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
    JSONObject localJSONObject = Parse.getDiskObject(Parse.applicationContext, paramString1);
    if (localJSONObject != null)
    {
      Parse.logD("com.parse.ParsePushRouter", "Migrating push state from V1 to V3: " + localJSONObject);
      Object localObject1 = new ArrayList();
      Iterator localIterator = localJSONObject.keys();
      while (localIterator.hasNext()) {
        ((ArrayList)localObject1).add(localIterator.next());
      }
      localParseInstallation.addAllUnique("channels", (Collection)localObject1);
      localParseInstallation.saveEventually();
      try
      {
        localObject1 = new JSONObject();
        ((JSONObject)localObject1).put("version", 3);
        ((JSONObject)localObject1).put("routes", localJSONObject);
        ((JSONObject)localObject1).put("channels", getChannelsArrayFromInstallation(localParseInstallation));
        Parse.saveDiskObject(Parse.applicationContext, paramString2, (JSONObject)localObject1);
        if (!paramString1.equals(paramString2)) {
          Parse.deleteDiskObject(Parse.applicationContext, paramString1);
        }
        return (JSONObject)localObject1;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          Parse.logE("com.parse.ParsePushRouter", "Unexpected JSONException when serializing upgraded v1 push state: ", localJSONException);
          Object localObject2 = null;
        }
      }
    }
    return null;
  }
  
  static JSONObject migrateV2toV3(String paramString1, String paramString2)
  {
    int j = 0;
    ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
    JSONObject localJSONObject = Parse.getDiskObject(Parse.applicationContext, paramString1);
    ArrayList localArrayList2 = null;
    Object localObject = localArrayList2;
    if (localJSONObject != null)
    {
      if (localJSONObject.optInt("version") != 2) {
        break label343;
      }
      Parse.logD("com.parse.ParsePushRouter", "Migrating push state from V2 to V3: " + localJSONObject);
      localObject = localJSONObject.optJSONArray("addChannels");
      int i;
      if (localObject != null)
      {
        localArrayList2 = new ArrayList();
        i = 0;
        while (i < ((JSONArray)localObject).length())
        {
          localArrayList2.add(((JSONArray)localObject).optString(i));
          i += 1;
        }
        localParseInstallation.addAllUnique("channels", localArrayList2);
        localParseInstallation.saveEventually();
      }
      localObject = localJSONObject.optJSONArray("removeChannels");
      if (localObject != null)
      {
        localArrayList2 = new ArrayList();
        i = j;
        while (i < ((JSONArray)localObject).length())
        {
          localArrayList2.add(((JSONArray)localObject).optString(i));
          i += 1;
        }
        localParseInstallation.removeAll("channels", localArrayList2);
        localParseInstallation.saveEventually();
      }
      if (localJSONObject.has("installation"))
      {
        localObject = new ParseDecoder();
        localParseInstallation.mergeAfterFetch(localJSONObject.optJSONObject("installation"), (ParseDecoder)localObject, true);
        localParseInstallation.saveEventually();
      }
    }
    try
    {
      localJSONObject.put("version", 3);
      localJSONObject.remove("addChannels");
      localJSONObject.remove("removeChannels");
      localJSONObject.remove("installation");
      localJSONObject.put("channels", getChannelsArrayFromInstallation(localParseInstallation));
      Parse.saveDiskObject(Parse.applicationContext, paramString2, localJSONObject);
      localObject = localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Parse.logE("com.parse.ParsePushRouter", "Unexpected JSONException when serializing upgraded v2 push state: ", localJSONException);
        localArrayList1 = null;
      }
    }
    if (!paramString1.equals(paramString2)) {
      Parse.deleteDiskObject(Parse.applicationContext, paramString1);
    }
    label343:
    do
    {
      return (JSONObject)localObject;
      ArrayList localArrayList1 = localArrayList2;
    } while (localJSONObject.optInt("version") != 3);
    return localJSONObject;
  }
  
  static void noteHandlePushResult(JSONObject paramJSONObject, PushRouter.HandlePushResult paramHandlePushResult)
  {
    try
    {
      PushRouter.PushListener localPushListener = pushListener;
      if (localPushListener != null) {
        getLastTask().a(new PushRouter.14(localPushListener, paramJSONObject, paramHandlePushResult), EXECUTOR);
      }
      return;
    }
    finally {}
  }
  
  public static R<Void> reloadFromDiskAsync(boolean paramBoolean)
  {
    try
    {
      R localR = getLastTask().c(new PushRouter.10(paramBoolean), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(localR);
      return localR;
    }
    finally {}
  }
  
  private static PushRouter reloadInstance(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Parse.deleteDiskObject(Parse.applicationContext, "persistentCallbacks");
      Parse.deleteDiskObject(Parse.applicationContext, "pushState");
    }
    instance = null;
    return getInstance();
  }
  
  private Date serverInstallationUpdatedAt(JSONObject paramJSONObject)
  {
    Object localObject = null;
    String str = paramJSONObject.optString("installation_updated_at", null);
    paramJSONObject = (JSONObject)localObject;
    if (str != null) {
      paramJSONObject = Parse.stringToDate(str);
    }
    return paramJSONObject;
  }
  
  public static R<Void> setForceEnabledAsync(Boolean paramBoolean)
  {
    try
    {
      paramBoolean = getLastTask().c(new PushRouter.3(paramBoolean), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(paramBoolean);
      return paramBoolean;
    }
    finally {}
  }
  
  static void setGlobalPushListener(PushRouter.PushListener paramPushListener)
  {
    try
    {
      pushListener = paramPushListener;
      return;
    }
    finally
    {
      paramPushListener = finally;
      throw paramPushListener;
    }
  }
  
  public static R<Void> subscribeAsync(String paramString, Class<? extends Activity> paramClass, int paramInt)
  {
    if ((paramString != null) && (!PushRoutes.isValidChannelName(paramString))) {
      throw new IllegalArgumentException("Invalid channel name: + " + paramString + " (must be empty " + "string or a letter followed by alphanumerics or hyphen)");
    }
    if (paramClass == null) {
      throw new IllegalArgumentException("Can't subscribe to channel with null activity class.");
    }
    if (paramInt == 0) {
      throw new IllegalArgumentException("Must subscribe to channel with a valid icon identifier.");
    }
    try
    {
      paramString = getLastTask().c(new PushRouter.1(paramString, paramClass, paramInt), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(paramString);
      return paramString;
    }
    finally {}
  }
  
  public static R<Void> unsubscribeAsync(String paramString)
  {
    try
    {
      paramString = getLastTask().c(new PushRouter.2(paramString), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(paramString);
      return paramString;
    }
    finally {}
  }
  
  public static R<Void> wipeRoutingAndUpgradePushStateAsync()
  {
    try
    {
      R localR = getLastTask().c(new PushRouter.11(), EXECUTOR);
      lastTask = makeUnhandledExceptionsFatal(localR);
      return localR;
    }
    finally {}
  }
  
  JSONObject convertGcmIntentToJSONObject(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      str1 = paramIntent.getStringExtra("message_type");
      if (str1 != null) {
        Parse.logI("com.parse.ParsePushRouter", "Ignored special message type " + str1 + " from GCM via intent" + paramIntent);
      }
    }
    else
    {
      return null;
    }
    Object localObject = paramIntent.getStringExtra("data");
    String str1 = paramIntent.getStringExtra("channel");
    String str2 = paramIntent.getStringExtra("installation_updated_at");
    int i = 0;
    if (localObject != null) {}
    for (;;)
    {
      try
      {
        paramIntent = new JSONObject((String)localObject);
        if (i != 0) {
          break;
        }
      }
      catch (JSONException paramIntent)
      {
        try
        {
          localObject = new JSONObject();
          ((JSONObject)localObject).putOpt("data", paramIntent);
          ((JSONObject)localObject).putOpt("channel", str1);
          ((JSONObject)localObject).putOpt("installation_updated_at", str2);
          return (JSONObject)localObject;
        }
        catch (JSONException paramIntent)
        {
          Parse.logE("com.parse.ParsePushRouter", "Ignoring push because of JSON exception while building payload", paramIntent);
          return null;
        }
        paramIntent = paramIntent;
        Parse.logE("com.parse.ParsePushRouter", "Ignoring push because of JSON exception while processing: " + (String)localObject, paramIntent);
        i = 1;
        paramIntent = null;
        continue;
      }
      paramIntent = null;
    }
  }
  
  public JSONObject getPushRequestJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    Object localObject = ParseInstallation.getCurrentInstallation();
    try
    {
      localJSONObject.put("installation_id", ((ParseInstallation)localObject).getInstallationId());
      localJSONObject.put("oauth_key", ParseObject.getApplicationId());
      localJSONObject.put("v", "a1.7.1");
      localObject = history.getLastReceivedTimestamp();
      if (localObject != null) {}
      for (;;)
      {
        localJSONObject.put("last", localObject);
        localObject = history.getPushIds();
        if (((Set)localObject).size() > 0) {
          localJSONObject.put("last_seen", new JSONArray((Collection)localObject));
        }
        localJSONObject.put("ack_keep_alive", true);
        localJSONObject.putOpt("ignore_after", history.getCutoffTimestamp());
        return localJSONObject;
        localObject = JSONObject.NULL;
      }
      return null;
    }
    catch (JSONException localJSONException)
    {
      Parse.logE("com.parse.ParsePushRouter", "Unexpected JSONException serializing push handshake", localJSONException);
    }
  }
  
  public Set<String> getSubscriptions(boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    List localList = ParseInstallation.getCurrentInstallation().getList("channels");
    if (localList != null) {
      localHashSet.addAll(localList);
    }
    localHashSet.addAll(routes.getChannels());
    if (!paramBoolean) {
      localHashSet.remove(null);
    }
    return Collections.unmodifiableSet(localHashSet);
  }
  
  public PushRouter.HandlePushResult handleGcmPush(Intent paramIntent)
  {
    paramIntent = convertGcmIntentToJSONObject(paramIntent);
    if (paramIntent != null) {
      return handlePush(paramIntent);
    }
    return PushRouter.HandlePushResult.INVALID_DATA;
  }
  
  public PushRouter.HandlePushResult handlePpnsPush(JSONObject paramJSONObject)
  {
    PushRouter.HandlePushResult localHandlePushResult2 = PushRouter.HandlePushResult.FAILED_HISTORY_TEST;
    String str1 = paramJSONObject.optString("push_id", null);
    String str2 = paramJSONObject.optString("time", null);
    PushRouter.HandlePushResult localHandlePushResult1 = localHandlePushResult2;
    if (str2 != null)
    {
      localHandlePushResult1 = localHandlePushResult2;
      if (history.tryInsertPush(str1, str2))
      {
        localHandlePushResult1 = handlePush(paramJSONObject);
        saveStateToDisk();
      }
    }
    return localHandlePushResult1;
  }
  
  public PushRouter.HandlePushResult handlePush(JSONObject paramJSONObject)
  {
    if (ManifestInfo.getPushUsesBroadcastReceivers()) {
      handlePushInternal(paramJSONObject);
    }
    for (PushRouter.HandlePushResult localHandlePushResult = PushRouter.HandlePushResult.INVOKED_PARSE_PUSH_BROADCAST_RECEIVER;; localHandlePushResult = handlePushLegacy(paramJSONObject))
    {
      maybeRefreshInstallation(serverInstallationUpdatedAt(paramJSONObject));
      noteHandlePushResult(paramJSONObject, localHandlePushResult);
      return localHandlePushResult;
    }
  }
  
  public boolean saveStateToDisk()
  {
    try
    {
      JSONObject localJSONObject = toJSON();
      Parse.saveDiskObject(Parse.applicationContext, stateLocation, localJSONObject);
      return true;
    }
    catch (JSONException localJSONException)
    {
      Parse.logE("com.parse.ParsePushRouter", "Error serializing push state to json", localJSONException);
    }
    return false;
  }
  
  public void setForceEnabledState(Boolean paramBoolean)
  {
    Boolean localBoolean = forceEnabled;
    if ((localBoolean != null) && (localBoolean == paramBoolean)) {
      return;
    }
    forceEnabled = paramBoolean;
    saveStateToDisk();
  }
  
  public void setPushStateVersion(int paramInt)
  {
    if (paramInt != pushStateVersion)
    {
      pushStateVersion = paramInt;
      saveStateToDisk();
    }
  }
  
  public void subscribe(String paramString, Class<? extends Activity> paramClass, int paramInt)
  {
    ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
    paramClass = new PushRoutes.Route(paramClass.getName(), paramInt);
    PushRoutes.Route localRoute = routes.put(paramString, paramClass);
    if (!paramClass.equals(localRoute)) {
      saveStateToDisk();
    }
    if ((localRoute == null) && (paramString != null)) {
      localParseInstallation.addUnique("channels", paramString);
    }
    localParseInstallation.saveEventually();
  }
  
  public JSONObject toJSON()
  {
    JSONObject localJSONObject;
    if (V2_PUSH_STATE_VERSION.equals(Integer.valueOf(pushStateVersion))) {
      localJSONObject = history.toJSON();
    }
    for (;;)
    {
      localJSONObject.put("version", pushStateVersion);
      localJSONObject.putOpt("forceEnabled", forceEnabled);
      return localJSONObject;
      localJSONObject = merge(new JSONObject[] { routes.toJSON(), history.toJSON() });
      localJSONObject.put("channels", getChannelsArrayFromInstallation(ParseInstallation.getCurrentInstallation()));
    }
  }
  
  public void unsubscribe(String paramString)
  {
    if (routes.remove(paramString) != null)
    {
      saveStateToDisk();
      if (paramString != null)
      {
        ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
        localParseInstallation.removeAll("channels", Arrays.asList(new String[] { paramString }));
        localParseInstallation.saveEventually();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */