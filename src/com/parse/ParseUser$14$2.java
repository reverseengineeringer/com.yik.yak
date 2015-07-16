package com.parse;

import M;
import N;

class ParseUser$14$2
  implements M<Void, N<Void>>
{
  ParseUser$14$2(ParseUser.14 param14, ParseUser paramParseUser) {}
  
  public N<Void> then(N<Void> arg1)
  {
    synchronized (val$user.mutex)
    {
      ParseUser.access$402(val$user, false);
      ParseUser.access$1000(val$user, this$0.val$authType);
      N localN = ParseUser.access$000(val$user);
      return localN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.14.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */