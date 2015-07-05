package com.parse;

import P;
import Q;
import R;

class OfflineStore$8$3
  implements Q<T, R<T>>
{
  OfflineStore$8$3(OfflineStore.8 param8, P paramP) {}
  
  public R<T> then(R<T> paramR)
  {
    val$object.a(paramR.e());
    return this$1.this$0.fetchLocallyAsync((ParseObject)val$object.a(), this$1.val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.8.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */