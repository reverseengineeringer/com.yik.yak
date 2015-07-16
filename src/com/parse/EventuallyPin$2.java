package com.parse;

import M;
import N;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class EventuallyPin$2
  implements M<List<EventuallyPin>, N<List<EventuallyPin>>>
{
  public N<List<EventuallyPin>> then(N<List<EventuallyPin>> paramN)
  {
    paramN = (List)paramN.e();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramN.iterator();
    while (localIterator.hasNext())
    {
      ParseObject localParseObject = ((EventuallyPin)localIterator.next()).getObject();
      if (localParseObject != null) {
        localArrayList.add(localParseObject.fetchFromLocalDatastoreAsync().j());
      }
    }
    return N.a(localArrayList).b(new EventuallyPin.2.1(this, paramN));
  }
}

/* Location:
 * Qualified Name:     com.parse.EventuallyPin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */