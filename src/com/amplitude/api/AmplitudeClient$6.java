package com.amplitude.api;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

class AmplitudeClient$6
  implements Runnable
{
  AmplitudeClient$6(AmplitudeClient paramAmplitudeClient, JSONObject paramJSONObject1, JSONObject paramJSONObject2) {}
  
  public void run()
  {
    Iterator localIterator = val$userProperties.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        val$currentUserProperties.put(str, val$userProperties.get(str));
      }
      catch (JSONException localJSONException)
      {
        localJSONException.toString();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.AmplitudeClient.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */