package com.parse;

import M;
import N;
import Z;
import java.util.Set;

class ParseFile$5$1
  implements M<byte[], Void>
{
  ParseFile$5$1(ParseFile.5 param5) {}
  
  public Void then(N<byte[]> paramN)
  {
    ParseFile.access$000(this$1.this$0).remove(this$1.val$tcs);
    if (paramN.c()) {
      this$1.val$tcs.b();
    }
    for (;;)
    {
      return null;
      if (paramN.d()) {
        this$1.val$tcs.a(paramN.f());
      } else {
        this$1.val$tcs.a(paramN.e());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */