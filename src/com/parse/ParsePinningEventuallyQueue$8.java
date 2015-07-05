package com.parse;

import Q;
import R;
import java.util.List;

class ParsePinningEventuallyQueue$8
  implements Q<Void, R<List<EventuallyPin>>>
{
  ParsePinningEventuallyQueue$8(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue) {}
  
  public R<List<EventuallyPin>> then(R<Void> paramR)
  {
    return EventuallyPin.findAllPinned(ParsePinningEventuallyQueue.access$600(this$0));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */