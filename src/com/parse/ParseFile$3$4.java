package com.parse;

import M;
import N;

class ParseFile$3$4
  implements M<ParseCommand, N<Object>>
{
  ParseFile$3$4(ParseFile.3 param3) {}
  
  public N<Object> then(N<ParseCommand> paramN)
  {
    return ((ParseCommand)paramN.e()).executeAsync();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.3.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */