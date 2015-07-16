package com.parse;

import M;
import N;

class ParseUser$4
  implements M<Void, N<Void>>
{
  ParseUser$4(ParseUser paramParseUser) {}
  
  public N<Void> then(N<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      this$0.mergeFromObject(ParseUser.getCurrentUser());
      N localN = ParseUser.access$000(this$0);
      return localN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */