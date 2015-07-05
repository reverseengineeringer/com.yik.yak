package com.parse;

import Q;
import R;

class ParsePinningEventuallyQueue$13
  implements Q<Void, R<Object>>
{
  ParsePinningEventuallyQueue$13(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, EventuallyPin paramEventuallyPin, ParseOperationSet paramParseOperationSet) {}
  
  public R<Object> then(R<Void> paramR)
  {
    int i = val$eventuallyPin.getType();
    ParseObject localParseObject = val$eventuallyPin.getObject();
    paramR = val$eventuallyPin.getSessionToken();
    if (i == 1) {
      paramR = localParseObject.saveAsync(val$operationSet, paramR);
    }
    for (;;)
    {
      return paramR.b(new ParsePinningEventuallyQueue.13.1(this, i, localParseObject));
      if (i == 2) {
        paramR = localParseObject.deleteAsync(paramR);
      } else {
        paramR = val$eventuallyPin.getCommand().executeAsync();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */