package com.parse;

import Q;
import R;
import ad;
import java.util.HashMap;

class ParsePinningEventuallyQueue$10$1
  implements Q<Object, R<Void>>
{
  ParsePinningEventuallyQueue$10$1(ParsePinningEventuallyQueue.10 param10) {}
  
  public R<Void> then(R<Object> paramR)
  {
    Exception localException = paramR.f();
    ad localad;
    if (localException != null)
    {
      if ((localException instanceof ParsePinningEventuallyQueue.PauseException)) {
        return paramR.j();
      }
      if (6 >= Parse.getLogLevel()) {
        Parse.logE("ParsePinningEventuallyQueue", "Failed to run command.", localException);
      }
      this$1.this$0.notifyTestHelper(2);
      localad = (ad)ParsePinningEventuallyQueue.access$200(this$1.this$0).remove(this$1.val$eventuallyPin.getUUID());
      if (localad != null)
      {
        if (localException == null) {
          break label107;
        }
        localad.b(localException);
      }
    }
    for (;;)
    {
      return paramR.j();
      this$1.this$0.notifyTestHelper(1);
      break;
      label107:
      localad.b(paramR.e());
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.10.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */