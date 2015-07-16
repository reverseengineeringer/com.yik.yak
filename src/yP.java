import java.net.URL;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class yp
{
  final long a;
  final xD b;
  final xJ c;
  private Date d;
  private String e;
  private Date f;
  private String g;
  private Date h;
  private long i;
  private long j;
  private String k;
  private int l = -1;
  
  public yp(long paramLong, xD paramxD, xJ paramxJ)
  {
    a = paramLong;
    b = paramxD;
    c = paramxJ;
    if (paramxJ != null)
    {
      paramxD = paramxJ.g();
      int m = 0;
      int n = paramxD.a();
      if (m < n)
      {
        paramxJ = paramxD.a(m);
        String str = paramxD.b(m);
        if ("Date".equalsIgnoreCase(paramxJ))
        {
          d = yz.a(str);
          e = str;
        }
        for (;;)
        {
          m += 1;
          break;
          if ("Expires".equalsIgnoreCase(paramxJ))
          {
            h = yz.a(str);
          }
          else if ("Last-Modified".equalsIgnoreCase(paramxJ))
          {
            f = yz.a(str);
            g = str;
          }
          else if ("ETag".equalsIgnoreCase(paramxJ))
          {
            k = str;
          }
          else if ("Age".equalsIgnoreCase(paramxJ))
          {
            l = yq.b(str, -1);
          }
          else if (yH.b.equalsIgnoreCase(paramxJ))
          {
            i = Long.parseLong(str);
          }
          else if (yH.c.equalsIgnoreCase(paramxJ))
          {
            j = Long.parseLong(str);
          }
        }
      }
    }
  }
  
  private static boolean a(xD paramxD)
  {
    return (paramxD.a("If-Modified-Since") != null) || (paramxD.a("If-None-Match") != null);
  }
  
  private yn b()
  {
    long l4 = 0L;
    if (c == null) {
      return new yn(b, null, null);
    }
    if ((b.i()) && (c.f() == null)) {
      return new yn(b, null, null);
    }
    if (!yn.a(c, b)) {
      return new yn(b, null, null);
    }
    Object localObject = b.h();
    if ((((wV)localObject).a()) || (a(b))) {
      return new yn(b, null, null);
    }
    long l5 = d();
    long l2 = c();
    long l1 = l2;
    if (((wV)localObject).c() != -1) {
      l1 = Math.min(l2, TimeUnit.SECONDS.toMillis(((wV)localObject).c()));
    }
    if (((wV)localObject).h() != -1) {}
    for (l2 = TimeUnit.SECONDS.toMillis(((wV)localObject).h());; l2 = 0L)
    {
      wV localwV = c.m();
      long l3 = l4;
      if (!localwV.f())
      {
        l3 = l4;
        if (((wV)localObject).g() != -1) {
          l3 = TimeUnit.SECONDS.toMillis(((wV)localObject).g());
        }
      }
      if ((!localwV.a()) && (l5 + l2 < l3 + l1))
      {
        localObject = c.i();
        if (l2 + l5 >= l1) {
          ((xL)localObject).b("Warning", "110 HttpURLConnection \"Response is stale\"");
        }
        if ((l5 > 86400000L) && (e())) {
          ((xL)localObject).b("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
        }
        return new yn(null, ((xL)localObject).a(), null);
      }
      localObject = b.g();
      if (f != null) {
        ((xF)localObject).a("If-Modified-Since", g);
      }
      for (;;)
      {
        if (k != null) {
          ((xF)localObject).a("If-None-Match", k);
        }
        localObject = ((xF)localObject).b();
        if (!a((xD)localObject)) {
          break;
        }
        return new yn((xD)localObject, c, null);
        if (d != null) {
          ((xF)localObject).a("If-Modified-Since", e);
        }
      }
      return new yn((xD)localObject, null, null);
    }
  }
  
  private long c()
  {
    long l2 = 0L;
    wV localwV = c.m();
    if (localwV.c() != -1) {
      l1 = TimeUnit.SECONDS.toMillis(localwV.c());
    }
    label83:
    do
    {
      do
      {
        return l1;
        if (h != null)
        {
          if (d != null)
          {
            l1 = d.getTime();
            l1 = h.getTime() - l1;
            if (l1 <= 0L) {
              break label83;
            }
          }
          for (;;)
          {
            return l1;
            l1 = j;
            break;
            l1 = 0L;
          }
        }
        l1 = l2;
      } while (f == null);
      l1 = l2;
    } while (c.a().a().getQuery() != null);
    if (d != null) {}
    for (long l1 = d.getTime();; l1 = i)
    {
      long l3 = l1 - f.getTime();
      l1 = l2;
      if (l3 <= 0L) {
        break;
      }
      return l3 / 10L;
    }
  }
  
  private long d()
  {
    long l1 = 0L;
    if (d != null) {
      l1 = Math.max(0L, j - d.getTime());
    }
    long l2 = l1;
    if (l != -1) {
      l2 = Math.max(l1, TimeUnit.SECONDS.toMillis(l));
    }
    return l2 + (j - i) + (a - j);
  }
  
  private boolean e()
  {
    return (c.m().c() == -1) && (h == null);
  }
  
  public yn a()
  {
    yn localyn2 = b();
    yn localyn1 = localyn2;
    if (a != null)
    {
      localyn1 = localyn2;
      if (b.h().i()) {
        localyn1 = new yn(null, null, null);
      }
    }
    return localyn1;
  }
}

/* Location:
 * Qualified Name:     yp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */