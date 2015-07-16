package com.parse;

import M;
import N;

class ParseObject$14$1
  implements M<Void, N<Void>>
{
  ParseObject$14$1(ParseObject.14 param14) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return Parse.getEventuallyQueue().waitForOperationSetAndEventuallyPin(this$1.val$operationSet, null).j();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.14.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */