package com.parse;

import L;
import M;
import N;

class OfflineStore$8$3
  implements M<T, N<T>>
{
  OfflineStore$8$3(OfflineStore.8 param8, L paramL) {}
  
  public N<T> then(N<T> paramN)
  {
    val$object.a(paramN.e());
    return this$1.this$0.fetchLocallyAsync((ParseObject)val$object.a(), this$1.val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.8.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */