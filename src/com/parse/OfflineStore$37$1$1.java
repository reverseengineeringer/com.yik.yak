package com.parse;

import M;
import N;

class OfflineStore$37$1$1
  implements M<Void, N<Void>>
{
  OfflineStore$37$1$1(OfflineStore.37.1 param1) {}
  
  public N<Void> then(N<Void> paramN)
  {
    this$2.val$db.endTransactionAsync();
    this$2.val$db.close();
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.37.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */