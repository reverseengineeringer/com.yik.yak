package com.parse;

import M;
import N;
import java.util.Iterator;
import java.util.List;

class ParsePinningEventuallyQueue$7
  implements M<List<EventuallyPin>, N<Void>>
{
  ParsePinningEventuallyQueue$7(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue) {}
  
  public N<Void> then(N<List<EventuallyPin>> paramN)
  {
    Iterator localIterator = ((List)paramN.e()).iterator();
    while (localIterator.hasNext())
    {
      EventuallyPin localEventuallyPin = (EventuallyPin)localIterator.next();
      ParsePinningEventuallyQueue.access$500(this$0, localEventuallyPin);
    }
    return paramN.j();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */