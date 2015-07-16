package com.parse;

import M;
import N;

class ParseObject$9
  implements M<Void, N<Void>>
{
  ParseObject$9(ParseObject paramParseObject) {}
  
  public N<Void> then(N<Void> paramN)
  {
    this$0.updateBeforeSave();
    return this$0.saveAsync(paramN);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */