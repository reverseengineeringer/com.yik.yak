import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class xr
{
  private final String a;
  private final List<Certificate> b;
  private final List<Certificate> c;
  
  private xr(String paramString, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    a = paramString;
    b = paramList1;
    c = paramList2;
  }
  
  public static xr a(String paramString, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("cipherSuite == null");
    }
    return new xr(paramString, yi.a(paramList1), yi.a(paramList2));
  }
  
  public static xr a(SSLSession paramSSLSession)
  {
    String str = paramSSLSession.getCipherSuite();
    if (str == null) {
      throw new IllegalStateException("cipherSuite == null");
    }
    try
    {
      Object localObject = paramSSLSession.getPeerCertificates();
      if (localObject != null)
      {
        localObject = yi.a((Object[])localObject);
        paramSSLSession = paramSSLSession.getLocalCertificates();
        if (paramSSLSession == null) {
          break label77;
        }
        paramSSLSession = yi.a(paramSSLSession);
        return new xr(str, (List)localObject, paramSSLSession);
      }
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      for (;;)
      {
        List localList = null;
        continue;
        localList = Collections.emptyList();
        continue;
        label77:
        paramSSLSession = Collections.emptyList();
      }
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public List<Certificate> b()
  {
    return b;
  }
  
  public Principal c()
  {
    if (!b.isEmpty()) {
      return ((X509Certificate)b.get(0)).getSubjectX500Principal();
    }
    return null;
  }
  
  public List<Certificate> d()
  {
    return c;
  }
  
  public Principal e()
  {
    if (!c.isEmpty()) {
      return ((X509Certificate)c.get(0)).getSubjectX500Principal();
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof xr)) {}
    do
    {
      return false;
      paramObject = (xr)paramObject;
    } while ((!a.equals(a)) || (!b.equals(b)) || (!c.equals(c)));
    return true;
  }
  
  public int hashCode()
  {
    return ((a.hashCode() + 527) * 31 + b.hashCode()) * 31 + c.hashCode();
  }
}

/* Location:
 * Qualified Name:     xr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */