import java.net.CookieHandler;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public class xo
  implements Cloneable
{
  private static final List<xs> a = xY.a(new xs[] { xs.d, xs.c, xs.b });
  private static final List<xc> b = xY.a(new xc[] { xc.a, xc.b, xc.c });
  private static SSLSocketFactory c;
  private int A;
  private final xX d;
  private xg e;
  private Proxy f;
  private List<xs> g;
  private List<xc> h;
  private final List<xl> i = new ArrayList();
  private final List<xl> j = new ArrayList();
  private ProxySelector k;
  private CookieHandler l;
  private xN m;
  private wF n;
  private SocketFactory o;
  private SSLSocketFactory p;
  private HostnameVerifier q;
  private wU r;
  private wE s;
  private xa t;
  private xP u;
  private boolean v = true;
  private boolean w = true;
  private boolean x = true;
  private int y;
  private int z;
  
  static
  {
    xM.b = new xp();
  }
  
  public xo()
  {
    d = new xX();
    e = new xg();
  }
  
  private xo(xo paramxo)
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
    for (xN localxN = n.a;; localxN = m)
    {
      m = localxN;
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
    //   2: getstatic 168	xo:c	Ljavax/net/ssl/SSLSocketFactory;
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
    //   27: putstatic 168	xo:c	Ljavax/net/ssl/SSLSocketFactory;
    //   30: getstatic 168	xo:c	Ljavax/net/ssl/SSLSocketFactory;
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
    //   0	52	0	this	xo
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
  
  public wP a(xt paramxt)
  {
    return new wP(this, paramxt);
  }
  
  public final xo a(Proxy paramProxy)
  {
    f = paramProxy;
    return this;
  }
  
  public final xo a(List<xs> paramList)
  {
    paramList = xY.a(paramList);
    if (!paramList.contains(xs.b)) {
      throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + paramList);
    }
    if (paramList.contains(xs.a)) {
      throw new IllegalArgumentException("protocols must not contain http/1.0: " + paramList);
    }
    if (paramList.contains(null)) {
      throw new IllegalArgumentException("protocols must not contain null");
    }
    g = xY.a(paramList);
    return this;
  }
  
  public final xo a(HostnameVerifier paramHostnameVerifier)
  {
    q = paramHostnameVerifier;
    return this;
  }
  
  public final xo a(SSLSocketFactory paramSSLSocketFactory)
  {
    p = paramSSLSocketFactory;
    return this;
  }
  
  public final xo a(wF paramwF)
  {
    n = paramwF;
    m = null;
    return this;
  }
  
  public final xo a(wU paramwU)
  {
    r = paramwU;
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
  
  final xN g()
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
  
  public final wU k()
  {
    return r;
  }
  
  public final wE l()
  {
    return s;
  }
  
  public final xa m()
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
  
  final xX q()
  {
    return d;
  }
  
  public final xg r()
  {
    return e;
  }
  
  public final List<xs> s()
  {
    return g;
  }
  
  public final List<xc> t()
  {
    return h;
  }
  
  public List<xl> u()
  {
    return i;
  }
  
  public List<xl> v()
  {
    return j;
  }
  
  final xo w()
  {
    xo localxo = new xo(this);
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
      q = zE.a;
    }
    if (r == null) {
      r = wU.a;
    }
    if (s == null) {
      s = yb.a;
    }
    if (t == null) {
      t = xa.a();
    }
    if (g == null) {
      g = a;
    }
    if (h == null) {
      h = b;
    }
    if (u == null) {
      u = xP.a;
    }
    return localxo;
  }
  
  public final xo x()
  {
    try
    {
      xo localxo = (xo)super.clone();
      return localxo;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     xo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */