package com.parse;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class ParseTestUtils$StateTransitionListener
  implements PushConnection.StateTransitionListener
{
  private ArrayList<ParseTestUtils.StateTransition> transitions = new ArrayList();
  
  public List<ParseTestUtils.StateTransition> getTransitions()
  {
    try
    {
      List localList = Collections.unmodifiableList(transitions);
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void onStateChange(PushConnection paramPushConnection, PushConnection.State paramState1, PushConnection.State paramState2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 18	com/parse/ParseTestUtils$StateTransitionListener:transitions	Ljava/util/ArrayList;
    //   6: new 33	com/parse/ParseTestUtils$StateTransition
    //   9: dup
    //   10: invokestatic 39	android/os/SystemClock:elapsedRealtime	()J
    //   13: aload_1
    //   14: aload_2
    //   15: aload_3
    //   16: invokespecial 42	com/parse/ParseTestUtils$StateTransition:<init>	(JLcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V
    //   19: invokevirtual 46	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   22: pop
    //   23: aload_3
    //   24: ifnull +25 -> 49
    //   27: invokestatic 52	com/parse/ParseTestUtils:access$000	()Ljava/util/concurrent/Semaphore;
    //   30: ifnull +19 -> 49
    //   33: aload_3
    //   34: instanceof 54
    //   37: ifeq +12 -> 49
    //   40: invokestatic 52	com/parse/ParseTestUtils:access$000	()Ljava/util/concurrent/Semaphore;
    //   43: invokevirtual 59	java/util/concurrent/Semaphore:release	()V
    //   46: aload_0
    //   47: monitorexit
    //   48: return
    //   49: aload_3
    //   50: ifnull -4 -> 46
    //   53: invokestatic 62	com/parse/ParseTestUtils:access$100	()Ljava/util/concurrent/Semaphore;
    //   56: ifnull -10 -> 46
    //   59: aload_3
    //   60: instanceof 64
    //   63: ifeq -17 -> 46
    //   66: invokestatic 62	com/parse/ParseTestUtils:access$100	()Ljava/util/concurrent/Semaphore;
    //   69: invokevirtual 59	java/util/concurrent/Semaphore:release	()V
    //   72: goto -26 -> 46
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	StateTransitionListener
    //   0	80	1	paramPushConnection	PushConnection
    //   0	80	2	paramState1	PushConnection.State
    //   0	80	3	paramState2	PushConnection.State
    // Exception table:
    //   from	to	target	type
    //   2	23	75	finally
    //   27	46	75	finally
    //   53	72	75	finally
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseTestUtils.StateTransitionListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */