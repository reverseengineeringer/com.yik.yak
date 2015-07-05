package com.parse;

import Q;
import R;

class OfflineStore$26
  implements Q<String, R<Void>>
{
  OfflineStore$26(OfflineStore paramOfflineStore) {}
  
  public R<Void> then(R<String> paramR)
  {
    paramR = (String)paramR.e();
    if (paramR == null) {
      return R.a(null);
    }
    return OfflineStore.access$1000(this$0, paramR);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */