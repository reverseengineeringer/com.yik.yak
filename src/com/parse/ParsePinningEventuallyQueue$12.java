package com.parse;

import Q;
import R;
import ad;
import java.util.HashMap;

class ParsePinningEventuallyQueue$12
  implements Q<Object, R<Object>>
{
  ParsePinningEventuallyQueue$12(ParsePinningEventuallyQueue paramParsePinningEventuallyQueue, String paramString, ad paramad) {}
  
  public R<Object> then(R<Object> paramR)
  {
    for (;;)
    {
      synchronized (ParsePinningEventuallyQueue.access$900(this$0))
      {
        ParsePinningEventuallyQueue.access$1000(this$0).remove(val$uuid);
        ParsePinningEventuallyQueue.access$1100(this$0).remove(val$uuid);
        ParsePinningEventuallyQueue.access$1200(this$0).remove(val$uuid);
        ??? = paramR.f();
        if (??? != null)
        {
          val$tcs.a((Exception)???);
          return val$tcs.a();
        }
      }
      if (paramR.c()) {
        val$tcs.b();
      } else {
        val$tcs.a(paramR.e());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */