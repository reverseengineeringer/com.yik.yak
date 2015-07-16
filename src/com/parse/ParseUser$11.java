package com.parse;

import M;
import N;

final class ParseUser$11
  implements M<Void, N<Void>>
{
  ParseUser$11(ParseUser paramParseUser) {}
  
  public N<Void> then(N<Void> paramN)
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