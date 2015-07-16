package com.parse;

import M;
import N;
import java.util.Set;

final class PushService$2
  implements M<Set<String>, Void>
{
  public Void then(N<Set<String>> paramN)
  {
    if (((Set)paramN.e()).size() == 0) {
      PushService.stopPpnsService(Parse.applicationContext);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */