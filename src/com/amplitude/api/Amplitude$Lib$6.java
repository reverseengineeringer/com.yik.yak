package com.amplitude.api;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import org.json.JSONException;
import org.json.JSONObject;

class Amplitude$Lib$6
  implements Runnable
{
  Amplitude$Lib$6(Amplitude.Lib paramLib, long paramLong) {}
  
  public void run()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("special", "session_end");
      if (Amplitude.Lib.access$2300(this$0))
      {
        long l = Amplitude.Lib.access$1300(this$0, "session_end", null, localJSONObject, val$timestamp, false);
        Amplitude.Lib.access$1900(this$0).getSharedPreferences(Amplitude.Lib.access$2400(this$0), 0).edit().putLong(Constants.PREFKEY_PREVIOUS_END_SESSION_ID, l).putLong(Constants.PREFKEY_PREVIOUS_END_SESSION_TIME, val$timestamp).commit();
      }
      Amplitude.Lib.access$2500(this$0);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.Amplitude.Lib.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */