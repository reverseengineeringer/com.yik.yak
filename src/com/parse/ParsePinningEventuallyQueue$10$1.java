package com.parse;

import M;
import N;
import Z;
import java.util.HashMap;

class ParsePinningEventuallyQueue$10$1
  implements M<Object, N<Void>>
{
  ParsePinningEventuallyQueue$10$1(ParsePinningEventuallyQueue.10 param10) {}
  
  public N<Void> then(N<Object> paramN)
  {
    Exception localException = paramN.f();
    Z localZ;
    if (localException != null)
    {
      if ((localException instanceof ParsePinningEventuallyQueue.PauseException)) {
        return paramN.j();
      }
      if (6 >= Parse.getLogLevel()) {
        Parse.logE("ParsePinningEventuallyQueue", "Failed to run command.", localException);
      }
      this$1.this$0.notifyTestHelper(2);
      localZ = (Z)ParsePinningEventuallyQueue.access$200(this$1.this$0).remove(this$1.val$eventuallyPin.getUUID());
      if (localZ != null)
      {
        if (localException == null) {
          break label107;
        }
        localZ.b(localException);
      }
    }
    for (;;)
    {
      return paramN.j();
      this$1.this$0.notifyTestHelper(1);
      break;
      label107:
      localZ.b(paramN.e());
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.10.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */