package com.parse;

import Q;
import R;
import ad;

class ParsePinningEventuallyQueue$2$1
  implements Q<Integer, R<Void>>
{
  ParsePinningEventuallyQueue$2$1(ParsePinningEventuallyQueue.2 param2) {}
  
  public R<Void> then(R<Integer> paramR)
  {
    int i = ((Integer)paramR.e()).intValue();
    this$1.val$tcs.b(Integer.valueOf(i));
    return R.a(null);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */