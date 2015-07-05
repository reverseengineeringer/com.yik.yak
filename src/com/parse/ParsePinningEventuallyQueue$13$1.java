package com.parse;

import Q;
import R;

class ParsePinningEventuallyQueue$13$1
  implements Q<Object, R<Object>>
{
  ParsePinningEventuallyQueue$13$1(ParsePinningEventuallyQueue.13 param13, int paramInt, ParseObject paramParseObject) {}
  
  public R<Object> then(R<Object> paramR)
  {
    Exception localException = paramR.f();
    if ((localException != null) && ((localException instanceof ParseException)) && (((ParseException)localException).getCode() == 100))
    {
      this$1.this$0.setConnected(false);
      this$1.this$0.notifyTestHelper(7);
      return ParsePinningEventuallyQueue.access$1300(this$1.this$0, this$1.val$eventuallyPin, this$1.val$operationSet);
    }
    return this$1.val$eventuallyPin.unpinInBackground("_eventuallyPin").b(new ParsePinningEventuallyQueue.13.1.2(this, paramR)).b(new ParsePinningEventuallyQueue.13.1.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.13.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */