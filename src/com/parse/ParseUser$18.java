package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseUser$18
  implements M<JSONObject, N<Void>>
{
  ParseUser$18(ParseUser paramParseUser) {}
  
  public N<Void> then(N<JSONObject> arg1)
  {
    Object localObject1 = (JSONObject)???.e();
    synchronized (this$0.mutex)
    {
      ParseUser.access$402(this$0, false);
      if (((JSONObject)localObject1).optBoolean("is_new"))
      {
        ParseUser.access$1402(this$0, false);
        localObject1 = N.a(null);
        return (N<Void>)localObject1;
      }
      localObject1 = ParseUser.access$000((ParseUser)ParseObject.fromJSON((JSONObject)localObject1, "_User", true));
      return (N<Void>)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */