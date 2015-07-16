import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class xj
{
  private static final xj a;
  private final int b;
  private final long c;
  private final LinkedList<xi> d = new LinkedList();
  private Executor e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), yi.a("OkHttp ConnectionPool", true));
  private final Runnable f = new xk(this);
  
  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    if (str2 != null) {}
    for (long l = Long.parseLong(str2); (str1 != null) && (!Boolean.parseBoolean(str1)); l = 300000L)
    {
      a = new xj(0, l);
      return;
    }
    if (str3 != null)
    {
      a = new xj(Integer.parseInt(str3), l);
      return;
    }
    a = new xj(5, l);
  }
  
  public xj(int paramInt, long paramLong)
  {
    b = paramInt;
    c = (paramLong * 1000L * 1000L);
  }
  
  public static xj a()
  {
    return a;
  }
  
  private void c()
  {
    while (b()) {}
  }
  
  private void c(xi paramxi)
  {
    boolean bool = d.isEmpty();
    d.addFirst(paramxi);
    if (bool)
    {
      e.execute(f);
      return;
    }
    notifyAll();
  }
  
  public xi a(wM paramwM)
  {
    for (;;)
    {
      try
      {
        ListIterator localListIterator = d.listIterator(d.size());
        if (localListIterator.hasPrevious())
        {
          xi localxi2 = (xi)localListIterator.previous();
          if ((localxi2.c().a().equals(paramwM)) && (localxi2.e()) && (System.nanoTime() - localxi2.i() < c))
          {
            localListIterator.remove();
            boolean bool = localxi2.k();
            xi localxi1 = localxi2;
            if (!bool) {}
            try
            {
              yc.a().a(localxi2.d());
              localxi1 = localxi2;
              if ((localxi1 != null) && (localxi1.k())) {
                d.addFirst(localxi1);
              }
              return localxi1;
            }
            catch (SocketException localSocketException)
            {
              yi.a(localxi2.d());
              yc.a().a("Unable to tagSocket(): " + localSocketException);
            }
          }
        }
        else
        {
          Object localObject = null;
        }
      }
      finally {}
    }
  }
  
  void a(xi paramxi)
  {
    if (paramxi.k()) {}
    while (!paramxi.a()) {
      return;
    }
    if (!paramxi.e())
    {
      yi.a(paramxi.d());
      return;
    }
    try
    {
      yc.a().b(paramxi.d());
      try
      {
        c(paramxi);
        paramxi.m();
        paramxi.g();
        return;
      }
      finally {}
      return;
    }
    catch (SocketException localSocketException)
    {
      yc.a().a("Unable to untagSocket(): " + localSocketException);
      yi.a(paramxi.d());
    }
  }
  
  void b(xi paramxi)
  {
    if (!paramxi.k()) {
      throw new IllegalArgumentException();
    }
    if (!paramxi.e()) {
      return;
    }
    try
    {
      c(paramxi);
      return;
    }
    finally {}
  }
  
  boolean b()
  {
    label317:
    label320:
    label323:
    label326:
    for (;;)
    {
      try
      {
        if (d.isEmpty()) {
          return false;
        }
        ArrayList localArrayList = new ArrayList();
        i = 0;
        l2 = System.nanoTime();
        l1 = c;
        ListIterator localListIterator = d.listIterator(d.size());
        xi localxi;
        if (localListIterator.hasPrevious())
        {
          localxi = (xi)localListIterator.previous();
          long l3 = localxi.i() + c - l2;
          if ((l3 <= 0L) || (!localxi.e()))
          {
            localListIterator.remove();
            localArrayList.add(localxi);
            break label323;
          }
          if (!localxi.h()) {
            break label320;
          }
          l1 = Math.min(l1, l3);
          i += 1;
          break label323;
        }
        localListIterator = d.listIterator(d.size());
        if ((localListIterator.hasPrevious()) && (i > b))
        {
          localxi = (xi)localListIterator.previous();
          if (!localxi.h()) {
            break label317;
          }
          localArrayList.add(localxi);
          localListIterator.remove();
          i -= 1;
          break label326;
        }
        boolean bool = localArrayList.isEmpty();
        if (!bool) {}
      }
      finally
      {
        try
        {
          long l1;
          long l2 = l1 / 1000000L;
          wait(l2, (int)(l1 - 1000000L * l2));
          return true;
        }
        catch (InterruptedException localInterruptedException) {}
        localObject = finally;
      }
      int j = ((List)localObject).size();
      int i = 0;
      while (i < j)
      {
        yi.a(((xi)((List)localObject).get(i)).d());
        i += 1;
      }
      return true;
      break label326;
    }
  }
}

/* Location:
 * Qualified Name:     xj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */