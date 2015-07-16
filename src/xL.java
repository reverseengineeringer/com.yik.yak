import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class xl
{
  public static final xl a = new xn(true, null).a(new xh[] { xh.aK, xh.aO, xh.W, xh.am, xh.al, xh.av, xh.aw, xh.aj, xh.at, xh.F, xh.E, xh.J, xh.U, xh.D, xh.H, xh.h, xh.e, xh.d }).a(new xO[] { xO.a, xO.b, xO.c }).a(true).a();
  public static final xl b = new xn(a).a(new xO[] { xO.c }).a();
  public static final xl c = new xn(false, null).a();
  final boolean d;
  final boolean e;
  private final String[] f;
  private final String[] g;
  private xl h;
  
  private xl(xn paramxn)
  {
    d = xn.a(paramxn);
    f = xn.b(paramxn);
    g = xn.c(paramxn);
    e = xn.d(paramxn);
  }
  
  private xl a(SSLSocket paramSSLSocket)
  {
    List localList = yi.a(f, paramSSLSocket.getSupportedCipherSuites());
    paramSSLSocket = yi.a(g, paramSSLSocket.getSupportedProtocols());
    return new xn(this).a((String[])localList.toArray(new String[localList.size()])).b((String[])paramSSLSocket.toArray(new String[paramSSLSocket.size()])).a();
  }
  
  void a(SSLSocket paramSSLSocket, xN paramxN)
  {
    Object localObject2 = h;
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = a(paramSSLSocket);
      h = ((xl)localObject1);
    }
    paramSSLSocket.setEnabledProtocols(g);
    localObject2 = f;
    if ((e) && (Arrays.asList(paramSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")))
    {
      String[] arrayOfString = new String[localObject2.length + 1];
      System.arraycopy(localObject2, 0, arrayOfString, 0, localObject2.length);
      arrayOfString[(arrayOfString.length - 1)] = "TLS_FALLBACK_SCSV";
      localObject2 = arrayOfString;
    }
    for (;;)
    {
      paramSSLSocket.setEnabledCipherSuites((String[])localObject2);
      localObject2 = yc.a();
      if (e) {
        ((yc)localObject2).a(paramSSLSocket, a.b, a.i);
      }
      return;
    }
  }
  
  public boolean a()
  {
    return d;
  }
  
  public List<xh> b()
  {
    xh[] arrayOfxh = new xh[f.length];
    int i = 0;
    while (i < f.length)
    {
      arrayOfxh[i] = xh.b(f[i]);
      i += 1;
    }
    return yi.a(arrayOfxh);
  }
  
  public List<xO> c()
  {
    xO[] arrayOfxO = new xO[g.length];
    int i = 0;
    while (i < g.length)
    {
      arrayOfxO[i] = xO.a(g[i]);
      i += 1;
    }
    return yi.a(arrayOfxO);
  }
  
  public boolean d()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof xl)) {}
    do
    {
      return false;
      paramObject = (xl)paramObject;
    } while ((d != d) || ((d) && ((!Arrays.equals(f, f)) || (!Arrays.equals(g, g)) || (e != e))));
    return true;
  }
  
  public int hashCode()
  {
    int i = 17;
    int j;
    int k;
    if (d)
    {
      j = Arrays.hashCode(f);
      k = Arrays.hashCode(g);
      if (!e) {
        break label53;
      }
    }
    label53:
    for (i = 0;; i = 1)
    {
      i += ((j + 527) * 31 + k) * 31;
      return i;
    }
  }
  
  public String toString()
  {
    if (d) {
      return "ConnectionSpec(cipherSuites=" + b() + ", tlsVersions=" + c() + ", supportsTlsExtensions=" + e + ")";
    }
    return "ConnectionSpec()";
  }
}

/* Location:
 * Qualified Name:     xl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */