package com.parse;

import M;
import N;
import java.util.Set;
import org.json.JSONObject;

class ParseUser$15$1
  implements M<Void, N<ParseUser>>
{
  ParseUser$15$1(ParseUser.15 param15) {}
  
  public N<ParseUser> then(N<Void> paramN)
  {
    synchronized (this$0.val$user.mutex)
    {
      if (paramN.d())
      {
        ParseUser.access$700(this$0.val$user).remove(this$0.val$authType);
        ParseUser.access$800(this$0.val$user).remove(this$0.val$authType);
        ParseUser.access$1100(this$0.val$user, this$0.val$oldAnonymousData);
        paramN = N.a(paramN.f());
        return paramN;
      }
      if (paramN.c())
      {
        paramN = N.h();
        return paramN;
      }
    }
    paramN = N.a(this$0.val$user);
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.15.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */