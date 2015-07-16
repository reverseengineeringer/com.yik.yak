package com.parse;

import M;
import N;

final class PushService$4
  implements M<Void, Void>
{
  public Void then(N<Void> paramN)
  {
    PushService.startServiceIfRequired(Parse.applicationContext);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */