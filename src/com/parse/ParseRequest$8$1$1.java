package com.parse;

import M;
import N;
import Z;

class ParseRequest$8$1$1
  implements M<Response, N<Void>>
{
  ParseRequest$8$1$1(ParseRequest.8.1 param1) {}
  
  public N<Void> then(N<Response> paramN)
  {
    if (paramN.c()) {
      this$2.val$retryTask.c();
    }
    for (;;)
    {
      return null;
      if (paramN.d()) {
        this$2.val$retryTask.b(paramN.f());
      } else {
        this$2.val$retryTask.b(paramN.e());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest.8.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */