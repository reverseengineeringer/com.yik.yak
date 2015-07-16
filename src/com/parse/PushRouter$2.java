package com.parse;

import M;
import N;

final class PushRouter$2
  implements M<Void, Void>
{
  PushRouter$2(String paramString) {}
  
  public Void then(N<Void> paramN)
  {
    PushRouter.access$000().unsubscribe(val$channel);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */