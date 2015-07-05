package com.parse;

import Q;
import R;

class ParseUser$14$2
  implements Q<Void, R<Void>>
{
  ParseUser$14$2(ParseUser.14 param14, ParseUser paramParseUser) {}
  
  public R<Void> then(R<Void> arg1)
  {
    synchronized (val$user.mutex)
    {
      ParseUser.access$402(val$user, false);
      ParseUser.access$1000(val$user, this$0.val$authType);
      R localR = ParseUser.access$000(val$user);
      return localR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.14.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */