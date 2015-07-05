package com.parse;

import Q;
import R;
import java.util.List;

class ParsePinningEventuallyQueue$3$1
  implements Q<List<EventuallyPin>, R<Integer>>
{
  ParsePinningEventuallyQueue$3$1(ParsePinningEventuallyQueue.3 param3) {}
  
  public R<Integer> then(R<List<EventuallyPin>> paramR)
  {
    return R.a(Integer.valueOf(((List)paramR.e()).size()));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */