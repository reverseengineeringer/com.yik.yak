import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class xp
{
  private int a = 64;
  private int b = 5;
  private ExecutorService c;
  private final Deque<xb> d = new ArrayDeque();
  private final Deque<xb> e = new ArrayDeque();
  private final Deque<wY> f = new ArrayDeque();
  
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
      xb localxb = (xb)localIterator.next();
      if (c(localxb) < b)
      {
        localIterator.remove();
        e.add(localxb);
        a().execute(localxb);
      }
    } while (e.size() < a);
  }
  
  private int c(xb paramxb)
  {
    Iterator localIterator = e.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      if (!((xb)localIterator.next()).a().equals(paramxb.a())) {
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
        c = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), yi.a("OkHttp Dispatcher", false));
      }
      ExecutorService localExecutorService = c;
      return localExecutorService;
    }
    finally {}
  }
  
  void a(wY paramwY)
  {
    try
    {
      f.add(paramwY);
      return;
    }
    finally
    {
      paramwY = finally;
      throw paramwY;
    }
  }
  
  /* Error */
  void a(xb paramxb)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 30	xp:e	Ljava/util/Deque;
    //   6: invokeinterface 39 1 0
    //   11: aload_0
    //   12: getfield 21	xp:a	I
    //   15: if_icmpge +39 -> 54
    //   18: aload_0
    //   19: aload_1
    //   20: invokespecial 61	xp:c	(Lxb;)I
    //   23: aload_0
    //   24: getfield 23	xp:b	I
    //   27: if_icmpge +27 -> 54
    //   30: aload_0
    //   31: getfield 30	xp:e	Ljava/util/Deque;
    //   34: aload_1
    //   35: invokeinterface 68 2 0
    //   40: pop
    //   41: aload_0
    //   42: invokevirtual 71	xp:a	()Ljava/util/concurrent/ExecutorService;
    //   45: aload_1
    //   46: invokeinterface 77 2 0
    //   51: aload_0
    //   52: monitorexit
    //   53: return
    //   54: aload_0
    //   55: getfield 28	xp:d	Ljava/util/Deque;
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
    //   0	73	0	this	xp
    //   0	73	1	paramxb	xb
    // Exception table:
    //   from	to	target	type
    //   2	51	68	finally
    //   54	65	68	finally
  }
  
  void b(wY paramwY)
  {
    try
    {
      if (!f.remove(paramwY)) {
        throw new AssertionError("Call wasn't in-flight!");
      }
    }
    finally {}
  }
  
  void b(xb paramxb)
  {
    try
    {
      if (!e.remove(paramxb)) {
        throw new AssertionError("AsyncCall wasn't running!");
      }
    }
    finally {}
    b();
  }
}

/* Location:
 * Qualified Name:     xp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */