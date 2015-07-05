package com.parse;

import Q;
import R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ParsePinningEventuallyQueue$14$1$1
  implements Q<List<EventuallyPin>, R<Void>>
{
  ParsePinningEventuallyQueue$14$1$1(ParsePinningEventuallyQueue.14.1 param1) {}
  
  public R<Void> then(R<List<EventuallyPin>> paramR)
  {
    Object localObject = (List)paramR.e();
    paramR = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramR.add(((EventuallyPin)((Iterator)localObject).next()).unpinInBackground("_eventuallyPin"));
    }
    return R.a(paramR);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue.14.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */