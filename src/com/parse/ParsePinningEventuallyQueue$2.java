package com.parse;

import Q;
import R;
import ad;

class ParsePinningEventuallyQueue$2
  implements Q<Void, R<Void>>
{
  ParsePinningEventuallyQueue$2(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, ad paramad) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return this$0.pendingCountAsync(paramR).b(new ParsePinningEventuallyQueue.2.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */