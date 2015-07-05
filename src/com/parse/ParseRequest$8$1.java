package com.parse;

import R;
import ad;

class ParseRequest$8$1
  implements Runnable
{
  ParseRequest$8$1(ParseRequest.8 param8, ad paramad) {}
  
  public void run()
  {
    ParseRequest.access$300(this$1.this$0, this$1.val$attemptsMade + 1, this$1.val$delay * 2L, this$1.val$progressCallback).b(new ParseRequest.8.1.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest.8.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */