package com.parse;

import P;
import Q;
import R;
import java.util.Set;

class PushService$6
  implements Q<Boolean, R<Set<String>>>
{
  PushService$6(PushService paramPushService, P paramP) {}
  
  public R<Set<String>> then(R<Boolean> paramR)
  {
    val$forceEnabledCapture.a(paramR.e());
    return PushRouter.getSubscriptionsAsync(true);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */