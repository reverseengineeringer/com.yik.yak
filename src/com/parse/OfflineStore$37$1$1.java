package com.parse;

import Q;
import R;

class OfflineStore$37$1$1
  implements Q<Void, R<Void>>
{
  OfflineStore$37$1$1(OfflineStore.37.1 param1) {}
  
  public R<Void> then(R<Void> paramR)
  {
    this$2.val$db.endTransactionAsync();
    this$2.val$db.close();
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.37.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */