package com.parse;

import Q;
import R;
import java.util.Set;

final class PushRouter$6
  implements Q<Void, Set<String>>
{
  PushRouter$6(boolean paramBoolean) {}
  
  public Set<String> then(R<Void> paramR)
  {
    return PushRouter.access$000().getSubscriptions(val$includeDefaultRoute);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */