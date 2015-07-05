import java.net.URL;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class yf
{
  final long a;
  final xt b;
  final xz c;
  private Date d;
  private String e;
  private Date f;
  private String g;
  private Date h;
  private long i;
  private long j;
  private String k;
  private int l = -1;
  
  public yf(long paramLong, xt paramxt, xz paramxz)
  {
    a = paramLong;
    b = paramxt;
    c = paramxz;
    if (paramxz != null)
    {
      paramxt = paramxz.g();
      int m = 0;
      int n = paramxt.a();
      if (m < n)
      {
        paramxz = paramxt.a(m);
        String str = paramxt.b(m);
        if ("Date".equalsIgnoreCase(paramxz))
        {
          d = yp.a(str);
          e = str;
        }
        for (;;)
        {
          m += 1;
          break;
          if ("Expires".equalsIgnoreCase(paramxz))
          {
            h = yp.a(str);
          }
          else if ("Last-Modified".equalsIgnoreCase(paramxz))
          {
            f = yp.a(str);
            g = str;
          }
          else if ("ETag".equalsIgnoreCase(paramxz))
          {
            k = str;
          }
          else if ("Age".equalsIgnoreCase(paramxz))
          {
            l = yg.b(str, -1);
          }
          else if (yx.b.equalsIgnoreCase(paramxz))
          {
            i = Long.parseLong(str);
          }
          else if (yx.c.equalsIgnoreCase(paramxz))
          {
            j = Long.parseLong(str);
          }
        }
      }
    }
  }
  
  private static boolean a(xt paramxt)
  {
    return (paramxt.a("If-Modified-Since") != null) || (paramxt.a("If-None-Match") != null);
  }
  
  private yd b()
  {
    long l4 = 0L;
    if (c == null) {
      return new yd(b, null, null);
    }
    if ((b.i()) && (c.f() == null)) {
      return new yd(b, null, null);
    }
    if (!yd.a(c, b)) {
      return new yd(b, null, null);
    }
    Object localObject = b.h();
    if ((((wM)localObject).a()) || (a(b))) {
      return new yd(b, null, null);
    }
    long l5 = d();
    long l2 = c();
    long l1 = l2;
    if (((wM)localObject).c() != -1) {
      l1 = Math.min(l2, TimeUnit.SECONDS.toMillis(((wM)localObject).c()));
    }
    if (((wM)localObject).h() != -1) {}
    for (l2 = TimeUnit.SECONDS.toMillis(((wM)localObject).h());; l2 = 0L)
    {
      wM localwM = c.m();
      long l3 = l4;
      if (!localwM.f())
      {
        l3 = l4;
        if (((wM)localObject).g() != -1) {
          l3 = TimeUnit.SECONDS.toMillis(((wM)localObject).g());
        }
      }
      if ((!localwM.a()) && (l5 + l2 < l3 + l1))
      {
        localObject = c.i();
        if (l2 + l5 >= l1) {
          ((xB)localObject).b("Warning", "110 HttpURLConnection \"Response is stale\"");
        }
        if ((l5 > 86400000L) && (e())) {
          ((xB)localObject).b("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
        }
        return new yd(null, ((xB)localObject).a(), null);
      }
      localObject = b.g();
      if (f != null) {
        ((xv)localObject).a("If-Modified-Since", g);
      }
      for (;;)
      {
        if (k != null) {
          ((xv)localObject).a("If-None-Match", k);
        }
        localObject = ((xv)localObject).b();
        if (!a((xt)localObject)) {
          break;
        }
        return new yd((xt)localObject, c, null);
        if (d != null) {
          ((xv)localObject).a("If-Modified-Since", e);
        }
      }
      return new yd((xt)localObject, null, null);
    }
  }
  
  private long c()
  {
    long l2 = 0L;
    wM localwM = c.m();
    if (localwM.c() != -1) {
      l1 = TimeUnit.SECONDS.toMillis(localwM.c());
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
  
  public yd a()
  {
    yd localyd2 = b();
    yd localyd1 = localyd2;
    if (a != null)
    {
      localyd1 = localyd2;
      if (b.h().i()) {
        localyd1 = new yd(null, null, null);
      }
    }
    return localyd1;
  }
}

/* Location:
 * Qualified Name:     yf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */