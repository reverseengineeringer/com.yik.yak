package com.parse;

import M;
import N;

class ParseUser$1
  implements M<Void, N<Void>>
{
  ParseUser$1(ParseUser paramParseUser) {}
  
  public N<Void> then(N<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      this$0.cleanUpAuthData();
      if (this$0.isCurrentUser())
      {
        localN = ParseUser.access$000(this$0);
        return localN;
      }
      N localN = N.a(null);
      return localN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */