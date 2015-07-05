package com.parse;

import Q;
import R;
import java.util.Set;
import org.json.JSONObject;

class ParseUser$15$2
  implements Q<Void, R<Void>>
{
  ParseUser$15$2(ParseUser.15 param15) {}
  
  public R<Void> then(R<Void> paramR)
  {
    synchronized (this$0.val$user.mutex)
    {
      ParseUser.access$1200(this$0.val$user);
      ParseUser.access$700(this$0.val$user).put(this$0.val$authType, this$0.val$authData);
      ParseUser.access$800(this$0.val$user).add(this$0.val$authType);
      paramR = ParseUser.access$1300(this$0.val$user, paramR);
      return paramR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.15.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */