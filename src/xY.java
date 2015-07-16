import java.net.CookieHandler;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public class xy
  implements Cloneable
{
  private static final List<xC> a = yi.a(new xC[] { xC.d, xC.c, xC.b });
  private static final List<xl> b = yi.a(new xl[] { xl.a, xl.b, xl.c });
  private static SSLSocketFactory c;
  private int A;
  private final yh d;
  private xp e;
  private Proxy f;
  private List<xC> g;
  private List<xl> h;
  private final List<xv> i = new ArrayList();
  private final List<xv> j = new ArrayList();
  private ProxySelector k;
  private CookieHandler l;
  private xX m;
  private wO n;
  private SocketFactory o;
  private SSLSocketFactory p;
  private HostnameVerifier q;
  private xd r;
  private wN s;
  private xj t;
  private xZ u;
  private boolean v = true;
  private boolean w = true;
  private boolean x = true;
  private int y;
  private int z;
  
  static
  {
    xW.b = new xz();
  }
  
  public xy()
  {
    d = new yh();
    e = new xp();
  }
  
  private xy(xy paramxy)
  {
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
    i.addAll(i);
    j.addAll(j);
    k = k;
    l = l;
    n = n;
    if (n != null) {}
    for (xX localxX = n.a;; localxX = m)
    {
      m = localxX;
      o = o;
      p = p;
      q = q;
      r = r;
      s = s;
      t = t;
      u = u;
      v = v;
      w = w;
      x = x;
      y = y;
      z = z;
      A = A;
      return;
    }
  }
  
  /* Error */
  private SSLSocketFactory y()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 168	xy:c	Ljavax/net/ssl/SSLSocketFactory;
    //   5: astore_1
    //   6: aload_1
    //   7: ifnonnull +23 -> 30
    //   10: ldc -86
    //   12: invokestatic 176	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   15: astore_1
    //   16: aload_1
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 180	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   23: aload_1
    //   24: invokevirtual 183	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   27: putstatic 168	xy:c	Ljavax/net/ssl/SSLSocketFactory;
    //   30: getstatic 168	xy:c	Ljavax/net/ssl/SSLSocketFactory;
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: areturn
    //   38: astore_1
    //   39: new 185	java/lang/AssertionError
    //   42: dup
    //   43: invokespecial 186	java/lang/AssertionError:<init>	()V
    //   46: athrow
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	xy
    //   5	32	1	localObject1	Object
    //   38	1	1	localGeneralSecurityException	java.security.GeneralSecurityException
    //   47	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   10	30	38	java/security/GeneralSecurityException
    //   2	6	47	finally
    //   10	30	47	finally
    //   30	34	47	finally
    //   39	47	47	finally
  }
  
  public final int a()
  {
    return y;
  }
  
  public wY a(xD paramxD)
  {
    return new wY(this, paramxD);
  }
  
  public final xy a(Proxy paramProxy)
  {
    f = paramProxy;
    return this;
  }
  
  public final xy a(List<xC> paramList)
  {
    paramList = yi.a(paramList);
    if (!paramList.contains(xC.b)) {
      throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + paramList);
    }
    if (paramList.contains(xC.a)) {
      throw new IllegalArgumentException("protocols must not contain http/1.0: " + paramList);
    }
    if (paramList.contains(null)) {
      throw new IllegalArgumentException("protocols must not contain null");
    }
    g = yi.a(paramList);
    return this;
  }
  
  public final xy a(HostnameVerifier paramHostnameVerifier)
  {
    q = paramHostnameVerifier;
    return this;
  }
  
  public final xy a(SSLSocketFactory paramSSLSocketFactory)
  {
    p = paramSSLSocketFactory;
    return this;
  }
  
  public final xy a(wO paramwO)
  {
    n = paramwO;
    m = null;
    return this;
  }
  
  public final xy a(xd paramxd)
  {
    r = paramxd;
    return this;
  }
  
  public final void a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0");
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    paramLong = paramTimeUnit.toMillis(paramLong);
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("Timeout too large.");
    }
    y = ((int)paramLong);
  }
  
  public final void a(boolean paramBoolean)
  {
    w = paramBoolean;
  }
  
  public final int b()
  {
    return z;
  }
  
  public final void b(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0");
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    paramLong = paramTimeUnit.toMillis(paramLong);
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("Timeout too large.");
    }
    z = ((int)paramLong);
  }
  
  public final int c()
  {
    return A;
  }
  
  public final Proxy d()
  {
    return f;
  }
  
  public final ProxySelector e()
  {
    return k;
  }
  
  public final CookieHandler f()
  {
    return l;
  }
  
  final xX g()
  {
    return m;
  }
  
  public final SocketFactory h()
  {
    return o;
  }
  
  public final SSLSocketFactory i()
  {
    return p;
  }
  
  public final HostnameVerifier j()
  {
    return q;
  }
  
  public final xd k()
  {
    return r;
  }
  
  public final wN l()
  {
    return s;
  }
  
  public final xj m()
  {
    return t;
  }
  
  public final boolean n()
  {
    return v;
  }
  
  public final boolean o()
  {
    return w;
  }
  
  public final boolean p()
  {
    return x;
  }
  
  final yh q()
  {
    return d;
  }
  
  public final xp r()
  {
    return e;
  }
  
  public final List<xC> s()
  {
    return g;
  }
  
  public final List<xl> t()
  {
    return h;
  }
  
  public List<xv> u()
  {
    return i;
  }
  
  public List<xv> v()
  {
    return j;
  }
  
  final xy w()
  {
    xy localxy = new xy(this);
    if (k == null) {
      k = ProxySelector.getDefault();
    }
    if (l == null) {
      l = CookieHandler.getDefault();
    }
    if (o == null) {
      o = SocketFactory.getDefault();
    }
    if (p == null) {
      p = y();
    }
    if (q == null) {
      q = zO.a;
    }
    if (r == null) {
      r = xd.a;
    }
    if (s == null) {
      s = yl.a;
    }
    if (t == null) {
      t = xj.a();
    }
    if (g == null) {
      g = a;
    }
    if (h == null) {
      h = b;
    }
    if (u == null) {
      u = xZ.a;
    }
    return localxy;
  }
  
  public final xy x()
  {
    try
    {
      xy localxy = (xy)super.clone();
      return localxy;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     xy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */