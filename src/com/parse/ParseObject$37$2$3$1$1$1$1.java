package com.parse;

import Q;
import R;
import java.util.Iterator;
import java.util.List;

class ParseObject$37$2$3$1$1$1$1
  implements Q<Void, R<Void>>
{
  ParseObject$37$2$3$1$1$1$1(ParseObject.37.2.3.1.1.1 param1, List paramList) {}
  
  public R<Void> then(R<Void> paramR)
  {
    if (paramR.d())
    {
      Iterator localIterator = val$tasks.iterator();
      while (localIterator.hasNext())
      {
        R localR = (R)localIterator.next();
        if (localR.d()) {
          return localR;
        }
      }
    }
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2.3.1.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */