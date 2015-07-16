package com.parse;

import M;
import N;

final class ParseUser$10
  implements M<Void, N<Void>>
{
  ParseUser$10(ParseUser paramParseUser) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return val$user.pinInBackground("_currentUser");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */