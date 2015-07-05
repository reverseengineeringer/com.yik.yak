package com.parse;

import Q;
import R;
import java.util.HashMap;

class ParsePinningEventuallyQueue$5$1
  implements Q<EventuallyPin, R<Void>>
{
  ParsePinningEventuallyQueue$5$1(ParsePinningEventuallyQueue.5 param5) {}
  
  public R<Void> then(R<EventuallyPin> paramR)
  {
    EventuallyPin localEventuallyPin = (EventuallyPin)paramR.e();
    Exception localException = paramR.f();
    if (localException != null)
    {
      if (5 >= Parse.getLogLevel()) {
        Parse.logW("ParsePinningEventuallyQueue", "Unable to save command for later.", localException);
      }
      this$1.this$0.notifyTestHelper(4);
      return R.a(null);
    }
    ParsePinningEventuallyQueue.access$200(this$1.this$0).put(localEventuallyPin.getUUID(), this$1.val$tcs);
    ParsePinningEventuallyQueue.access$300(this$1.this$0).b(new ParsePinningEventuallyQueue.5.1.1(this));
    return paramR.j();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */