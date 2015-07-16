package com.parse;

import M;
import N;
import java.util.Set;
import org.json.JSONObject;

class ParseUser$15$2
  implements M<Void, N<Void>>
{
  ParseUser$15$2(ParseUser.15 param15) {}
  
  public N<Void> then(N<Void> paramN)
  {
    synchronized (this$0.val$user.mutex)
    {
      ParseUser.access$1200(this$0.val$user);
      ParseUser.access$700(this$0.val$user).put(this$0.val$authType, this$0.val$authData);
      ParseUser.access$800(this$0.val$user).add(this$0.val$authType);
      paramN = ParseUser.access$1300(this$0.val$user, paramN);
      return paramN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.15.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */