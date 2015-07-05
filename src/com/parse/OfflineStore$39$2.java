package com.parse;

import Q;
import R;

class OfflineStore$39$2
  implements Q<ParseObject, R<ParsePin>>
{
  OfflineStore$39$2(OfflineStore.39 param39) {}
  
  public R<ParsePin> then(R<ParseObject> paramR)
  {
    paramR = (ParsePin)paramR.e();
    return this$1.this$0.fetchLocallyAsync(paramR, this$1.val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.39.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */