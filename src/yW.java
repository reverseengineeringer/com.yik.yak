import java.net.Proxy;

public final class yw
  implements yF
{
  private final yr a;
  private final yh b;
  
  public yw(yr paramyr, yh paramyh)
  {
    a = paramyr;
    b = paramyh;
  }
  
  private Kl b(xz paramxz)
  {
    if (!yr.a(paramxz)) {
      return b.b(0L);
    }
    if ("chunked".equalsIgnoreCase(paramxz.a("Transfer-Encoding"))) {
      return b.a(a);
    }
    long l = yx.a(paramxz);
    if (l != -1L) {
      return b.b(l);
    }
    return b.i();
  }
  
  public Kk a(xt paramxt, long paramLong)
  {
    if ("chunked".equalsIgnoreCase(paramxt.a("Transfer-Encoding"))) {
      return b.h();
    }
    if (paramLong != -1L) {
      return b.a(paramLong);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }
  
  public xC a(xz paramxz)
  {
    Kl localKl = b(paramxz);
    return new yz(paramxz.g(), Ka.a(localKl));
  }
  
  public void a()
  {
    b.d();
  }
  
  public void a(xt paramxt)
  {
    a.b();
    String str = yA.a(paramxt, a.i().c().b().type(), a.i().l());
    b.a(paramxt.e(), str);
  }
  
  public void a(yB paramyB)
  {
    b.a(paramyB);
  }
  
  public void a(yr paramyr)
  {
    b.a(paramyr);
  }
  
  public xB b()
  {
    return b.g();
  }
  
  public void c()
  {
    if (d())
    {
      b.a();
      return;
    }
    b.b();
  }
  
  public boolean d()
  {
    if ("close".equalsIgnoreCase(a.g().a("Connection"))) {}
    while (("close".equalsIgnoreCase(a.h().a("Connection"))) || (b.c())) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     yw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */