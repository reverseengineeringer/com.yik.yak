package com.parse;

import M;
import N;

class OfflineStore$39$2
  implements M<ParseObject, N<ParsePin>>
{
  OfflineStore$39$2(OfflineStore.39 param39) {}
  
  public N<ParsePin> then(N<ParseObject> paramN)
  {
    paramN = (ParsePin)paramN.e();
    return this$1.this$0.fetchLocallyAsync(paramN, this$1.val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.39.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */