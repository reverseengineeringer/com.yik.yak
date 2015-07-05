package com.parse;

import Q;
import R;

class ParseUser$2
  implements Q<T, R<T>>
{
  ParseUser$2(ParseUser paramParseUser) {}
  
  public R<T> then(R<T> paramR)
  {
    synchronized (this$0.mutex)
    {
      this$0.cleanUpAuthData();
      if (this$0.isCurrentUser())
      {
        paramR = ParseUser.access$000(this$0).b(new ParseUser.2.1(this, paramR));
        return paramR;
      }
      return paramR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */