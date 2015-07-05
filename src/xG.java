import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class xg
{
  private int a = 64;
  private int b = 5;
  private ExecutorService c;
  private final Deque<wS> d = new ArrayDeque();
  private final Deque<wS> e = new ArrayDeque();
  private final Deque<wP> f = new ArrayDeque();
  
  private void b()
  {
    if (e.size() >= a) {}
    do
    {
      Iterator localIterator;
      do
      {
        return;
        while (d.isEmpty()) {}
        localIterator = d.iterator();
      } while (!localIterator.hasNext());
      wS localwS = (wS)localIterator.next();
      if (c(localwS) < b)
      {
        localIterator.remove();
        e.add(localwS);
        a().execute(localwS);
      }
    } while (e.size() < a);
  }
  
  private int c(wS paramwS)
  {
    Iterator localIterator = e.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      if (!((wS)localIterator.next()).a().equals(paramwS.a())) {
        break label52;
      }
      i += 1;
    }
    label52:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public ExecutorService a()
  {
    try
    {
      if (c == null) {
        c = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), xY.a("OkHttp Dispatcher", false));
      }
      ExecutorService localExecutorService = c;
      return localExecutorService;
    }
    finally {}
  }
  
  void a(wP paramwP)
  {
    try
    {
      f.add(paramwP);
      return;
    }
    finally
    {
      paramwP = finally;
      throw paramwP;
    }
  }
  
  /* Error */
  void a(wS paramwS)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 30	xg:e	Ljava/util/Deque;
    //   6: invokeinterface 39 1 0
    //   11: aload_0
    //   12: getfield 21	xg:a	I
    //   15: if_icmpge +39 -> 54
    //   18: aload_0
    //   19: aload_1
    //   20: invokespecial 61	xg:c	(LwS;)I
    //   23: aload_0
    //   24: getfield 23	xg:b	I
    //   27: if_icmpge +27 -> 54
    //   30: aload_0
    //   31: getfield 30	xg:e	Ljava/util/Deque;
    //   34: aload_1
    //   35: invokeinterface 68 2 0
    //   40: pop
    //   41: aload_0
    //   42: invokevirtual 71	xg:a	()Ljava/util/concurrent/ExecutorService;
    //   45: aload_1
    //   46: invokeinterface 77 2 0
    //   51: aload_0
    //   52: monitorexit
    //   53: return
    //   54: aload_0
    //   55: getfield 28	xg:d	Ljava/util/Deque;
    //   58: aload_1
    //   59: invokeinterface 68 2 0
    //   64: pop
    //   65: goto -14 -> 51
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	xg
    //   0	73	1	paramwS	wS
    // Exception table:
    //   from	to	target	type
    //   2	51	68	finally
    //   54	65	68	finally
  }
  
  void b(wP paramwP)
  {
    try
    {
      if (!f.remove(paramwP)) {
        throw new AssertionError("Call wasn't in-flight!");
      }
    }
    finally {}
  }
  
  void b(wS paramwS)
  {
    try
    {
      if (!e.remove(paramwS)) {
        throw new AssertionError("AsyncCall wasn't running!");
      }
    }
    finally {}
    b();
  }
}

/* Location:
 * Qualified Name:     xg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */