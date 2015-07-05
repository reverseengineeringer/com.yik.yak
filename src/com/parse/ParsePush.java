package com.parse;

import R;
import com.parse.gdata.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParsePush
{
  private static final String TAG = "com.parse.ParsePush";
  static final String V2_PUSH_NOT_CONFIGURED = "In order to use the ParsePush.subscribe or ParsePush.unsubscribe methods you must add the following to your AndroidManifest.xml: \n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\"\n  android:exported=\"false\">\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>\n(Replace \"com.parse.ParsePushBroadcastReceiver\" with your own implementation if you choose to extend ParsePushBroadcastReceiver)";
  private Set<String> channelSet = null;
  private JSONObject data;
  private Long expirationTime = null;
  private Long expirationTimeInterval = null;
  private Boolean pushToAndroid = null;
  private Boolean pushToIOS = null;
  private ParseQuery<ParseInstallation> query = null;
  
  private static void checkForManifestAndThrowExceptionIfNeeded()
  {
    if (!ManifestInfo.getPushUsesBroadcastReceivers()) {
      throw new IllegalStateException("In order to use the ParsePush.subscribe or ParsePush.unsubscribe methods you must add the following to your AndroidManifest.xml: \n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\"\n  android:exported=\"false\">\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>\n(Replace \"com.parse.ParsePushBroadcastReceiver\" with your own implementation if you choose to extend ParsePushBroadcastReceiver)");
    }
  }
  
  public static R<Void> sendDataInBackground(JSONObject paramJSONObject, ParseQuery<ParseInstallation> paramParseQuery)
  {
    ParsePush localParsePush = new ParsePush();
    localParsePush.setQuery(paramParseQuery);
    localParsePush.setData(paramJSONObject);
    return localParsePush.sendInBackground();
  }
  
  public static void sendDataInBackground(JSONObject paramJSONObject, ParseQuery<ParseInstallation> paramParseQuery, SendCallback paramSendCallback)
  {
    Parse.callbackOnMainThreadAsync(sendDataInBackground(paramJSONObject, paramParseQuery), paramSendCallback);
  }
  
  public static R<Void> sendMessageInBackground(String paramString, ParseQuery<ParseInstallation> paramParseQuery)
  {
    ParsePush localParsePush = new ParsePush();
    localParsePush.setQuery(paramParseQuery);
    localParsePush.setMessage(paramString);
    return localParsePush.sendInBackground();
  }
  
  public static void sendMessageInBackground(String paramString, ParseQuery<ParseInstallation> paramParseQuery, SendCallback paramSendCallback)
  {
    Parse.callbackOnMainThreadAsync(sendMessageInBackground(paramString, paramParseQuery), paramSendCallback);
  }
  
  static void setEnabled(boolean paramBoolean)
  {
    checkForManifestAndThrowExceptionIfNeeded();
    PushRouter.setForceEnabledAsync(Boolean.valueOf(paramBoolean)).c(new ParsePush.1(paramBoolean));
  }
  
  public static R<Void> subscribeInBackground(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Can't subscribe to null channel.");
    }
    checkForManifestAndThrowExceptionIfNeeded();
    ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
    List localList = localParseInstallation.getList("channels");
    if ((localList == null) || (!localList.contains(paramString)))
    {
      localParseInstallation.addUnique("channels", paramString);
      return localParseInstallation.saveInBackground();
    }
    return R.a(null);
  }
  
  public static void subscribeInBackground(String paramString, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(subscribeInBackground(paramString), paramSaveCallback);
  }
  
  public static R<Void> unsubscribeInBackground(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Can't unsubscribe from null channel.");
    }
    checkForManifestAndThrowExceptionIfNeeded();
    ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
    List localList = localParseInstallation.getList("channels");
    if ((localList != null) && (localList.contains(paramString)))
    {
      localParseInstallation.removeAll("channels", Arrays.asList(new String[] { paramString }));
      return localParseInstallation.saveInBackground();
    }
    return R.a(null);
  }
  
  public static void unsubscribeInBackground(String paramString, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(unsubscribeInBackground(paramString), paramSaveCallback);
  }
  
  ParseCommand buildCommand(String paramString)
  {
    int j = 1;
    paramString = new ParseCommand("client_push", paramString);
    if (data == null) {
      throw new IllegalArgumentException("Cannot send a push without calling either setMessage or setData");
    }
    paramString.put("data", data);
    label89:
    int i;
    if (query != null)
    {
      paramString.put("where", (JSONObject)Parse.encode(query.getConstraints(), PointerEncodingStrategy.get()));
      if (expirationTime == null) {
        break label194;
      }
      paramString.put("expiration_time", expirationTime.longValue());
      if ((query == null) && ((pushToAndroid != null) || (pushToIOS != null)))
      {
        if ((pushToAndroid != null) && (!pushToAndroid.booleanValue())) {
          break label217;
        }
        i = 1;
        label129:
        if ((pushToIOS == null) || (!pushToIOS.booleanValue())) {
          break label222;
        }
      }
    }
    for (;;)
    {
      if ((j == 0) || (i == 0)) {
        break label227;
      }
      return paramString;
      if (channelSet == null)
      {
        paramString.put("channel", "");
        break;
      }
      paramString.put("channels", new JSONArray(channelSet));
      break;
      label194:
      if (expirationTimeInterval == null) {
        break label89;
      }
      paramString.put("expiration_time_interval", expirationTimeInterval.longValue());
      break label89;
      label217:
      i = 0;
      break label129;
      label222:
      j = 0;
    }
    label227:
    if (j != 0)
    {
      paramString.put("type", "ios");
      return paramString;
    }
    if (i != 0)
    {
      paramString.put("type", "android");
      return paramString;
    }
    throw new IllegalArgumentException("Cannot push if both pushToIOS and pushToAndroid are false");
  }
  
  public void clearExpiration()
  {
    expirationTime = null;
    expirationTimeInterval = null;
  }
  
  public void send()
  {
    Parse.waitForTask(sendInBackground());
  }
  
  public R<Void> sendInBackground()
  {
    return buildCommand(ParseUser.getCurrentSessionToken()).executeAsync().a(new ParsePush.2(this));
  }
  
  public void sendInBackground(SendCallback paramSendCallback)
  {
    Parse.callbackOnMainThreadAsync(sendInBackground(), paramSendCallback);
  }
  
  public void setChannel(String paramString)
  {
    if (paramString != null) {}
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool, "channel cannot be null");
      channelSet = new HashSet();
      channelSet.add(paramString);
      query = null;
      return;
    }
  }
  
  public void setChannels(Collection<String> paramCollection)
  {
    if (paramCollection != null)
    {
      bool = true;
      Preconditions.checkArgument(bool, "channels collection cannot be null");
      Iterator localIterator = paramCollection.iterator();
      label20:
      if (!localIterator.hasNext()) {
        break label63;
      }
      if ((String)localIterator.next() == null) {
        break label58;
      }
    }
    label58:
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool, "channel cannot be null");
      break label20;
      bool = false;
      break;
    }
    label63:
    channelSet = new HashSet();
    channelSet.addAll(paramCollection);
    query = null;
  }
  
  public void setData(JSONObject paramJSONObject)
  {
    data = paramJSONObject;
  }
  
  public void setExpirationTime(long paramLong)
  {
    expirationTime = Long.valueOf(paramLong);
    expirationTimeInterval = null;
  }
  
  public void setExpirationTimeInterval(long paramLong)
  {
    expirationTime = null;
    expirationTimeInterval = Long.valueOf(paramLong);
  }
  
  public void setMessage(String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("alert", paramString);
      setData(localJSONObject);
      return;
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        Parse.logE("com.parse.ParsePush", "JSONException in setMessage", paramString);
      }
    }
  }
  
  @Deprecated
  public void setPushToAndroid(boolean paramBoolean)
  {
    if (query == null) {}
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query");
      pushToAndroid = Boolean.valueOf(paramBoolean);
      return;
    }
  }
  
  @Deprecated
  public void setPushToIOS(boolean paramBoolean)
  {
    if (query == null) {}
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query");
      pushToIOS = Boolean.valueOf(paramBoolean);
      return;
    }
  }
  
  public void setQuery(ParseQuery<ParseInstallation> paramParseQuery)
  {
    boolean bool2 = true;
    if (paramParseQuery != null)
    {
      bool1 = true;
      Preconditions.checkArgument(bool1, "Cannot target a null query");
      if ((pushToIOS != null) || (pushToAndroid != null)) {
        break label72;
      }
    }
    label72:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      Preconditions.checkArgument(bool1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query");
      Preconditions.checkArgument(paramParseQuery.getClassName().equals(ParseObject.getClassName(ParseInstallation.class)), "Can only push to a query for Installations");
      channelSet = null;
      query = paramParseQuery;
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePush
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */