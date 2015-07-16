package com.parse;

import L;
import M;
import N;

class OfflineStore$8$2
  implements M<T, N<Boolean>>
{
  OfflineStore$8$2(OfflineStore.8 param8, L paramL, OfflineQueryLogic.ConstraintMatcher paramConstraintMatcher) {}
  
  public N<Boolean> then(N<T> paramN)
  {
    if (!((ParseObject)val$object.a()).isDataAvailable()) {
      return N.a(Boolean.valueOf(false));
    }
    return val$matcher.matchesAsync((ParseObject)val$object.a(), this$1.val$db);
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.8.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */