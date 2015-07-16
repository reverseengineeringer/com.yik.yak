package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseUser$13
  implements M<Void, N<Void>>
{
  ParseUser$13(ParseUser paramParseUser, String paramString) {}
  
  public N<Void> then(N<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      if (ParseUser.access$700(this$0).has(val$authType))
      {
        ParseUser.access$700(this$0).put(val$authType, JSONObject.NULL);
        ParseUser.access$402(this$0, true);
        localN = this$0.saveInBackground();
        return localN;
      }
      N localN = N.a(null);
      return localN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */