package com.parse;

import Q;
import R;
import ad;
import java.util.Set;

class ParseFile$3$1
  implements Q<Void, Void>
{
  ParseFile$3$1(ParseFile.3 param3) {}
  
  public Void then(R<Void> paramR)
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
 * Qualified Name:     com.parse.ParseFile.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */