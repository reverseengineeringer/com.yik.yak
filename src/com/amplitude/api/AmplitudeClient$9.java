package com.amplitude.api;

import org.json.JSONArray;
import xy;

class AmplitudeClient$9
  implements Runnable
{
  AmplitudeClient$9(AmplitudeClient paramAmplitudeClient, JSONArray paramJSONArray, long paramLong) {}
  
  public void run()
  {
    this$0.makeEventUploadPostRequest(new xy(), val$events.toString(), val$maxId);
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */