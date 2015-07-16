package com.parse;

import L;
import M;
import N;
import java.util.Set;

class PushService$6
  implements M<Boolean, N<Set<String>>>
{
  PushService$6(PushService paramPushService, L paramL) {}
  
  public N<Set<String>> then(N<Boolean> paramN)
  {
    val$forceEnabledCapture.a(paramN.e());
    return PushRouter.getSubscriptionsAsync(true);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */