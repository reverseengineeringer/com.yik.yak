package com.parse;

import M;
import N;

class ParsePinningEventuallyQueue$10
  implements M<Void, N<Void>>
{
  ParsePinningEventuallyQueue$10(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, EventuallyPin paramEventuallyPin) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return this$0.waitForOperationSetAndEventuallyPin(null, val$eventuallyPin).b(new ParsePinningEventuallyQueue.10.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */