package com.parse;

import Q;
import R;

class ParseUser$1
  implements Q<Void, R<Void>>
{
  ParseUser$1(ParseUser paramParseUser) {}
  
  public R<Void> then(R<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      this$0.cleanUpAuthData();
      if (this$0.isCurrentUser())
      {
        localR = ParseUser.access$000(this$0);
        return localR;
      }
      R localR = R.a(null);
      return localR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */