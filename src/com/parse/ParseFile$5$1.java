package com.parse;

import Q;
import R;
import ad;
import java.util.Set;

class ParseFile$5$1
  implements Q<byte[], Void>
{
  ParseFile$5$1(ParseFile.5 param5) {}
  
  public Void then(R<byte[]> paramR)
  {
    ParseFile.access$000(this$1.this$0).remove(this$1.val$tcs);
    if (paramR.c()) {
      this$1.val$tcs.b();
    }
    for (;;)
    {
      return null;
      if (paramR.d()) {
        this$1.val$tcs.a(paramR.f());
      } else {
        this$1.val$tcs.a(paramR.e());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */