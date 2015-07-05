package com.parse;

import Q;
import R;
import ad;

class ParsePinningEventuallyQueue$5
  implements Q<Void, R<Void>>
{
  ParsePinningEventuallyQueue$5(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, ParseObject paramParseObject, ParseCommand paramParseCommand, ad paramad) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return EventuallyPin.pinEventuallyCommand(val$object, val$command).b(new ParsePinningEventuallyQueue.5.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */