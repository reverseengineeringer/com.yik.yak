package com.amplitude.api;

import org.json.JSONObject;

class AmplitudeClient$2
  implements Runnable
{
  AmplitudeClient$2(AmplitudeClient paramAmplitudeClient, String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, long paramLong, boolean paramBoolean) {}
  
  public void run()
  {
    this$0.logEvent(val$eventType, val$copyEventProperties, val$apiProperties, val$timestamp, val$checkSession);
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */