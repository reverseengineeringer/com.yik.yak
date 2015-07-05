package com.parse;

import android.content.Intent;

class PushConnection$ReachabilityMonitor$1
  implements ConnectivityNotifier.ConnectivityListener
{
  PushConnection$ReachabilityMonitor$1(PushConnection.ReachabilityMonitor paramReachabilityMonitor) {}
  
  public void networkConnectivityStatusChanged(Intent arg1)
  {
    synchronized (this$1)
    {
      if (!PushConnection.ReachabilityMonitor.access$900(this$1)) {
        PushConnection.access$300(this$1.this$0).signalEvent(PushConnection.Event.CONNECTIVITY_CHANGED);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.ReachabilityMonitor.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */