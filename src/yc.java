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

public final class yC
{
  private final wD a;
  private final URI b;
  private final xP c;
  private final xo d;
  private final xa e;
  private final xX f;
  private final xt g;
  private Proxy h;
  private InetSocketAddress i;
  private xc j;
  private List<Proxy> k = Collections.emptyList();
  private int l;
  private List<InetSocketAddress> m = Collections.emptyList();
  private int n;
  private List<xc> o = Collections.emptyList();
  private int p;
  private final List<xD> q = new ArrayList();
  
  private yC(wD paramwD, URI paramURI, xo paramxo, xt paramxt)
  {
    a = paramwD;
    b = paramURI;
    d = paramxo;
    e = paramxo.m();
    f = xM.b.b(paramxo);
    c = xM.b.c(paramxo);
    g = paramxt;
    a(paramURI, paramwD.d());
  }
  
  static String a(InetSocketAddress paramInetSocketAddress)
  {
    InetAddress localInetAddress = paramInetSocketAddress.getAddress();
    if (localInetAddress == null) {
      return paramInetSocketAddress.getHostName();
    }
    return localInetAddress.getHostAddress();
  }
  
  public static yC a(xt paramxt, xo paramxo)
  {
    wU localwU = null;
    String str = paramxt.a().getHost();
    if ((str == null) || (str.length() == 0)) {
      throw new UnknownHostException(paramxt.a().toString());
    }
    SSLSocketFactory localSSLSocketFactory;
    HostnameVerifier localHostnameVerifier;
    if (paramxt.i())
    {
      localSSLSocketFactory = paramxo.i();
      localHostnameVerifier = paramxo.j();
      localwU = paramxo.k();
    }
    for (;;)
    {
      return new yC(new wD(str, xY.a(paramxt.a()), paramxo.h(), localSSLSocketFactory, localHostnameVerifier, localwU, paramxo.l(), paramxo.d(), paramxo.s(), paramxo.t(), paramxo.e()), paramxt.b(), paramxo, paramxt);
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
    for (int i1 = xY.a(b);; i1 = ((InetSocketAddress)localObject).getPort())
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
  
  private boolean a(xc paramxc)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramxc != o.get(0))
    {
      bool1 = bool2;
      if (paramxc.a()) {
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
      xc localxc = (xc)localList.get(i1);
      if (g.i() == localxc.a()) {
        o.add(localxc);
      }
      i1 += 1;
    }
    p = 0;
  }
  
  private boolean h()
  {
    return p < o.size();
  }
  
  private xc i()
  {
    if (!h()) {
      throw new SocketException("No route to " + a.a() + "; exhausted connection specs: " + o);
    }
    List localList = o;
    int i1 = p;
    p = (i1 + 1);
    return (xc)localList.get(i1);
  }
  
  private boolean j()
  {
    return !q.isEmpty();
  }
  
  private xD k()
  {
    return (xD)q.remove(0);
  }
  
  public wZ a(yr paramyr)
  {
    wZ localwZ = b();
    xM.b.a(d, localwZ, paramyr, g);
    return localwZ;
  }
  
  public void a(wZ paramwZ, IOException paramIOException)
  {
    if (xM.b.b(paramwZ) > 0) {}
    for (;;)
    {
      return;
      paramwZ = paramwZ.c();
      if ((paramwZ.b().type() != Proxy.Type.DIRECT) && (a.e() != null)) {
        a.e().connectFailed(b, paramwZ.b().address(), paramIOException);
      }
      f.a(paramwZ);
      if ((!(paramIOException instanceof SSLHandshakeException)) && (!(paramIOException instanceof SSLProtocolException))) {
        while (p < o.size())
        {
          paramwZ = o;
          int i1 = p;
          p = (i1 + 1);
          paramwZ = (xc)paramwZ.get(i1);
          boolean bool = a(paramwZ);
          paramwZ = new xD(a, h, i, paramwZ, bool);
          f.a(paramwZ);
        }
      }
    }
  }
  
  public boolean a()
  {
    return (h()) || (e()) || (c()) || (j());
  }
  
  wZ b()
  {
    for (;;)
    {
      localObject = e.a(a);
      if (localObject == null) {
        break;
      }
      if ((g.d().equals("GET")) || (xM.b.c((wZ)localObject))) {
        return (wZ)localObject;
      }
      ((wZ)localObject).d().close();
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
          return new wZ(e, k());
        }
        h = d();
      }
      i = f();
    }
    j = i();
    boolean bool = a(j);
    Object localObject = new xD(a, h, i, j, bool);
    if (f.c((xD)localObject))
    {
      q.add(localObject);
      return b();
    }
    return new wZ(e, (xD)localObject);
  }
}

/* Location:
 * Qualified Name:     yC
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */