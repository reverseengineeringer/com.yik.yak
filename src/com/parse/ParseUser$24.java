package com.parse;

import Q;
import R;
import org.json.JSONObject;

class ParseUser$24
  implements Q<Void, R<Void>>
{
  ParseUser$24(ParseUser paramParseUser, JSONObject paramJSONObject, String paramString) {}
  
  public R<Void> then(R<Void> paramR)
  {
    synchronized (this$0.mutex)
    {
      if ((paramR.d()) || (paramR.c()))
      {
        ParseUser.access$1100(this$0, val$oldAnonymousData);
        return paramR;
      }
      ParseUser.access$1000(this$0, val$authType);
      return paramR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */