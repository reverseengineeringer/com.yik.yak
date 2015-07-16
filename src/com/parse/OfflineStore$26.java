package com.parse;

import M;
import N;

class OfflineStore$26
  implements M<String, N<Void>>
{
  OfflineStore$26(OfflineStore paramOfflineStore) {}
  
  public N<Void> then(N<String> paramN)
  {
    paramN = (String)paramN.e();
    if (paramN == null) {
      return N.a(null);
    }
    return OfflineStore.access$1000(this$0, paramN);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */