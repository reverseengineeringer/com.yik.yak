package com.parse;

import M;
import N;

class ParseObject$31
  implements M<Void, N<Void>>
{
  ParseObject$31(ParseObject paramParseObject) {}
  
  public N<Void> then(N<Void> paramN)
  {
    synchronized (this$0.mutex)
    {
      this$0.validateDelete();
      if (ParseObject.access$000(this$0) == null) {
        return null;
      }
      return paramN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.31
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */