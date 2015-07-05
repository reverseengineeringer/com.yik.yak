package com.parse;

import Q;
import R;
import java.util.List;

class ParseObject$37$2$3
  implements Q<Void, R<Void>>
{
  ParseObject$37$2$3(ParseObject.37.2 param2, List paramList1, List paramList2) {}
  
  public R<Void> then(R<Void> paramR)
  {
    if (val$current.size() == 0) {
      return R.a(null);
    }
    return ParseObject.enqueueForAll(val$current, new ParseObject.37.2.3.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */