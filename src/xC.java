import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class xc
{
  public static final xc a = new xe(true, null).a(new wY[] { wY.aK, wY.aO, wY.W, wY.am, wY.al, wY.av, wY.aw, wY.aj, wY.at, wY.F, wY.E, wY.J, wY.U, wY.D, wY.H, wY.h, wY.e, wY.d }).a(new xE[] { xE.a, xE.b, xE.c }).a(true).a();
  public static final xc b = new xe(a).a(new xE[] { xE.c }).a();
  public static final xc c = new xe(false, null).a();
  final boolean d;
  final boolean e;
  private final String[] f;
  private final String[] g;
  private xc h;
  
  private xc(xe paramxe)
  {
    d = xe.a(paramxe);
    f = xe.b(paramxe);
    g = xe.c(paramxe);
    e = xe.d(paramxe);
  }
  
  private xc a(SSLSocket paramSSLSocket)
  {
    List localList = xY.a(f, paramSSLSocket.getSupportedCipherSuites());
    paramSSLSocket = xY.a(g, paramSSLSocket.getSupportedProtocols());
    return new xe(this).a((String[])localList.toArray(new String[localList.size()])).b((String[])paramSSLSocket.toArray(new String[paramSSLSocket.size()])).a();
  }
  
  void a(SSLSocket paramSSLSocket, xD paramxD)
  {
    Object localObject2 = h;
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = a(paramSSLSocket);
      h = ((xc)localObject1);
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
      localObject2 = xS.a();
      if (e) {
        ((xS)localObject2).a(paramSSLSocket, a.b, a.i);
      }
      return;
    }
  }
  
  public boolean a()
  {
    return d;
  }
  
  public List<wY> b()
  {
    wY[] arrayOfwY = new wY[f.length];
    int i = 0;
    while (i < f.length)
    {
      arrayOfwY[i] = wY.b(f[i]);
      i += 1;
    }
    return xY.a(arrayOfwY);
  }
  
  public List<xE> c()
  {
    xE[] arrayOfxE = new xE[g.length];
    int i = 0;
    while (i < g.length)
    {
      arrayOfxE[i] = xE.a(g[i]);
      i += 1;
    }
    return xY.a(arrayOfxE);
  }
  
  public boolean d()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof xc)) {}
    do
    {
      return false;
      paramObject = (xc)paramObject;
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
 * Qualified Name:     xc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */