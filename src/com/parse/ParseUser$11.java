package com.parse;

import Q;
import R;

final class ParseUser$11
  implements Q<Void, R<Void>>
{
  ParseUser$11(ParseUser paramParseUser) {}
  
  public R<Void> then(R<Void> paramR)
  {
    val$user.saveToDisk(Parse.applicationContext, "currentUser");
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */