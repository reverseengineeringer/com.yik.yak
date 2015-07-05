package com.parse;

class ParseTestUtils$StateTransition
{
  public final PushConnection connection;
  public final PushConnection.State fromState;
  public final long timestamp;
  public final PushConnection.State toState;
  
  ParseTestUtils$StateTransition(long paramLong, PushConnection paramPushConnection, PushConnection.State paramState1, PushConnection.State paramState2)
  {
    timestamp = paramLong;
    connection = paramPushConnection;
    fromState = paramState1;
    toState = paramState2;
  }
  
  public String toString()
  {
    return timestamp + " ms: " + fromState + " to " + toState;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseTestUtils.StateTransition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */