package com.parse;

import Q;
import R;

final class ParseUser$10
  implements Q<Void, R<Void>>
{
  ParseUser$10(ParseUser paramParseUser) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return val$user.pinInBackground("_currentUser");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */