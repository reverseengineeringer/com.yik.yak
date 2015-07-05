package com.parse;

import Q;
import R;
import java.util.ArrayList;

class ParsePinningEventuallyQueue$9$1
  implements Q<Void, R<Void>>
{
  ParsePinningEventuallyQueue$9$1(ParsePinningEventuallyQueue.9 param9) {}
  
  public R<Void> then(R<Void> paramR)
  {
    ParsePinningEventuallyQueue.access$600(this$1.this$0).remove(this$1.val$uuid);
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.9.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */