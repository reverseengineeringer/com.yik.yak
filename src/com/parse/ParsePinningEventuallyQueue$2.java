package com.parse;

import M;
import N;
import Z;

class ParsePinningEventuallyQueue$2
  implements M<Void, N<Void>>
{
  ParsePinningEventuallyQueue$2(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, Z paramZ) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return this$0.pendingCountAsync(paramN).b(new ParsePinningEventuallyQueue.2.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */