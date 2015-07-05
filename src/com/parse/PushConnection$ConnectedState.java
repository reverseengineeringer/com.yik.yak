package com.parse;

import java.net.Socket;
import java.util.Set;

public class PushConnection$ConnectedState
  extends PushConnection.State
{
  private Socket socket;
  
  public PushConnection$ConnectedState(PushConnection paramPushConnection, Socket paramSocket)
  {
    super(paramPushConnection);
    socket = paramSocket;
  }
  
  public PushConnection.State runState()
  {
    Object localObject = null;
    PushConnection.ReachabilityMonitor localReachabilityMonitor = new PushConnection.ReachabilityMonitor(this$0, null);
    PushConnection.KeepAliveMonitor localKeepAliveMonitor = new PushConnection.KeepAliveMonitor(this$0, socket, PushConnection.KEEP_ALIVE_INTERVAL);
    PushConnection.ReaderThread localReaderThread = new PushConnection.ReaderThread(this$0, socket);
    localReachabilityMonitor.register();
    localKeepAliveMonitor.register();
    localReaderThread.start();
    while (localObject == null)
    {
      Set localSet = PushConnection.access$300(this$0).await(new PushConnection.Event[] { PushConnection.Event.STOP, PushConnection.Event.CONNECTIVITY_CHANGED, PushConnection.Event.KEEP_ALIVE_ERROR, PushConnection.Event.READ_ERROR });
      if (localSet.contains(PushConnection.Event.STOP)) {
        localObject = new PushConnection.StoppedState(this$0);
      } else if ((localSet.contains(PushConnection.Event.READ_ERROR)) || (localSet.contains(PushConnection.Event.KEEP_ALIVE_ERROR)) || (localSet.contains(PushConnection.Event.CONNECTIVITY_CHANGED))) {
        localObject = new PushConnection.WaitRetryState(this$0, 0L);
      }
    }
    localReachabilityMonitor.unregister();
    localKeepAliveMonitor.unregister();
    localReaderThread.stopReading();
    PushConnection.access$600(socket);
    PushConnection.access$300(this$0).removeEvents(new PushConnection.Event[] { PushConnection.Event.CONNECTIVITY_CHANGED, PushConnection.Event.KEEP_ALIVE_ERROR, PushConnection.Event.READ_ERROR });
    return (PushConnection.State)localObject;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.ConnectedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */