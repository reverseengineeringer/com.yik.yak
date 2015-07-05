package com.parse;

import Q;
import R;

final class ParsePush$1
  implements Q<Void, Void>
{
  ParsePush$1(boolean paramBoolean) {}
  
  public Void then(R<Void> paramR)
  {
    if (!val$enabled) {
      PushService.stopPpnsService(Parse.applicationContext);
    }
    for (;;)
    {
      return null;
      PushService.startServiceIfRequired(Parse.applicationContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePush.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */