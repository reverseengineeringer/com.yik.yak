package com.parse;

import android.content.Intent;

class PushService$7
  implements Runnable
{
  PushService$7(PushService paramPushService, Intent paramIntent, int paramInt) {}
  
  public void run()
  {
    try
    {
      PushService.access$000(this$0, val$intent);
      return;
    }
    finally
    {
      ServiceUtils.completeWakefulIntent(val$intent);
      this$0.stopSelf(val$startId);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushService.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */