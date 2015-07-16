package com.parse;

import N;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class PushConnection$KeepAliveMonitor$2
  extends BroadcastReceiver
{
  PushConnection$KeepAliveMonitor$2(PushConnection.KeepAliveMonitor paramKeepAliveMonitor, Context paramContext, Intent paramIntent) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = ParseWakeLock.acquireNewWakeLock(PushConnection.access$1000(this$1.this$0), 1, "push-keep-alive", 20000L);
    if (PushConnection.KeepAliveMonitor.access$1300(this$1) == null) {
      PushConnection.KeepAliveMonitor.access$1302(this$1, N.a(null).j());
    }
    PushConnection.KeepAliveMonitor.access$1302(this$1, PushConnection.KeepAliveMonitor.access$1300(this$1).a(new PushConnection.KeepAliveMonitor.2.1(this, paramContext), ParseCommand.NETWORK_EXECUTOR));
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.KeepAliveMonitor.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */