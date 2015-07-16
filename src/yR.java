import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

public final class yr
{
  private static final byte[] h = { 13, 10 };
  private static final byte[] i = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final byte[] j = { 48, 13, 10, 13, 10 };
  private final xj a;
  private final xi b;
  private final Socket c;
  private final KB d;
  private final KA e;
  private int f = 0;
  private int g = 0;
  
  public yr(xj paramxj, xi paramxi, Socket paramSocket)
  {
    a = paramxj;
    b = paramxi;
    c = paramSocket;
    d = KI.a(KI.b(paramSocket));
    e = KI.a(KI.a(paramSocket));
  }
  
  public KS a(long paramLong)
  {
    if (f != 1) {
      throw new IllegalStateException("state: " + f);
    }
    f = 2;
    return new yw(this, paramLong, null);
  }
  
  public KT a(yB paramyB)
  {
    if (f != 4) {
      throw new IllegalStateException("state: " + f);
    }
    f = 5;
    return new yv(this, paramyB);
  }
  
  public void a()
  {
    g = 1;
    if (f == 0)
    {
      g = 0;
      xW.b.a(a, b);
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
    xW.b.a(b, paramObject);
  }
  
  public void a(xs paramxs, String paramString)
  {
    if (f != 0) {
      throw new IllegalStateException("state: " + f);
    }
    e.b(paramString).b("\r\n");
    int k = 0;
    int m = paramxs.a();
    while (k < m)
    {
      e.b(paramxs.a(k)).b(": ").b(paramxs.b(k)).b("\r\n");
      k += 1;
    }
    e.b("\r\n");
    f = 1;
  }
  
  public void a(xu paramxu)
  {
    for (;;)
    {
      String str = d.q();
      if (str.length() == 0) {
        break;
      }
      xW.b.a(paramxu, str);
    }
  }
  
  public void a(yL paramyL)
  {
    if (f != 1) {
      throw new IllegalStateException("state: " + f);
    }
    f = 3;
    paramyL.a(e);
  }
  
  public KT b(long paramLong)
  {
    if (f != 4) {
      throw new IllegalStateException("state: " + f);
    }
    f = 5;
    return new yx(this, paramLong);
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
  
  public xL g()
  {
    if ((f != 1) && (f != 3)) {
      throw new IllegalStateException("state: " + f);
    }
    yO localyO;
    xL localxL;
    do
    {
      localyO = yO.a(d.q());
      localxL = new xL().a(a).a(b).a(c);
      xu localxu = new xu();
      a(localxu);
      localxu.a(yH.d, a.toString());
      localxL.a(localxu.a());
    } while (b == 100);
    f = 4;
    return localxL;
  }
  
  public KS h()
  {
    if (f != 1) {
      throw new IllegalStateException("state: " + f);
    }
    f = 2;
    return new yu(this, null);
  }
  
  public KT i()
  {
    if (f != 4) {
      throw new IllegalStateException("state: " + f);
    }
    f = 5;
    return new yy(this, null);
  }
}

/* Location:
 * Qualified Name:     yr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */