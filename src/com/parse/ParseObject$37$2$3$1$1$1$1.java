package com.parse;

import M;
import N;
import java.util.Iterator;
import java.util.List;

class ParseObject$37$2$3$1$1$1$1
  implements M<Void, N<Void>>
{
  ParseObject$37$2$3$1$1$1$1(ParseObject.37.2.3.1.1.1 param1, List paramList) {}
  
  public N<Void> then(N<Void> paramN)
  {
    if (paramN.d())
    {
      Iterator localIterator = val$tasks.iterator();
      while (localIterator.hasNext())
      {
        N localN = (N)localIterator.next();
        if (localN.d()) {
          return localN;
        }
      }
    }
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2.3.1.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */