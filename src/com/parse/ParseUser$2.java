package com.parse;

import M;
import N;

class ParseUser$2
  implements M<T, N<T>>
{
  ParseUser$2(ParseUser paramParseUser) {}
  
  public N<T> then(N<T> paramN)
  {
    synchronized (this$0.mutex)
    {
      this$0.cleanUpAuthData();
      if (this$0.isCurrentUser())
      {
        paramN = ParseUser.access$000(this$0).b(new ParseUser.2.1(this, paramN));
        return paramN;
      }
      return paramN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */