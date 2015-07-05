import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.Map;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class yr
{
  private static final xC d = new ys();
  final xo a;
  long b = -1L;
  public final boolean c;
  private wZ e;
  private yC f;
  private xD g;
  private final xz h;
  private yF i;
  private boolean j;
  private final xt k;
  private xt l;
  private xz m;
  private xz n;
  private Kk o;
  private JS p;
  private final boolean q;
  private final boolean r;
  private yc s;
  private yd t;
  
  public yr(xo paramxo, xt paramxt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, wZ paramwZ, yC paramyC, yB paramyB, xz paramxz)
  {
    a = paramxo;
    k = paramxt;
    c = paramBoolean1;
    q = paramBoolean2;
    r = paramBoolean3;
    e = paramwZ;
    f = paramyC;
    o = paramyB;
    h = paramxz;
    if (paramwZ != null)
    {
      xM.b.b(paramwZ, this);
      g = paramwZ.c();
      return;
    }
    g = null;
  }
  
  public static String a(URL paramURL)
  {
    if (xY.a(paramURL) != xY.a(paramURL.getProtocol())) {
      return paramURL.getHost() + ":" + paramURL.getPort();
    }
    return paramURL.getHost();
  }
  
  private static xi a(xi paramxi1, xi paramxi2)
  {
    int i2 = 0;
    xk localxk = new xk();
    int i3 = paramxi1.a();
    int i1 = 0;
    if (i1 < i3)
    {
      String str1 = paramxi1.a(i1);
      String str2 = paramxi1.b(i1);
      if (("Warning".equalsIgnoreCase(str1)) && (str2.startsWith("1"))) {}
      for (;;)
      {
        i1 += 1;
        break;
        if ((!yx.a(str1)) || (paramxi2.a(str1) == null)) {
          localxk.a(str1, str2);
        }
      }
    }
    i3 = paramxi2.a();
    i1 = i2;
    if (i1 < i3)
    {
      paramxi1 = paramxi2.a(i1);
      if ("Content-Length".equalsIgnoreCase(paramxi1)) {}
      for (;;)
      {
        i1 += 1;
        break;
        if (yx.a(paramxi1)) {
          localxk.a(paramxi1, paramxi2.b(i1));
        }
      }
    }
    return localxk.a();
  }
  
  private xz a(yc paramyc, xz paramxz)
  {
    if (paramyc == null) {}
    Kk localKk;
    do
    {
      return paramxz;
      localKk = paramyc.b();
    } while (localKk == null);
    paramyc = new yt(this, paramxz.h().c(), paramyc, Ka.a(localKk));
    return paramxz.i().a(new yz(paramxz.g(), Ka.a(paramyc))).a();
  }
  
  private void a(xt paramxt)
  {
    if (e != null) {
      throw new IllegalStateException();
    }
    if (f == null) {
      f = yC.a(paramxt, a);
    }
    e = f.a(this);
    g = e.c();
  }
  
  public static boolean a(xz paramxz)
  {
    if (paramxz.a().d().equals("HEAD")) {}
    do
    {
      return false;
      int i1 = paramxz.c();
      if (((i1 < 100) || (i1 >= 200)) && (i1 != 204) && (i1 != 304)) {
        return true;
      }
    } while ((yx.a(paramxz) == -1L) && (!"chunked".equalsIgnoreCase(paramxz.a("Transfer-Encoding"))));
    return true;
  }
  
  private static boolean a(xz paramxz1, xz paramxz2)
  {
    if (paramxz2.c() == 304) {}
    do
    {
      return true;
      paramxz1 = paramxz1.g().b("Last-Modified");
      if (paramxz1 == null) {
        break;
      }
      paramxz2 = paramxz2.g().b("Last-Modified");
    } while ((paramxz2 != null) && (paramxz2.getTime() < paramxz1.getTime()));
    return false;
  }
  
  private xt b(xt paramxt)
  {
    xv localxv = paramxt.g();
    if (paramxt.a("Host") == null) {
      localxv.a("Host", a(paramxt.a()));
    }
    if (((e == null) || (e.l() != xs.a)) && (paramxt.a("Connection") == null)) {
      localxv.a("Connection", "Keep-Alive");
    }
    if (paramxt.a("Accept-Encoding") == null)
    {
      j = true;
      localxv.a("Accept-Encoding", "gzip");
    }
    CookieHandler localCookieHandler = a.f();
    if (localCookieHandler != null)
    {
      Map localMap = yx.a(localxv.b().e(), null);
      yx.a(localxv, localCookieHandler.get(paramxt.b(), localMap));
    }
    if (paramxt.a("User-Agent") == null) {
      localxv.a("User-Agent", ya.a());
    }
    return localxv.b();
  }
  
  private static xz b(xz paramxz)
  {
    xz localxz = paramxz;
    if (paramxz != null)
    {
      localxz = paramxz;
      if (paramxz.h() != null) {
        localxz = paramxz.i().a(null).a();
      }
    }
    return localxz;
  }
  
  private boolean b(IOException paramIOException)
  {
    if (!a.p()) {}
    while (((paramIOException instanceof SSLPeerUnverifiedException)) || (((paramIOException instanceof SSLHandshakeException)) && ((paramIOException.getCause() instanceof CertificateException))) || ((paramIOException instanceof ProtocolException)) || ((paramIOException instanceof InterruptedIOException))) {
      return false;
    }
    return true;
  }
  
  private xz c(xz paramxz)
  {
    if ((!j) || (!"gzip".equalsIgnoreCase(n.a("Content-Encoding")))) {}
    while (paramxz.h() == null) {
      return paramxz;
    }
    JY localJY = new JY(paramxz.h().c());
    xi localxi = paramxz.g().b().b("Content-Encoding").b("Content-Length").a();
    return paramxz.i().a(localxi).a(new yz(localxi, Ka.a(localJY))).a();
  }
  
  private void p()
  {
    xN localxN = xM.b.a(a);
    if (localxN == null) {}
    do
    {
      return;
      if (yd.a(n, l)) {
        break;
      }
    } while (!yv.a(l.d()));
    try
    {
      localxN.b(l);
      return;
    }
    catch (IOException localIOException)
    {
      return;
    }
    s = localIOException.a(b(n));
  }
  
  private xz q()
  {
    i.a();
    xz localxz2 = i.b().a(l).a(e.j()).a(yx.b, Long.toString(b)).a(yx.c, Long.toString(System.currentTimeMillis())).a();
    xz localxz1 = localxz2;
    if (!r) {
      localxz1 = localxz2.i().a(i.a(localxz2)).a();
    }
    xM.b.a(e, localxz1.b());
    return localxz1;
  }
  
  public yr a(IOException paramIOException)
  {
    return a(paramIOException, o);
  }
  
  public yr a(IOException paramIOException, Kk paramKk)
  {
    if ((f != null) && (e != null)) {
      f.a(e, paramIOException);
    }
    if ((paramKk == null) || ((paramKk instanceof yB))) {}
    for (int i1 = 1; ((f == null) && (e == null)) || ((f != null) && (!f.a())) || (!b(paramIOException)) || (i1 == 0); i1 = 0) {
      return null;
    }
    paramIOException = m();
    return new yr(a, k, c, q, r, paramIOException, f, (yB)paramKk, h);
  }
  
  public void a()
  {
    if (t != null) {
      return;
    }
    if (i != null) {
      throw new IllegalStateException();
    }
    xt localxt = b(k);
    xN localxN = xM.b.a(a);
    if (localxN != null) {}
    long l1;
    for (xz localxz = localxN.a(localxt);; localxz = null)
    {
      t = new yf(System.currentTimeMillis(), localxt, localxz).a();
      l = t.a;
      m = t.b;
      if (localxN != null) {
        localxN.a(t);
      }
      if ((localxz != null) && (m == null)) {
        xY.a(localxz.h());
      }
      if (l == null) {
        break label310;
      }
      if (e == null) {
        a(l);
      }
      i = xM.b.a(e, this);
      if ((!q) || (!c()) || (o != null)) {
        break;
      }
      l1 = yx.a(localxt);
      if (!c) {
        break label278;
      }
      if (l1 <= 2147483647L) {
        break label231;
      }
      throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
    }
    label231:
    if (l1 != -1L)
    {
      i.a(l);
      o = new yB((int)l1);
      return;
    }
    o = new yB();
    return;
    label278:
    i.a(l);
    o = i.a(l, l1);
    return;
    label310:
    if (e != null)
    {
      xM.b.a(a.m(), e);
      e = null;
    }
    if (m != null) {}
    for (n = m.i().a(k).c(b(h)).b(b(m)).a();; n = new xB().a(k).c(b(h)).a(xs.b).a(504).a("Unsatisfiable Request (only-if-cached)").a(d).a())
    {
      n = c(n);
      return;
    }
  }
  
  public void a(xi paramxi)
  {
    CookieHandler localCookieHandler = a.f();
    if (localCookieHandler != null) {
      localCookieHandler.put(k.b(), yx.a(paramxi, null));
    }
  }
  
  public void b()
  {
    if (b != -1L) {
      throw new IllegalStateException();
    }
    b = System.currentTimeMillis();
  }
  
  public boolean b(URL paramURL)
  {
    URL localURL = k.a();
    return (localURL.getHost().equals(paramURL.getHost())) && (xY.a(localURL) == xY.a(paramURL)) && (localURL.getProtocol().equals(paramURL.getProtocol()));
  }
  
  boolean c()
  {
    return yv.c(k.d());
  }
  
  public Kk d()
  {
    if (t == null) {
      throw new IllegalStateException();
    }
    return o;
  }
  
  public JS e()
  {
    Object localObject = p;
    if (localObject != null) {
      return (JS)localObject;
    }
    localObject = d();
    if (localObject != null)
    {
      localObject = Ka.a((Kk)localObject);
      p = ((JS)localObject);
      return (JS)localObject;
    }
    return null;
  }
  
  public boolean f()
  {
    return n != null;
  }
  
  public xt g()
  {
    return k;
  }
  
  public xz h()
  {
    if (n == null) {
      throw new IllegalStateException();
    }
    return n;
  }
  
  public wZ i()
  {
    return e;
  }
  
  public xD j()
  {
    return g;
  }
  
  public void k()
  {
    if ((i != null) && (e != null)) {
      i.c();
    }
    e = null;
  }
  
  public void l()
  {
    if (i != null) {}
    try
    {
      i.a(this);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public wZ m()
  {
    if (p != null) {
      xY.a(p);
    }
    while (n == null)
    {
      if (e != null) {
        xY.a(e.d());
      }
      e = null;
      return null;
      if (o != null) {
        xY.a(o);
      }
    }
    xY.a(n.h());
    if ((i != null) && (e != null) && (!i.d()))
    {
      xY.a(e.d());
      e = null;
      return null;
    }
    if ((e != null) && (!xM.b.a(e))) {
      e = null;
    }
    wZ localwZ = e;
    e = null;
    return localwZ;
  }
  
  public void n()
  {
    if (n != null) {}
    label418:
    label430:
    label440:
    do
    {
      do
      {
        return;
        if ((l == null) && (m == null)) {
          throw new IllegalStateException("call sendRequest() first!");
        }
      } while (l == null);
      if (r) {
        i.a(l);
      }
      for (Object localObject = q();; localObject = new yu(this, 0, l).a(l))
      {
        a(((xz)localObject).g());
        if (m == null) {
          break label440;
        }
        if (!a(m, (xz)localObject)) {
          break label430;
        }
        n = m.i().a(k).c(b(h)).a(a(m.g(), ((xz)localObject).g())).b(b(m)).a(b((xz)localObject)).a();
        ((xz)localObject).h().close();
        k();
        localObject = xM.b.a(a);
        ((xN)localObject).a();
        ((xN)localObject).a(m, b(n));
        n = c(n);
        return;
        if (q) {
          break;
        }
      }
      if ((p != null) && (p.d().c() > 0L)) {
        p.g();
      }
      if (b == -1L)
      {
        if ((yx.a(l) == -1L) && ((o instanceof yB)))
        {
          long l1 = ((yB)o).c();
          l = l.g().a("Content-Length", Long.toString(l1)).b();
        }
        i.a(l);
      }
      if (o != null)
      {
        if (p == null) {
          break label418;
        }
        p.close();
      }
      for (;;)
      {
        if ((o instanceof yB)) {
          i.a((yB)o);
        }
        localObject = q();
        break;
        o.close();
      }
      xY.a(m.h());
      n = ((xz)localObject).i().a(k).c(b(h)).b(b(m)).a(b((xz)localObject)).a();
    } while (!a(n));
    p();
    n = c(a(s, n));
  }
  
  public xt o()
  {
    if (n == null) {
      throw new IllegalStateException();
    }
    if (j() != null) {}
    for (Object localObject = j().b();; localObject = a.d()) {
      switch (n.c())
      {
      default: 
        return null;
      }
    }
    if (((Proxy)localObject).type() != Proxy.Type.HTTP) {
      throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
    }
    return yx.a(a.l(), n, (Proxy)localObject);
    if ((!k.d().equals("GET")) && (!k.d().equals("HEAD"))) {
      return null;
    }
    if (!a.o()) {
      return null;
    }
    localObject = n.a("Location");
    if (localObject == null) {
      return null;
    }
    localObject = new URL(k.a(), (String)localObject);
    if ((!((URL)localObject).getProtocol().equals("https")) && (!((URL)localObject).getProtocol().equals("http"))) {
      return null;
    }
    if ((!((URL)localObject).getProtocol().equals(k.a().getProtocol())) && (!a.n())) {
      return null;
    }
    xv localxv = k.g();
    if (yv.c(k.d()))
    {
      localxv.a("GET", null);
      localxv.b("Transfer-Encoding");
      localxv.b("Content-Length");
      localxv.b("Content-Type");
    }
    if (!b((URL)localObject)) {
      localxv.b("Authorization");
    }
    return localxv.a((URL)localObject).b();
  }
}

/* Location:
 * Qualified Name:     yr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */