package com.parse;

import M;
import N;
import java.util.List;

class ParsePinningEventuallyQueue$8
  implements M<Void, N<List<EventuallyPin>>>
{
  ParsePinningEventuallyQueue$8(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue) {}
  
  public N<List<EventuallyPin>> then(N<Void> paramN)
  {
    return EventuallyPin.findAllPinned(ParsePinningEventuallyQueue.access$600(this$0));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */