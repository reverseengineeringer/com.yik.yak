import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

class yf
  extends yc
{
  private final Method a;
  private final Method b;
  private final Method c;
  private final Class<?> d;
  private final Class<?> e;
  
  public yf(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
  {
    a = paramMethod1;
    b = paramMethod2;
    c = paramMethod3;
    d = paramClass1;
    e = paramClass2;
  }
  
  public void a(SSLSocket paramSSLSocket)
  {
    try
    {
      c.invoke(null, new Object[] { paramSSLSocket });
      return;
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw new AssertionError();
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new AssertionError();
    }
  }
  
  public void a(SSLSocket paramSSLSocket, String paramString, List<xC> paramList)
  {
    paramString = new ArrayList(paramList.size());
    int j = paramList.size();
    int i = 0;
    Object localObject;
    if (i < j)
    {
      localObject = (xC)paramList.get(i);
      if (localObject == xC.a) {}
      for (;;)
      {
        i += 1;
        break;
        paramString.add(((xC)localObject).toString());
      }
    }
    try
    {
      paramList = yc.class.getClassLoader();
      localObject = d;
      Class localClass = e;
      paramString = new yg(paramString);
      paramString = Proxy.newProxyInstance(paramList, new Class[] { localObject, localClass }, paramString);
      a.invoke(null, new Object[] { paramSSLSocket, paramString });
      return;
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new AssertionError(paramSSLSocket);
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw new AssertionError(paramSSLSocket);
    }
  }
  
  public String b(SSLSocket paramSSLSocket)
  {
    try
    {
      paramSSLSocket = (yg)Proxy.getInvocationHandler(b.invoke(null, new Object[] { paramSSLSocket }));
      if ((!yg.a(paramSSLSocket)) && (yg.b(paramSSLSocket) == null))
      {
        xW.a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
        return null;
      }
      if (yg.a(paramSSLSocket)) {
        paramSSLSocket = null;
      } else {
        paramSSLSocket = yg.b(paramSSLSocket);
      }
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new AssertionError();
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw new AssertionError();
    }
    return paramSSLSocket;
  }
}

/* Location:
 * Qualified Name:     yf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */