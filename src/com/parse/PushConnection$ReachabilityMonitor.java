package com.parse;

class PushConnection$ReachabilityMonitor
{
  private ConnectivityNotifier.ConnectivityListener listener;
  private boolean unregistered;
  
  private PushConnection$ReachabilityMonitor(PushConnection paramPushConnection) {}
  
  public void register()
  {
    listener = new PushConnection.ReachabilityMonitor.1(this);
    ConnectivityNotifier.getNotifier().addListener(listener, PushConnection.access$1000(this$0));
  }
  
  public void unregister()
  {
    ConnectivityNotifier.getNotifier().removeListener(listener);
    try
    {
      unregistered = true;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.ReachabilityMonitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */