package com.facebook;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class Request$4
  implements Runnable
{
  Request$4(ArrayList paramArrayList, RequestBatch paramRequestBatch) {}
  
  public void run()
  {
    Iterator localIterator = val$callbacks.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      ((Request.Callback)first).onCompleted((Response)second);
    }
    localIterator = val$requests.getCallbacks().iterator();
    while (localIterator.hasNext()) {
      ((RequestBatch.Callback)localIterator.next()).onBatchCompleted(val$requests);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Request.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */