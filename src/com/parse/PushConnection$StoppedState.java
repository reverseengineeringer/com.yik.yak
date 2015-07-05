package com.parse;

public class PushConnection$StoppedState
  extends PushConnection.State
{
  public PushConnection$StoppedState(PushConnection paramPushConnection)
  {
    super(paramPushConnection);
  }
  
  public boolean isTerminal()
  {
    return true;
  }
  
  public PushConnection.State runState()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushConnection.StoppedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */