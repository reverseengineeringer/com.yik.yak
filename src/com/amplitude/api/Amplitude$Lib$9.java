package com.amplitude.api;

import org.json.JSONArray;

class Amplitude$Lib$9
  implements Runnable
{
  Amplitude$Lib$9(Amplitude.Lib paramLib, JSONArray paramJSONArray, long paramLong) {}
  
  public void run()
  {
    Amplitude.Lib.access$2700(this$0, "https://api.amplitude.com/", val$events.toString(), val$maxId);
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.Amplitude.Lib.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */