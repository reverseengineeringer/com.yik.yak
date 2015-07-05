package com.parse;

import Q;
import R;
import java.util.Set;

final class PushService$3
  implements Q<Void, R<Set<String>>>
{
  public R<Set<String>> then(R<Void> paramR)
  {
    return PushRouter.getSubscriptionsAsync(true);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */