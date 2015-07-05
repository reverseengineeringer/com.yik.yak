import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

public final class yh
{
  private static final byte[] h = { 13, 10 };
  private static final byte[] i = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final byte[] j = { 48, 13, 10, 13, 10 };
  private final xa a;
  private final wZ b;
  private final Socket c;
  private final JT d;
  private final JS e;
  private int f = 0;
  private int g = 0;
  
  public yh(xa paramxa, wZ paramwZ, Socket paramSocket)
  {
    a = paramxa;
    b = paramwZ;
    c = paramSocket;
    d = Ka.a(Ka.b(paramSocket));
    e = Ka.a(Ka.a(paramSocket));
  }
  
  public Kk a(long paramLong)
  {
    if (f != 1) {
      throw new IllegalStateException("state: " + f);
    }
    f = 2;
    return new ym(this, paramLong, null);
  }
  
  public Kl a(yr paramyr)
  {
    if (f != 4) {
      throw new IllegalStateException("state: " + f);
    }
    f = 5;
    return new yl(this, paramyr);
  }
  
  public void a()
  {
    g = 1;
    if (f == 0)
    {
      g = 0;
      xM.b.a(a, b);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 != 0) {
      d.b().a(paramInt1, TimeUnit.MILLISECONDS);
    }
    if (paramInt2 != 0) {
      e.b().a(paramInt2, TimeUnit.MILLISECONDS);
    }
  }
  
  public void a(Object paramObject)
  {
    xM.b.a(b, paramObject);
  }
  
  public void a(xi paramxi, String paramString)
  {
    if (f != 0) {
      throw new IllegalStateException("state: " + f);
    }
    e.b(paramString).b("\r\n");
    int k = 0;
    int m = paramxi.a();
    while (k < m)
    {
      e.b(paramxi.a(k)).b(": ").b(paramxi.b(k)).b("\r\n");
      k += 1;
    }
    e.b("\r\n");
    f = 1;
  }
  
  public void a(xk paramxk)
  {
    for (;;)
    {
      String str = d.q();
      if (str.length() == 0) {
        break;
      }
      xM.b.a(paramxk, str);
    }
  }
  
  public void a(yB paramyB)
  {
    if (f != 1) {
      throw new IllegalStateException("state: " + f);
    }
    f = 3;
    paramyB.a(e);
  }
  
  public Kl b(long paramLong)
  {
    if (f != 4) {
      throw new IllegalStateException("state: " + f);
    }
    f = 5;
    return new yn(this, paramLong);
  }
  
  public void b()
  {
    g = 2;
    if (f == 0)
    {
      f = 6;
      b.d().close();
    }
  }
  
  public boolean c()
  {
    return f == 6;
  }
  
  public void d()
  {
    e.a();
  }
  
  public long e()
  {
    return d.d().c();
  }
  
  public boolean f()
  {
    try
    {
      int k = c.getSoTimeout();
      try
      {
        c.setSoTimeout(1);
        boolean bool = d.h();
        return !bool;
      }
      finally
      {
        c.setSoTimeout(k);
      }
      return false;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      return true;
    }
    catch (IOException localIOException) {}
  }
  
  public xB g()
  {
    if ((f != 1) && (f != 3)) {
      throw new IllegalStateException("state: " + f);
    }
    yE localyE;
    xB localxB;
    do
    {
      localyE = yE.a(d.q());
      localxB = new xB().a(a).a(b).a(c);
      xk localxk = new xk();
      a(localxk);
      localxk.a(yx.d, a.toString());
      localxB.a(localxk.a());
    } while (b == 100);
    f = 4;
    return localxB;
  }
  
  public Kk h()
  {
    if (f != 1) {
      throw new IllegalStateException("state: " + f);
    }
    f = 2;
    return new yk(this, null);
  }
  
  public Kl i()
  {
    if (f != 4) {
      throw new IllegalStateException("state: " + f);
    }
    f = 5;
    return new yo(this, null);
  }
}

/* Location:
 * Qualified Name:     yh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */