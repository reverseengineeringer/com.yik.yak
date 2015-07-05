package com.parse;

import Q;
import R;

class ParsePinningEventuallyQueue$3
  implements Q<Void, R<Integer>>
{
  ParsePinningEventuallyQueue$3(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue) {}
  
  public R<Integer> then(R<Void> paramR)
  {
    return EventuallyPin.findAllPinned().b(new ParsePinningEventuallyQueue.3.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */