package com.parse;

import M;
import N;
import Z;
import java.util.HashMap;

class ParsePinningEventuallyQueue$12
  implements M<Object, N<Object>>
{
  ParsePinningEventuallyQueue$12(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, String paramString, Z paramZ) {}
  
  public N<Object> then(N<Object> paramN)
  {
    for (;;)
    {
      synchronized (ParsePinningEventuallyQueue.access$900(this$0))
      {
        ParsePinningEventuallyQueue.access$1000(this$0).remove(val$uuid);
        ParsePinningEventuallyQueue.access$1100(this$0).remove(val$uuid);
        ParsePinningEventuallyQueue.access$1200(this$0).remove(val$uuid);
        ??? = paramN.f();
        if (??? != null)
        {
          val$tcs.a((Exception)???);
          return val$tcs.a();
        }
      }
      if (paramN.c()) {
        val$tcs.b();
      } else {
        val$tcs.a(paramN.e());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */