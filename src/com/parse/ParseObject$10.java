package com.parse;

import L;
import M;
import N;

class ParseObject$10
  implements M<Void, N<Void>>
{
  ParseObject$10(ParseObject paramParseObject, L paramL, String paramString) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return this$0.saveAsync((ParseOperationSet)val$operations.a(), val$sessionToken).b(new ParseObject.10.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */