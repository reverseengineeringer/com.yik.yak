package com.parse;

import M;
import N;

class ParseObject$15
  implements M<Void, N<Void>>
{
  ParseObject$15(ParseObject paramParseObject) {}
  
  public N<Void> then(N<Void> paramN)
  {
    Parse.getEventuallyQueue().notifyTestHelper(5);
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */