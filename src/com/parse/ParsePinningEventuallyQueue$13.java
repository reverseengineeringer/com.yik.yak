package com.parse;

import M;
import N;

class ParsePinningEventuallyQueue$13
  implements M<Void, N<Object>>
{
  ParsePinningEventuallyQueue$13(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, EventuallyPin paramEventuallyPin, ParseOperationSet paramParseOperationSet) {}
  
  public N<Object> then(N<Void> paramN)
  {
    int i = val$eventuallyPin.getType();
    ParseObject localParseObject = val$eventuallyPin.getObject();
    paramN = val$eventuallyPin.getSessionToken();
    if (i == 1) {
      paramN = localParseObject.saveAsync(val$operationSet, paramN);
    }
    for (;;)
    {
      return paramN.b(new ParsePinningEventuallyQueue.13.1(this, i, localParseObject));
      if (i == 2) {
        paramN = localParseObject.deleteAsync(paramN);
      } else {
        paramN = val$eventuallyPin.getCommand().executeAsync();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */