package com.parse;

import M;
import N;

class ParsePinningEventuallyQueue$13$1
  implements M<Object, N<Object>>
{
  ParsePinningEventuallyQueue$13$1(ParsePinningEventuallyQueue.13 param13, int paramInt, ParseObject paramParseObject) {}
  
  public N<Object> then(N<Object> paramN)
  {
    Exception localException = paramN.f();
    if ((localException != null) && ((localException instanceof ParseException)) && (((ParseException)localException).getCode() == 100))
    {
      this$1.this$0.setConnected(false);
      this$1.this$0.notifyTestHelper(7);
      return ParsePinningEventuallyQueue.access$1300(this$1.this$0, this$1.val$eventuallyPin, this$1.val$operationSet);
    }
    return this$1.val$eventuallyPin.unpinInBackground("_eventuallyPin").b(new ParsePinningEventuallyQueue.13.1.2(this, paramN)).b(new ParsePinningEventuallyQueue.13.1.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.13.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */