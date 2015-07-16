package com.parse;

import M;
import N;

class OfflineStore$34$1$1$1
  implements M<Void, N<Void>>
{
  OfflineStore$34$1$1$1(OfflineStore.34.1.1 param1) {}
  
  public N<Void> then(N<Void> paramN)
  {
    this$3.val$db.endTransactionAsync();
    this$3.val$db.close();
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.34.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */