import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class xd
{
  public static final xd a = new xf().a();
  private final Map<String, List<KC>> b;
  
  private xd(xf paramxf)
  {
    b = yi.a(xf.a(paramxf));
  }
  
  private static KC a(X509Certificate paramX509Certificate)
  {
    return yi.a(KC.a(paramX509Certificate.getPublicKey().getEncoded()));
  }
  
  public static String a(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }
    return "sha1/" + a((X509Certificate)paramCertificate).b();
  }
  
  public void a(String paramString, List<Certificate> paramList)
  {
    int j = 0;
    List localList = (List)b.get(paramString);
    if (localList == null) {
      return;
    }
    int k = paramList.size();
    int i = 0;
    for (;;)
    {
      if (i >= k) {
        break label70;
      }
      if (localList.contains(a((X509Certificate)paramList.get(i)))) {
        break;
      }
      i += 1;
    }
    label70:
    StringBuilder localStringBuilder = new StringBuilder().append("Certificate pinning failure!").append("\n  Peer certificate chain:");
    k = paramList.size();
    i = 0;
    while (i < k)
    {
      X509Certificate localX509Certificate = (X509Certificate)paramList.get(i);
      localStringBuilder.append("\n    ").append(a(localX509Certificate)).append(": ").append(localX509Certificate.getSubjectDN().getName());
      i += 1;
    }
    localStringBuilder.append("\n  Pinned certificates for ").append(paramString).append(":");
    k = localList.size();
    i = j;
    while (i < k)
    {
      paramString = (KC)localList.get(i);
      localStringBuilder.append("\n    sha1/").append(paramString.b());
      i += 1;
    }
    throw new SSLPeerUnverifiedException(localStringBuilder.toString());
  }
}

/* Location:
 * Qualified Name:     xd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */