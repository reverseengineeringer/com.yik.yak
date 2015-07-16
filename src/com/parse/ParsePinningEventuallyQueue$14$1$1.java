package com.parse;

import M;
import N;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ParsePinningEventuallyQueue$14$1$1
  implements M<List<EventuallyPin>, N<Void>>
{
  ParsePinningEventuallyQueue$14$1$1(ParsePinningEventuallyQueue.14.1 param1) {}
  
  public N<Void> then(N<List<EventuallyPin>> paramN)
  {
    Object localObject = (List)paramN.e();
    paramN = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramN.add(((EventuallyPin)((Iterator)localObject).next()).unpinInBackground("_eventuallyPin"));
    }
    return N.a(paramN);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.14.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */