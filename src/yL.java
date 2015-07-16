import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.List;

public final class yl
  implements wN
{
  public static final wN a = new yl();
  
  private InetAddress a(Proxy paramProxy, URL paramURL)
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT)) {
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    }
    return InetAddress.getByName(paramURL.getHost());
  }
  
  public xD a(Proxy paramProxy, xJ paramxJ)
  {
    List localList = paramxJ.l();
    paramxJ = paramxJ.a();
    URL localURL = paramxJ.a();
    int j = localList.size();
    int i = 0;
    if (i < j)
    {
      Object localObject = (xg)localList.get(i);
      if (!"Basic".equalsIgnoreCase(((xg)localObject).a())) {}
      do
      {
        i += 1;
        break;
        localObject = Authenticator.requestPasswordAuthentication(localURL.getHost(), a(paramProxy, localURL), localURL.getPort(), localURL.getProtocol(), ((xg)localObject).b(), ((xg)localObject).a(), localURL, Authenticator.RequestorType.SERVER);
      } while (localObject == null);
      paramProxy = xo.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
      return paramxJ.g().a("Authorization", paramProxy).b();
    }
    return null;
  }
  
  public xD b(Proxy paramProxy, xJ paramxJ)
  {
    List localList = paramxJ.l();
    paramxJ = paramxJ.a();
    URL localURL = paramxJ.a();
    int j = localList.size();
    int i = 0;
    if (i < j)
    {
      Object localObject = (xg)localList.get(i);
      if (!"Basic".equalsIgnoreCase(((xg)localObject).a())) {}
      do
      {
        i += 1;
        break;
        InetSocketAddress localInetSocketAddress = (InetSocketAddress)paramProxy.address();
        localObject = Authenticator.requestPasswordAuthentication(localInetSocketAddress.getHostName(), a(paramProxy, localURL), localInetSocketAddress.getPort(), localURL.getProtocol(), ((xg)localObject).b(), ((xg)localObject).a(), localURL, Authenticator.RequestorType.PROXY);
      } while (localObject == null);
      paramProxy = xo.a(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
      return paramxJ.g().a("Proxy-Authorization", paramProxy).b();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     yl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */