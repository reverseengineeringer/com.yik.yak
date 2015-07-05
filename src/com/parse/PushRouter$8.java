package com.parse;

import android.content.Intent;
import java.util.concurrent.Semaphore;

final class PushRouter$8
  implements Runnable
{
  PushRouter$8(Intent paramIntent, Semaphore paramSemaphore) {}
  
  public void run()
  {
    PushRouter.access$000().handleGcmPush(val$intent);
    val$done.release();
  }
}

/* Location:
 * Qualified Name:     com.parse.PushRouter.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */