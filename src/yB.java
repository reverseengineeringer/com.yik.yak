import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.List;

public final class yb
  implements wE
{
  public static final wE a = new yb();
  
  private InetAddress a(Proxy paramProxy, URL paramURL)
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT)) {
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    }
    return InetAddress.getByName(paramURL.getHost());
  }
  
  public xt a(Proxy paramProxy, xz paramxz)
  {
    List localList = paramxz.l();
    paramxz = paramxz.a();
    URL localURL = paramxz.a();
    int j = localList.size();
    int i = 0;
    if (i < j)
    {
      Object localObject = (wX)localList.get(i);
      if (!"Basic".equalsIgnoreCase(((wX)localObject).a())) {}
      do
      {
        i += 1;
        break;
        localObject = Authenticator.requestPasswordAuthentication(localURL.getHost(), a(paramProxy, localURL), localURL.getPort(), localURL.getProtocol(), ((wX)localObject).b(), ((wX)localObject).a(), localURL, Authenticator.RequestorType.SERVER);
      } while (localObject == null);
      paramProxy = xf.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
      return paramxz.g().a("Authorization", paramProxy).b();
    }
    return null;
  }
  
  public xt b(Proxy paramProxy, xz paramxz)
  {
    List localList = paramxz.l();
    paramxz = paramxz.a();
    URL localURL = paramxz.a();
    int j = localList.size();
    int i = 0;
    if (i < j)
    {
      Object localObject = (wX)localList.get(i);
      if (!"Basic".equalsIgnoreCase(((wX)localObject).a())) {}
      do
      {
        i += 1;
        break;
        InetSocketAddress localInetSocketAddress = (InetSocketAddress)paramProxy.address();
        localObject = Authenticator.requestPasswordAuthentication(localInetSocketAddress.getHostName(), a(paramProxy, localURL), localInetSocketAddress.getPort(), localURL.getProtocol(), ((wX)localObject).b(), ((wX)localObject).a(), localURL, Authenticator.RequestorType.PROXY);
      } while (localObject == null);
      paramProxy = xf.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
      return paramxz.g().a("Proxy-Authorization", paramProxy).b();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     yb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */