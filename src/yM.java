import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocketFactory;

public final class yM
{
  private final wM a;
  private final URI b;
  private final xZ c;
  private final xy d;
  private final xj e;
  private final yh f;
  private final xD g;
  private Proxy h;
  private InetSocketAddress i;
  private xl j;
  private List<Proxy> k = Collections.emptyList();
  private int l;
  private List<InetSocketAddress> m = Collections.emptyList();
  private int n;
  private List<xl> o = Collections.emptyList();
  private int p;
  private final List<xN> q = new ArrayList();
  
  private yM(wM paramwM, URI paramURI, xy paramxy, xD paramxD)
  {
    a = paramwM;
    b = paramURI;
    d = paramxy;
    e = paramxy.m();
    f = xW.b.b(paramxy);
    c = xW.b.c(paramxy);
    g = paramxD;
    a(paramURI, paramwM.d());
  }
  
  static String a(InetSocketAddress paramInetSocketAddress)
  {
    InetAddress localInetAddress = paramInetSocketAddress.getAddress();
    if (localInetAddress == null) {
      return paramInetSocketAddress.getHostName();
    }
    return localInetAddress.getHostAddress();
  }
  
  public static yM a(xD paramxD, xy paramxy)
  {
    xd localxd = null;
    String str = paramxD.a().getHost();
    if ((str == null) || (str.length() == 0)) {
      throw new UnknownHostException(paramxD.a().toString());
    }
    SSLSocketFactory localSSLSocketFactory;
    HostnameVerifier localHostnameVerifier;
    if (paramxD.i())
    {
      localSSLSocketFactory = paramxy.i();
      localHostnameVerifier = paramxy.j();
      localxd = paramxy.k();
    }
    for (;;)
    {
      return new yM(new wM(str, yi.a(paramxD.a()), paramxy.h(), localSSLSocketFactory, localHostnameVerifier, localxd, paramxy.l(), paramxy.d(), paramxy.s(), paramxy.t(), paramxy.e()), paramxD.b(), paramxy, paramxD);
      localHostnameVerifier = null;
      localSSLSocketFactory = null;
    }
  }
  
  private void a(Proxy paramProxy)
  {
    m = new ArrayList();
    if ((paramProxy.type() == Proxy.Type.DIRECT) || (paramProxy.type() == Proxy.Type.SOCKS)) {
      paramProxy = a.a();
    }
    Object localObject;
    for (int i1 = yi.a(b);; i1 = ((InetSocketAddress)localObject).getPort())
    {
      paramProxy = c.a(paramProxy);
      int i3 = paramProxy.length;
      int i2 = 0;
      while (i2 < i3)
      {
        localObject = paramProxy[i2];
        m.add(new InetSocketAddress((InetAddress)localObject, i1));
        i2 += 1;
      }
      paramProxy = paramProxy.address();
      if (!(paramProxy instanceof InetSocketAddress)) {
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + paramProxy.getClass());
      }
      localObject = (InetSocketAddress)paramProxy;
      paramProxy = a((InetSocketAddress)localObject);
    }
    n = 0;
  }
  
  private void a(URI paramURI, Proxy paramProxy)
  {
    if (paramProxy != null) {
      k = Collections.singletonList(paramProxy);
    }
    for (;;)
    {
      l = 0;
      return;
      k = new ArrayList();
      paramURI = d.e().select(paramURI);
      if (paramURI != null) {
        k.addAll(paramURI);
      }
      k.removeAll(Collections.singleton(Proxy.NO_PROXY));
      k.add(Proxy.NO_PROXY);
    }
  }
  
  private boolean a(xl paramxl)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramxl != o.get(0))
    {
      bool1 = bool2;
      if (paramxl.a()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean c()
  {
    return l < k.size();
  }
  
  private Proxy d()
  {
    if (!c()) {
      throw new SocketException("No route to " + a.a() + "; exhausted proxy configurations: " + k);
    }
    Object localObject = k;
    int i1 = l;
    l = (i1 + 1);
    localObject = (Proxy)((List)localObject).get(i1);
    a((Proxy)localObject);
    return (Proxy)localObject;
  }
  
  private boolean e()
  {
    return n < m.size();
  }
  
  private InetSocketAddress f()
  {
    if (!e()) {
      throw new SocketException("No route to " + a.a() + "; exhausted inet socket addresses: " + m);
    }
    Object localObject = m;
    int i1 = n;
    n = (i1 + 1);
    localObject = (InetSocketAddress)((List)localObject).get(i1);
    g();
    return (InetSocketAddress)localObject;
  }
  
  private void g()
  {
    o = new ArrayList();
    List localList = a.c();
    int i2 = localList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      xl localxl = (xl)localList.get(i1);
      if (g.i() == localxl.a()) {
        o.add(localxl);
      }
      i1 += 1;
    }
    p = 0;
  }
  
  private boolean h()
  {
    return p < o.size();
  }
  
  private xl i()
  {
    if (!h()) {
      throw new SocketException("No route to " + a.a() + "; exhausted connection specs: " + o);
    }
    List localList = o;
    int i1 = p;
    p = (i1 + 1);
    return (xl)localList.get(i1);
  }
  
  private boolean j()
  {
    return !q.isEmpty();
  }
  
  private xN k()
  {
    return (xN)q.remove(0);
  }
  
  public xi a(yB paramyB)
  {
    xi localxi = b();
    xW.b.a(d, localxi, paramyB, g);
    return localxi;
  }
  
  public void a(xi paramxi, IOException paramIOException)
  {
    if (xW.b.b(paramxi) > 0) {}
    for (;;)
    {
      return;
      paramxi = paramxi.c();
      if ((paramxi.b().type() != Proxy.Type.DIRECT) && (a.e() != null)) {
        a.e().connectFailed(b, paramxi.b().address(), paramIOException);
      }
      f.a(paramxi);
      if ((!(paramIOException instanceof SSLHandshakeException)) && (!(paramIOException instanceof SSLProtocolException))) {
        while (p < o.size())
        {
          paramxi = o;
          int i1 = p;
          p = (i1 + 1);
          paramxi = (xl)paramxi.get(i1);
          boolean bool = a(paramxi);
          paramxi = new xN(a, h, i, paramxi, bool);
          f.a(paramxi);
        }
      }
    }
  }
  
  public boolean a()
  {
    return (h()) || (e()) || (c()) || (j());
  }
  
  xi b()
  {
    for (;;)
    {
      localObject = e.a(a);
      if (localObject == null) {
        break;
      }
      if ((g.d().equals("GET")) || (xW.b.c((xi)localObject))) {
        return (xi)localObject;
      }
      ((xi)localObject).d().close();
    }
    if (!h())
    {
      if (!e())
      {
        if (!c())
        {
          if (!j()) {
            throw new NoSuchElementException();
          }
          return new xi(e, k());
        }
        h = d();
      }
      i = f();
    }
    j = i();
    boolean bool = a(j);
    Object localObject = new xN(a, h, i, j, bool);
    if (f.c((xN)localObject))
    {
      q.add(localObject);
      return b();
    }
    return new xi(e, (xN)localObject);
  }
}

/* Location:
 * Qualified Name:     yM
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */