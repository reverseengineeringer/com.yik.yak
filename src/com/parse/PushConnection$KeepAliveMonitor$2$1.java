package com.parse;

import Q;
import R;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicLong;

class PushConnection$KeepAliveMonitor$2$1
  implements Q<Void, Void>
{
  PushConnection$KeepAliveMonitor$2$1(PushConnection.KeepAliveMonitor.2 param2, ParseWakeLock paramParseWakeLock) {}
  
  public Void then(R<Void> paramR)
  {
    int j = 0;
    if (!PushConnection.access$700(PushConnection.KeepAliveMonitor.access$1400(this$2.this$1), "{}")) {
      PushConnection.KeepAliveMonitor.access$1200(this$2.this$1);
    }
    int i = j;
    if (PushConnection.ENABLE_QUICK_ACK_CHECK) {}
    try
    {
      Thread.sleep(2500L);
      i = j;
      if (SystemClock.elapsedRealtime() - PushConnection.access$1100(this$2.this$1.this$0).get() <= 2500L * 2L) {
        i = 1;
      }
      if (i == 0)
      {
        paramR = PendingIntent.getBroadcast(this$2.val$appContext, System.identityHashCode(this), this$2.val$readIntent, 1342177280);
        PushConnection.KeepAliveMonitor.access$1500(this$2.this$1).set(2, SystemClock.elapsedRealtime() + PushConnection.KEEP_ALIVE_ACK_INTERVAL, paramR);
      }
      for (;;)
      {
        val$wl.release();
        return null;
        Parse.logV("com.parse.PushConnection", "Keep alive ack was received quickly.");
      }
    }
    catch (InterruptedException paramR)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.KeepAliveMonitor.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */