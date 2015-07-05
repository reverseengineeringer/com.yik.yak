package com.parse;

import Q;
import R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class EventuallyPin$2
  implements Q<List<EventuallyPin>, R<List<EventuallyPin>>>
{
  public R<List<EventuallyPin>> then(R<List<EventuallyPin>> paramR)
  {
    paramR = (List)paramR.e();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramR.iterator();
    while (localIterator.hasNext())
    {
      ParseObject localParseObject = ((EventuallyPin)localIterator.next()).getObject();
      if (localParseObject != null) {
        localArrayList.add(localParseObject.fetchFromLocalDatastoreAsync().j());
      }
    }
    return R.a(localArrayList).b(new EventuallyPin.2.1(this, paramR));
  }
}

/* Location:
 * Qualified Name:     com.parse.EventuallyPin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */