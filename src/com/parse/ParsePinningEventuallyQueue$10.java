package com.parse;

import Q;
import R;

class ParsePinningEventuallyQueue$10
  implements Q<Void, R<Void>>
{
  ParsePinningEventuallyQueue$10(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, EventuallyPin paramEventuallyPin) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return this$0.waitForOperationSetAndEventuallyPin(null, val$eventuallyPin).b(new ParsePinningEventuallyQueue.10.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */