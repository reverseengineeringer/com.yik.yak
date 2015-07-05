package com.parse;

import Q;
import R;

class ParseUser$4
  implements Q<Void, R<Void>>
{
  ParseUser$4(ParseUser paramParseUser) {}
  
  public R<Void> then(R<Void> arg1)
  {
    synchronized (this$0.mutex)
    {
      this$0.mergeFromObject(ParseUser.getCurrentUser());
      R localR = ParseUser.access$000(this$0);
      return localR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */