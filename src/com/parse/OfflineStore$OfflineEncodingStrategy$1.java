package com.parse;

import Q;
import R;
import java.util.ArrayList;
import java.util.Iterator;

class OfflineStore$OfflineEncodingStrategy$1
  implements Q<Void, R<Void>>
{
  OfflineStore$OfflineEncodingStrategy$1(OfflineStore.OfflineEncodingStrategy paramOfflineEncodingStrategy) {}
  
  public R<Void> then(R<Void> arg1)
  {
    synchronized (OfflineStore.OfflineEncodingStrategy.access$000(this$1))
    {
      Object localObject1 = OfflineStore.OfflineEncodingStrategy.access$100(this$1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        R localR = (R)((Iterator)localObject1).next();
        if ((localR.d()) || (localR.c())) {
          return localR;
        }
      }
      OfflineStore.OfflineEncodingStrategy.access$100(this$1).clear();
      localObject1 = R.a((Void)null);
      return (R<Void>)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.OfflineEncodingStrategy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */