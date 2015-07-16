package com.parse;

import M;
import N;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class TaskQueue
{
  private final Lock lock = new ReentrantLock();
  private N<Void> tail;
  
  /* Error */
  private N<Void> getTaskToAwait()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 18	com/parse/TaskQueue:lock	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 25 1 0
    //   9: aload_0
    //   10: getfield 27	com/parse/TaskQueue:tail	LN;
    //   13: ifnull +32 -> 45
    //   16: aload_0
    //   17: getfield 27	com/parse/TaskQueue:tail	LN;
    //   20: astore_1
    //   21: aload_1
    //   22: new 29	com/parse/TaskQueue$1
    //   25: dup
    //   26: aload_0
    //   27: invokespecial 32	com/parse/TaskQueue$1:<init>	(Lcom/parse/TaskQueue;)V
    //   30: invokevirtual 38	N:a	(LM;)LN;
    //   33: astore_1
    //   34: aload_0
    //   35: getfield 18	com/parse/TaskQueue:lock	Ljava/util/concurrent/locks/Lock;
    //   38: invokeinterface 41 1 0
    //   43: aload_1
    //   44: areturn
    //   45: aconst_null
    //   46: invokestatic 44	N:a	(Ljava/lang/Object;)LN;
    //   49: astore_1
    //   50: goto -29 -> 21
    //   53: astore_1
    //   54: aload_0
    //   55: getfield 18	com/parse/TaskQueue:lock	Ljava/util/concurrent/locks/Lock;
    //   58: invokeinterface 41 1 0
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	TaskQueue
    //   20	30	1	localN	N
    //   53	11	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	21	53	finally
    //   21	34	53	finally
    //   45	50	53	finally
  }
  
  static <T> M<T, N<T>> waitFor(N<Void> paramN)
  {
    return new TaskQueue.2(paramN);
  }
  
  /* Error */
  <T> N<T> enqueue(M<Void, N<T>> paramM)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 18	com/parse/TaskQueue:lock	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 25 1 0
    //   9: aload_0
    //   10: getfield 27	com/parse/TaskQueue:tail	LN;
    //   13: ifnull +55 -> 68
    //   16: aload_0
    //   17: getfield 27	com/parse/TaskQueue:tail	LN;
    //   20: astore_2
    //   21: aload_1
    //   22: aload_0
    //   23: invokespecial 61	com/parse/TaskQueue:getTaskToAwait	()LN;
    //   26: invokeinterface 67 2 0
    //   31: checkcast 34	N
    //   34: astore_1
    //   35: aload_0
    //   36: iconst_2
    //   37: anewarray 34	N
    //   40: dup
    //   41: iconst_0
    //   42: aload_2
    //   43: aastore
    //   44: dup
    //   45: iconst_1
    //   46: aload_1
    //   47: aastore
    //   48: invokestatic 73	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   51: invokestatic 76	N:a	(Ljava/util/Collection;)LN;
    //   54: putfield 27	com/parse/TaskQueue:tail	LN;
    //   57: aload_0
    //   58: getfield 18	com/parse/TaskQueue:lock	Ljava/util/concurrent/locks/Lock;
    //   61: invokeinterface 41 1 0
    //   66: aload_1
    //   67: areturn
    //   68: aconst_null
    //   69: invokestatic 44	N:a	(Ljava/lang/Object;)LN;
    //   72: astore_2
    //   73: goto -52 -> 21
    //   76: astore_1
    //   77: aload_1
    //   78: athrow
    //   79: astore_1
    //   80: aload_0
    //   81: getfield 18	com/parse/TaskQueue:lock	Ljava/util/concurrent/locks/Lock;
    //   84: invokeinterface 41 1 0
    //   89: aload_1
    //   90: athrow
    //   91: astore_1
    //   92: new 57	java/lang/RuntimeException
    //   95: dup
    //   96: aload_1
    //   97: invokespecial 79	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   100: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	TaskQueue
    //   0	101	1	paramM	M<Void, N<T>>
    //   20	53	2	localN	N
    // Exception table:
    //   from	to	target	type
    //   21	35	76	java/lang/RuntimeException
    //   9	21	79	finally
    //   21	35	79	finally
    //   35	57	79	finally
    //   68	73	79	finally
    //   77	79	79	finally
    //   92	101	79	finally
    //   21	35	91	java/lang/Exception
  }
  
  Lock getLock()
  {
    return lock;
  }
  
  void waitUntilFinished()
  {
    lock.lock();
    try
    {
      N localN = tail;
      if (localN == null) {
        return;
      }
      tail.g();
      return;
    }
    finally
    {
      lock.unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.TaskQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */