import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class xa
{
  private static final xa a;
  private final int b;
  private final long c;
  private final LinkedList<wZ> d = new LinkedList();
  private Executor e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), xY.a("OkHttp ConnectionPool", true));
  private final Runnable f = new xb(this);
  
  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    if (str2 != null) {}
    for (long l = Long.parseLong(str2); (str1 != null) && (!Boolean.parseBoolean(str1)); l = 300000L)
    {
      a = new xa(0, l);
      return;
    }
    if (str3 != null)
    {
      a = new xa(Integer.parseInt(str3), l);
      return;
    }
    a = new xa(5, l);
  }
  
  public xa(int paramInt, long paramLong)
  {
    b = paramInt;
    c = (paramLong * 1000L * 1000L);
  }
  
  public static xa a()
  {
    return a;
  }
  
  private void c()
  {
    while (b()) {}
  }
  
  private void c(wZ paramwZ)
  {
    boolean bool = d.isEmpty();
    d.addFirst(paramwZ);
    if (bool)
    {
      e.execute(f);
      return;
    }
    notifyAll();
  }
  
  public wZ a(wD paramwD)
  {
    for (;;)
    {
      try
      {
        ListIterator localListIterator = d.listIterator(d.size());
        if (localListIterator.hasPrevious())
        {
          wZ localwZ2 = (wZ)localListIterator.previous();
          if ((localwZ2.c().a().equals(paramwD)) && (localwZ2.e()) && (System.nanoTime() - localwZ2.i() < c))
          {
            localListIterator.remove();
            boolean bool = localwZ2.k();
            wZ localwZ1 = localwZ2;
            if (!bool) {}
            try
            {
              xS.a().a(localwZ2.d());
              localwZ1 = localwZ2;
              if ((localwZ1 != null) && (localwZ1.k())) {
                d.addFirst(localwZ1);
              }
              return localwZ1;
            }
            catch (SocketException localSocketException)
            {
              xY.a(localwZ2.d());
              xS.a().a("Unable to tagSocket(): " + localSocketException);
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
  
  void a(wZ paramwZ)
  {
    if (paramwZ.k()) {}
    while (!paramwZ.a()) {
      return;
    }
    if (!paramwZ.e())
    {
      xY.a(paramwZ.d());
      return;
    }
    try
    {
      xS.a().b(paramwZ.d());
      try
      {
        c(paramwZ);
        paramwZ.m();
        paramwZ.g();
        return;
      }
      finally {}
      return;
    }
    catch (SocketException localSocketException)
    {
      xS.a().a("Unable to untagSocket(): " + localSocketException);
      xY.a(paramwZ.d());
    }
  }
  
  void b(wZ paramwZ)
  {
    if (!paramwZ.k()) {
      throw new IllegalArgumentException();
    }
    if (!paramwZ.e()) {
      return;
    }
    try
    {
      c(paramwZ);
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
        wZ localwZ;
        if (localListIterator.hasPrevious())
        {
          localwZ = (wZ)localListIterator.previous();
          long l3 = localwZ.i() + c - l2;
          if ((l3 <= 0L) || (!localwZ.e()))
          {
            localListIterator.remove();
            localArrayList.add(localwZ);
            break label323;
          }
          if (!localwZ.h()) {
            break label320;
          }
          l1 = Math.min(l1, l3);
          i += 1;
          break label323;
        }
        localListIterator = d.listIterator(d.size());
        if ((localListIterator.hasPrevious()) && (i > b))
        {
          localwZ = (wZ)localListIterator.previous();
          if (!localwZ.h()) {
            break label317;
          }
          localArrayList.add(localwZ);
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
        xY.a(((wZ)((List)localObject).get(i)).d());
        i += 1;
      }
      return true;
      break label326;
    }
  }
}

/* Location:
 * Qualified Name:     xa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */