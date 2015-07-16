package com.parse;

import N;
import android.content.Intent;
import android.os.Bundle;
import java.util.Date;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseAnalytics
{
  private static final String APP_OPENED = "AppOpened";
  private static final String OP = "client_events";
  private static final String TAG = "com.parse.ParseAnalytics";
  static Map<String, Boolean> lruSeenPushes = new ParseAnalytics.1();
  
  private static ParseCommand createCommand(String paramString)
  {
    ParseCommand localParseCommand = new ParseCommand("client_events", ParseUser.getCurrentSessionToken());
    localParseCommand.put("at", Parse.encodeDate(new Date()));
    localParseCommand.put("name", paramString);
    return localParseCommand;
  }
  
  @Deprecated
  public static void trackAppOpened(Intent paramIntent)
  {
    trackAppOpenedInBackground(paramIntent);
  }
  
  public static N<Void> trackAppOpenedInBackground(Intent arg0)
  {
    if ((??? != null) && (???.getExtras() != null)) {}
    for (??? = ???.getExtras().getString("com.parse.Data");; ??? = null)
    {
      ParseCommand localParseCommand = createCommand("AppOpened");
      if (??? != null) {}
      try
      {
        localObject1 = new JSONObject(???).optString("push_hash");
        if (((String)localObject1).length() <= 0) {}
      }
      catch (JSONException ???)
      {
        for (;;)
        {
          Object localObject1;
          Parse.logE("com.parse.ParseAnalytics", "Failed to parse push data: " + ???.getMessage());
        }
      }
      synchronized (lruSeenPushes)
      {
        if (lruSeenPushes.containsKey(localObject1))
        {
          localObject1 = N.a(null);
          return (N<Void>)localObject1;
        }
        lruSeenPushes.put(localObject1, Boolean.valueOf(true));
        localParseCommand.put("push_hash", (String)localObject1);
        return Parse.getEventuallyQueue().enqueueEventuallyAsync(localParseCommand, null).j();
      }
    }
  }
  
  public static void trackAppOpenedInBackground(Intent paramIntent, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(trackAppOpenedInBackground(paramIntent), paramSaveCallback);
  }
  
  @Deprecated
  public static void trackEvent(String paramString)
  {
    trackEventInBackground(paramString);
  }
  
  @Deprecated
  public static void trackEvent(String paramString, Map<String, String> paramMap)
  {
    trackEventInBackground(paramString, paramMap);
  }
  
  public static N<Void> trackEventInBackground(String paramString)
  {
    return trackEventInBackground(paramString, (Map)null);
  }
  
  public static N<Void> trackEventInBackground(String paramString, Map<String, String> paramMap)
  {
    if ((paramString == null) || (paramString.trim().length() == 0)) {
      throw new RuntimeException("A name for the custom event must be provided.");
    }
    paramString = createCommand(paramString);
    if (paramMap != null) {
      paramString.put("dimensions", (JSONObject)Parse.encode(paramMap, NoObjectsEncodingStrategy.get()));
    }
    return Parse.getEventuallyQueue().enqueueEventuallyAsync(paramString, null).j();
  }
  
  public static void trackEventInBackground(String paramString, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(trackEventInBackground(paramString), paramSaveCallback);
  }
  
  public static void trackEventInBackground(String paramString, Map<String, String> paramMap, SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(trackEventInBackground(paramString, paramMap), paramSaveCallback);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseAnalytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */