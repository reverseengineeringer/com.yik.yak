package com.parse;

import P;
import Q;
import R;

class OfflineStore$8$2
  implements Q<T, R<Boolean>>
{
  OfflineStore$8$2(OfflineStore.8 param8, P paramP, OfflineQueryLogic.ConstraintMatcher paramConstraintMatcher) {}
  
  public R<Boolean> then(R<T> paramR)
  {
    if (!((ParseObject)val$object.a()).isDataAvailable()) {
      return R.a(Boolean.valueOf(false));
    }
    return val$matcher.matchesAsync((ParseObject)val$object.a(), this$1.val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.8.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */