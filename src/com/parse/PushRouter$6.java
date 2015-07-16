package com.parse;

import M;
import N;
import java.util.Set;

final class PushRouter$6
  implements M<Void, Set<String>>
{
  PushRouter$6(boolean paramBoolean) {}
  
  public Set<String> then(N<Void> paramN)
  {
    return PushRouter.access$000().getSubscriptions(val$includeDefaultRoute);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */