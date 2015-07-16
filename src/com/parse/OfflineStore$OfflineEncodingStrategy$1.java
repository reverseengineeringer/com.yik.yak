package com.parse;

import M;
import N;
import java.util.ArrayList;
import java.util.Iterator;

class OfflineStore$OfflineEncodingStrategy$1
  implements M<Void, N<Void>>
{
  OfflineStore$OfflineEncodingStrategy$1(OfflineStore.OfflineEncodingStrategy paramOfflineEncodingStrategy) {}
  
  public N<Void> then(N<Void> arg1)
  {
    synchronized (OfflineStore.OfflineEncodingStrategy.access$000(this$1))
    {
      Object localObject1 = OfflineStore.OfflineEncodingStrategy.access$100(this$1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        N localN = (N)((Iterator)localObject1).next();
        if ((localN.d()) || (localN.c())) {
          return localN;
        }
      }
      OfflineStore.OfflineEncodingStrategy.access$100(this$1).clear();
      localObject1 = N.a((Void)null);
      return (N<Void>)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.OfflineEncodingStrategy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */