package com.parse;

import java.util.Set;

public class PushConnection$WaitRetryState
  extends PushConnection.State
{
  private long delay;
  
  public PushConnection$WaitRetryState(PushConnection paramPushConnection, long paramLong)
  {
    super(paramPushConnection);
    delay = paramLong;
  }
  
  public long getDelay()
  {
    return delay;
  }
  
  public PushConnection.State runState()
  {
    PushConnection.access$300(this$0).removeEvents(new PushConnection.Event[] { PushConnection.Event.START });
    long l = delay;
    if (!PushConnection.ENABLE_RETRY_DELAY) {
      l = 0L;
    }
    Set localSet = PushConnection.access$300(this$0).timedAwait(l, new PushConnection.Event[] { PushConnection.Event.STOP, PushConnection.Event.START });
    if (localSet.contains(PushConnection.Event.STOP)) {
      return new PushConnection.StoppedState(this$0);
    }
    if (localSet.contains(PushConnection.Event.START)) {
      return new PushConnection.ConnectState(this$0, 0L);
    }
    return new PushConnection.ConnectState(this$0, delay);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.WaitRetryState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */