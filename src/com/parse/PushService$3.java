package com.parse;

import M;
import N;
import java.util.Set;

final class PushService$3
  implements M<Void, N<Set<String>>>
{
  public N<Set<String>> then(N<Void> paramN)
  {
    return PushRouter.getSubscriptionsAsync(true);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */