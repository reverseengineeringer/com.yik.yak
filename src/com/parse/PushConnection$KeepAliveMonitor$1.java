package com.parse;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicLong;

class PushConnection$KeepAliveMonitor$1
  extends BroadcastReceiver
{
  PushConnection$KeepAliveMonitor$1(PushConnection.KeepAliveMonitor paramKeepAliveMonitor) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    long l = SystemClock.elapsedRealtime() - PushConnection.access$1100(this$1.this$0).get();
    if (l > PushConnection.KEEP_ALIVE_ACK_INTERVAL * 2L)
    {
      Parse.logV("com.parse.PushConnection", "Keep alive failure: last read was " + l + " ms ago.");
      PushConnection.KeepAliveMonitor.access$1200(this$1);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.KeepAliveMonitor.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */