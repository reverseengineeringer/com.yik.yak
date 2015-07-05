package com.parse;

import Q;
import R;

class OfflineStore$7$1
  implements Q<Void, R<Void>>
{
  OfflineStore$7$1(OfflineStore.7 param7, ParseObject paramParseObject) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return this$1.val$queryLogic.fetchIncludes(val$object, this$1.val$query, this$1.val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.7.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */