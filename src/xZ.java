import java.util.Collections;
import java.util.List;

public final class xz
{
  private final xt a;
  private final xs b;
  private final int c;
  private final String d;
  private final xh e;
  private final xi f;
  private final xC g;
  private xz h;
  private xz i;
  private final xz j;
  private volatile wM k;
  
  private xz(xB paramxB)
  {
    a = xB.a(paramxB);
    b = xB.b(paramxB);
    c = xB.c(paramxB);
    d = xB.d(paramxB);
    e = xB.e(paramxB);
    f = xB.f(paramxB).a();
    g = xB.g(paramxB);
    h = xB.h(paramxB);
    i = xB.i(paramxB);
    j = xB.j(paramxB);
  }
  
  public String a(String paramString)
  {
    return a(paramString, null);
  }
  
  public String a(String paramString1, String paramString2)
  {
    paramString1 = f.a(paramString1);
    if (paramString1 != null) {
      paramString2 = paramString1;
    }
    return paramString2;
  }
  
  public xt a()
  {
    return a;
  }
  
  public xs b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public boolean d()
  {
    return (c >= 200) && (c < 300);
  }
  
  public String e()
  {
    return d;
  }
  
  public xh f()
  {
    return e;
  }
  
  public xi g()
  {
    return f;
  }
  
  public xC h()
  {
    return g;
  }
  
  public xB i()
  {
    return new xB(this, null);
  }
  
  public xz j()
  {
    return h;
  }
  
  public xz k()
  {
    return i;
  }
  
  public List<wX> l()
  {
    if (c == 401) {}
    for (String str = "WWW-Authenticate";; str = "Proxy-Authenticate")
    {
      return yx.b(g(), str);
      if (c != 407) {
        break;
      }
    }
    return Collections.emptyList();
  }
  
  public wM m()
  {
    wM localwM = k;
    if (localwM != null) {
      return localwM;
    }
    localwM = wM.a(f);
    k = localwM;
    return localwM;
  }
  
  public String toString()
  {
    return "Response{protocol=" + b + ", code=" + c + ", message=" + d + ", url=" + a.c() + '}';
  }
}

/* Location:
 * Qualified Name:     xz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */