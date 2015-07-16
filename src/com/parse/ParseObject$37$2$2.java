package com.parse;

import M;
import N;

class ParseObject$37$2$2
  implements M<Void, N<Void>>
{
  ParseObject$37$2$2(ParseObject.37.2 param2) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return ParseUser.getCurrentUser().saveInBackground();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */