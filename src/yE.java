import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import javax.net.ssl.SSLSocket;

class ye
  extends yc
{
  private static final yb<Socket> a = new yb(null, "setUseSessionTickets", new Class[] { Boolean.TYPE });
  private static final yb<Socket> b = new yb(null, "setHostname", new Class[] { String.class });
  private static final yb<Socket> c = new yb(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
  private static final yb<Socket> d = new yb(null, "setAlpnProtocols", new Class[] { byte[].class });
  private final Method e;
  private final Method f;
  
  private ye(Method paramMethod1, Method paramMethod2)
  {
    e = paramMethod1;
    f = paramMethod2;
  }
  
  public void a(Socket paramSocket)
  {
    if (e == null) {
      return;
    }
    try
    {
      e.invoke(null, new Object[] { paramSocket });
      return;
    }
    catch (IllegalAccessException paramSocket)
    {
      throw new RuntimeException(paramSocket);
    }
    catch (InvocationTargetException paramSocket)
    {
      throw new RuntimeException(paramSocket.getCause());
    }
  }
  
  public void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    try
    {
      paramSocket.connect(paramInetSocketAddress, paramInt);
      return;
    }
    catch (SecurityException paramSocket)
    {
      paramInetSocketAddress = new IOException("Exception in connect");
      paramInetSocketAddress.initCause(paramSocket);
      throw paramInetSocketAddress;
    }
  }
  
  public void a(SSLSocket paramSSLSocket, String paramString, List<xC> paramList)
  {
    if (paramString != null)
    {
      a.b(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
      b.b(paramSSLSocket, new Object[] { paramString });
    }
    if (!d.a(paramSSLSocket)) {
      return;
    }
    paramString = a(paramList);
    d.d(paramSSLSocket, new Object[] { paramString });
  }
  
  public String b(SSLSocket paramSSLSocket)
  {
    if (!c.a(paramSSLSocket)) {
      return null;
    }
    paramSSLSocket = (byte[])c.d(paramSSLSocket, new Object[0]);
    if (paramSSLSocket != null) {
      return new String(paramSSLSocket, yi.d);
    }
    return null;
  }
  
  public void b(Socket paramSocket)
  {
    if (f == null) {
      return;
    }
    try
    {
      f.invoke(null, new Object[] { paramSocket });
      return;
    }
    catch (IllegalAccessException paramSocket)
    {
      throw new RuntimeException(paramSocket);
    }
    catch (InvocationTargetException paramSocket)
    {
      throw new RuntimeException(paramSocket.getCause());
    }
  }
}

/* Location:
 * Qualified Name:     ye
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */