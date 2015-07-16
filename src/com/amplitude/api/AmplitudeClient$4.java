package com.amplitude.api;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import org.json.JSONException;
import org.json.JSONObject;

class AmplitudeClient$4
  implements Runnable
{
  AmplitudeClient$4(AmplitudeClient paramAmplitudeClient, long paramLong) {}
  
  public void run()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("special", "session_end");
      if (AmplitudeClient.access$1600(this$0))
      {
        long l = this$0.logEvent("session_end", null, localJSONObject, val$timestamp, false);
        this$0.context.getSharedPreferences(this$0.getSharedPreferencesName(), 0).edit().putLong("com.amplitude.api.previousEndSessionId", l).putLong("com.amplitude.api.previousEndSessionTime", val$timestamp).commit();
      }
      AmplitudeClient.access$1700(this$0);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */