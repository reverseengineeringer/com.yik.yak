package com.parse;

import Q;
import R;

class ParsePinningEventuallyQueue$14$1
  implements Q<Void, R<Void>>
{
  ParsePinningEventuallyQueue$14$1(ParsePinningEventuallyQueue.14 param14) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return EventuallyPin.findAllPinned().d(new ParsePinningEventuallyQueue.14.1.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.14.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */