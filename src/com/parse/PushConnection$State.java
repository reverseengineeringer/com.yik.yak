package com.parse;

import java.util.concurrent.ExecutorService;

public abstract class PushConnection$State
  implements Runnable
{
  public PushConnection$State(PushConnection paramPushConnection) {}
  
  public boolean isTerminal()
  {
    return false;
  }
  
  public void run()
  {
    State localState = runState();
    try
    {
      if (PushConnection.access$100() != null) {
        PushConnection.access$100().onStateChange(this$0, this, localState);
      }
      if (isTerminal())
      {
        Parse.logI("com.parse.PushConnection", this + " finished and is the terminal state. Thread exiting.");
        PushConnection.access$200(this$0).shutdown();
        return;
      }
    }
    finally {}
    if (localObject != null)
    {
      Parse.logI("com.parse.PushConnection", "PushConnection transitioning from " + this + " to " + localObject);
      PushConnection.access$200(this$0).execute((Runnable)localObject);
      return;
    }
    throw new NullPointerException(this + " tried to transition to null state.");
  }
  
  public abstract State runState();
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.State
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */