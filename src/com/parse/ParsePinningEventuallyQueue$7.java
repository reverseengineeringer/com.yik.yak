package com.parse;

import Q;
import R;
import java.util.Iterator;
import java.util.List;

class ParsePinningEventuallyQueue$7
  implements Q<List<EventuallyPin>, R<Void>>
{
  ParsePinningEventuallyQueue$7(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue) {}
  
  public R<Void> then(R<List<EventuallyPin>> paramR)
  {
    Iterator localIterator = ((List)paramR.e()).iterator();
    while (localIterator.hasNext())
    {
      EventuallyPin localEventuallyPin = (EventuallyPin)localIterator.next();
      ParsePinningEventuallyQueue.access$500(this$0, localEventuallyPin);
    }
    return paramR.j();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */