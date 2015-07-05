package com.parse;

import Q;
import R;
import java.util.Set;
import org.json.JSONObject;

class ParseUser$15$1
  implements Q<Void, R<ParseUser>>
{
  ParseUser$15$1(ParseUser.15 param15) {}
  
  public R<ParseUser> then(R<Void> paramR)
  {
    synchronized (this$0.val$user.mutex)
    {
      if (paramR.d())
      {
        ParseUser.access$700(this$0.val$user).remove(this$0.val$authType);
        ParseUser.access$800(this$0.val$user).remove(this$0.val$authType);
        ParseUser.access$1100(this$0.val$user, this$0.val$oldAnonymousData);
        paramR = R.a(paramR.f());
        return paramR;
      }
      if (paramR.c())
      {
        paramR = R.h();
        return paramR;
      }
    }
    paramR = R.a(this$0.val$user);
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.15.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */