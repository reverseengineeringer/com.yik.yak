package com.parse;

import M;
import N;

class ParsePinningEventuallyQueue$3
  implements M<Void, N<Integer>>
{
  ParsePinningEventuallyQueue$3(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue) {}
  
  public N<Integer> then(N<Void> paramN)
  {
    return EventuallyPin.findAllPinned().b(new ParsePinningEventuallyQueue.3.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */