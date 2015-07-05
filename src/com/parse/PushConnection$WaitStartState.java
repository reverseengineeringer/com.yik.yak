package com.parse;

import java.util.Set;

public class PushConnection$WaitStartState
  extends PushConnection.State
{
  public PushConnection$WaitStartState(PushConnection paramPushConnection)
  {
    super(paramPushConnection);
  }
  
  public PushConnection.State runState()
  {
    PushConnection.StoppedState localStoppedState = null;
    Set localSet = PushConnection.access$300(this$0).await(new PushConnection.Event[] { PushConnection.Event.START, PushConnection.Event.STOP });
    if (localSet.contains(PushConnection.Event.STOP)) {
      localStoppedState = new PushConnection.StoppedState(this$0);
    }
    while (!localSet.contains(PushConnection.Event.START)) {
      return localStoppedState;
    }
    return new PushConnection.ConnectState(this$0, 0L);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.WaitStartState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */