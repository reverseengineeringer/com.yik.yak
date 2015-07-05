package com.parse;

import Q;
import R;
import ad;

class ParseRequest$8$1$1
  implements Q<Response, R<Void>>
{
  ParseRequest$8$1$1(ParseRequest.8.1 param1) {}
  
  public R<Void> then(R<Response> paramR)
  {
    if (paramR.c()) {
      this$2.val$retryTask.c();
    }
    for (;;)
    {
      return null;
      if (paramR.d()) {
        this$2.val$retryTask.b(paramR.f());
      } else {
        this$2.val$retryTask.b(paramR.e());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest.8.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */