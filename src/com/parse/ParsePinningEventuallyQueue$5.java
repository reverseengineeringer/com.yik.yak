package com.parse;

import M;
import N;
import Z;

class ParsePinningEventuallyQueue$5
  implements M<Void, N<Void>>
{
  ParsePinningEventuallyQueue$5(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, ParseObject paramParseObject, ParseCommand paramParseCommand, Z paramZ) {}
  
  public N<Void> then(N<Void> paramN)
  {
    return EventuallyPin.pinEventuallyCommand(val$object, val$command).b(new ParsePinningEventuallyQueue.5.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */