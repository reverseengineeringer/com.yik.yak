package com.amplitude.api;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

class Amplitude$Lib$8
  implements Runnable
{
  Amplitude$Lib$8(Amplitude.Lib paramLib, JSONObject paramJSONObject1, JSONObject paramJSONObject2) {}
  
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
 * Qualified Name:     com.amplitude.api.Amplitude.Lib.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */