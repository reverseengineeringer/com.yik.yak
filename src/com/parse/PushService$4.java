package com.parse;

import Q;
import R;

final class PushService$4
  implements Q<Void, Void>
{
  public Void then(R<Void> paramR)
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