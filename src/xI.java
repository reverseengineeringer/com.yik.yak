import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.URL;
import java.security.Principal;
import java.security.cert.X509Certificate;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class xi
{
  private final xj a;
  private final xN b;
  private Socket c;
  private boolean d = false;
  private yr e;
  private zv f;
  private xC g = xC.b;
  private long h;
  private xr i;
  private int j;
  private Object k;
  
  public xi(xj paramxj, xN paramxN)
  {
    a = paramxj;
    b = paramxN;
  }
  
  private xD a(xD paramxD)
  {
    if (!b.c()) {
      return null;
    }
    String str = paramxD.a().getHost();
    int m = yi.a(paramxD.a());
    if (m == yi.a("https")) {}
    for (Object localObject = str;; localObject = str + ":" + m)
    {
      localObject = new xF().a(new URL("https", str, m, "/")).a("Host", (String)localObject).a("Proxy-Connection", "Keep-Alive");
      str = paramxD.a("User-Agent");
      if (str != null) {
        ((xF)localObject).a("User-Agent", str);
      }
      paramxD = paramxD.a("Proxy-Authorization");
      if (paramxD != null) {
        ((xF)localObject).a("Proxy-Authorization", paramxD);
      }
      return ((xF)localObject).b();
    }
  }
  
  private void a(xD paramxD, int paramInt1, int paramInt2)
  {
    yc localyc = yc.a();
    if (paramxD != null) {
      b(paramxD, paramInt1, paramInt2);
    }
    c = b.a.e.createSocket(c, b.a.b, b.a.c, true);
    paramxD = (SSLSocket)c;
    b.d.a(paramxD, b);
    try
    {
      paramxD.startHandshake();
      if (b.d.d())
      {
        String str = localyc.b(paramxD);
        if (str != null) {
          g = xC.a(str);
        }
      }
      localyc.a(paramxD);
      i = xr.a(paramxD.getSession());
      if (!b.a.f.verify(b.a.b, paramxD.getSession()))
      {
        paramxD = (X509Certificate)paramxD.getSession().getPeerCertificates()[0];
        throw new IOException("Hostname " + b.a.b + " not verified:" + "\n    certificate: " + xd.a(paramxD) + "\n    DN: " + paramxD.getSubjectDN().getName() + "\n    subjectAltNames: " + zO.a(paramxD));
      }
    }
    finally
    {
      localyc.a(paramxD);
    }
    b.a.g.a(b.a.b, i.b());
    if ((g == xC.c) || (g == xC.d))
    {
      paramxD.setSoTimeout(0);
      f = new zD(b.a.a(), true, c).a(g).a();
      f.e();
      return;
    }
    e = new yr(a, this, c);
  }
  
  private void b(xD paramxD, int paramInt1, int paramInt2)
  {
    yr localyr = new yr(a, this, c);
    localyr.a(paramInt1, paramInt2);
    Object localObject = paramxD.a();
    String str = "CONNECT " + ((URL)localObject).getHost() + ":" + ((URL)localObject).getPort() + " HTTP/1.1";
    do
    {
      localyr.a(paramxD.e(), str);
      localyr.d();
      paramxD = localyr.g().a(paramxD).a();
      long l2 = yH.a(paramxD);
      long l1 = l2;
      if (l2 == -1L) {
        l1 = 0L;
      }
      localObject = localyr.b(l1);
      yi.b((KT)localObject, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
      ((KT)localObject).close();
      switch (paramxD.c())
      {
      default: 
        throw new IOException("Unexpected response code for CONNECT: " + paramxD.c());
      case 200: 
        if (localyr.e() <= 0L) {
          break;
        }
        throw new IOException("TLS tunnel buffered too many bytes!");
      case 407: 
        localObject = yH.a(b.a.h, paramxD, b.b);
        paramxD = (xD)localObject;
      }
    } while (localObject != null);
    throw new IOException("Failed to authenticate with proxy");
  }
  
  yP a(yB paramyB)
  {
    if (f != null) {
      return new yN(paramyB, f);
    }
    return new yG(paramyB, e);
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if (!d) {
      throw new IllegalStateException("setTimeouts - not connected");
    }
    if (e != null)
    {
      c.setSoTimeout(paramInt1);
      e.a(paramInt1, paramInt2);
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, xD paramxD)
  {
    if (d) {
      throw new IllegalStateException("already connected");
    }
    if ((b.b.type() == Proxy.Type.DIRECT) || (b.b.type() == Proxy.Type.HTTP))
    {
      c = b.a.d.createSocket();
      c.setSoTimeout(paramInt2);
      yc.a().a(c, b.c, paramInt1);
      if (b.a.e == null) {
        break label141;
      }
      a(paramxD, paramInt2, paramInt3);
    }
    for (;;)
    {
      d = true;
      return;
      c = new Socket(b.b);
      break;
      label141:
      e = new yr(a, this, c);
    }
  }
  
  void a(Object paramObject)
  {
    if (k()) {
      return;
    }
    synchronized (a)
    {
      if (k != null) {
        throw new IllegalStateException("Connection already has an owner!");
      }
    }
    k = paramObject;
  }
  
  void a(xC paramxC)
  {
    if (paramxC == null) {
      throw new IllegalArgumentException("protocol == null");
    }
    g = paramxC;
  }
  
  void a(xy paramxy, Object paramObject, xD paramxD)
  {
    a(paramObject);
    if (!b())
    {
      paramObject = a(paramxD);
      a(paramxy.a(), paramxy.b(), paramxy.c(), (xD)paramObject);
      if (k()) {
        paramxy.m().b(this);
      }
      paramxy.q().b(c());
    }
    a(paramxy.b(), paramxy.c());
  }
  
  boolean a()
  {
    synchronized (a)
    {
      if (k == null) {
        return false;
      }
      k = null;
      return true;
    }
  }
  
  void b(Object paramObject)
  {
    if (k()) {
      throw new IllegalStateException();
    }
    synchronized (a)
    {
      if (k != paramObject) {
        return;
      }
      k = null;
      c.close();
      return;
    }
  }
  
  boolean b()
  {
    return d;
  }
  
  public xN c()
  {
    return b;
  }
  
  public Socket d()
  {
    return c;
  }
  
  boolean e()
  {
    return (!c.isClosed()) && (!c.isInputShutdown()) && (!c.isOutputShutdown());
  }
  
  boolean f()
  {
    if (e != null) {
      return e.f();
    }
    return true;
  }
  
  void g()
  {
    if (f != null) {
      throw new IllegalStateException("spdyConnection != null");
    }
    h = System.nanoTime();
  }
  
  boolean h()
  {
    return (f == null) || (f.b());
  }
  
  long i()
  {
    if (f == null) {
      return h;
    }
    return f.c();
  }
  
  public xr j()
  {
    return i;
  }
  
  boolean k()
  {
    return f != null;
  }
  
  public xC l()
  {
    return g;
  }
  
  void m()
  {
    j += 1;
  }
  
  int n()
  {
    return j;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Connection{").append(b.a.b).append(":").append(b.a.c).append(", proxy=").append(b.b).append(" hostAddress=").append(b.c.getAddress().getHostAddress()).append(" cipherSuite=");
    if (i != null) {}
    for (String str = i.a();; str = "none") {
      return str + " protocol=" + g + '}';
    }
  }
}

/* Location:
 * Qualified Name:     xi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */