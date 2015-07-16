package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseUser$24
  implements M<Void, N<Void>>
{
  ParseUser$24(ParseUser paramParseUser, JSONObject paramJSONObject, String paramString) {}
  
  public N<Void> then(N<Void> paramN)
  {
    synchronized (this$0.mutex)
    {
      if ((paramN.d()) || (paramN.c()))
      {
        ParseUser.access$1100(this$0, val$oldAnonymousData);
        return paramN;
      }
      ParseUser.access$1000(this$0, val$authType);
      return paramN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */