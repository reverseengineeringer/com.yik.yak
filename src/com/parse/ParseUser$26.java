package com.parse;

import java.util.Set;
import java.util.concurrent.Callable;
import org.json.JSONObject;

class ParseUser$26
  implements Callable<Void>
{
  ParseUser$26(ParseUser paramParseUser, String paramString, JSONObject paramJSONObject) {}
  
  public Void call()
  {
    synchronized (this$0.mutex)
    {
      ParseUser.access$700(this$0).put(val$authType, val$authData);
      ParseUser.access$800(this$0).add(val$authType);
      ParseUser.access$1200(this$0);
      ParseUser.access$402(this$0, true);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */