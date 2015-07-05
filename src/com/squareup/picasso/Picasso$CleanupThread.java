package com.squareup.picasso;

import android.os.Handler;
import android.os.Process;
import java.lang.ref.ReferenceQueue;

class Picasso$CleanupThread
  extends Thread
{
  private final Handler handler;
  private final ReferenceQueue<?> referenceQueue;
  
  Picasso$CleanupThread(ReferenceQueue<?> paramReferenceQueue, Handler paramHandler)
  {
    referenceQueue = paramReferenceQueue;
    handler = paramHandler;
    setDaemon(true);
    setName("Picasso-refQueue");
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    try
    {
      for (;;)
      {
        Action.RequestWeakReference localRequestWeakReference = (Action.RequestWeakReference)referenceQueue.remove();
        handler.sendMessage(handler.obtainMessage(3, action));
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      return;
    }
    catch (Exception localException)
    {
      handler.post(new Picasso.CleanupThread.1(this, localException));
    }
  }
  
  void shutdown()
  {
    interrupt();
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Picasso.CleanupThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */