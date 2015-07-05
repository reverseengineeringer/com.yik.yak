import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;

public final class xq
  implements Cloneable, URLStreamHandlerFactory
{
  private final xo a;
  
  public xq(xo paramxo)
  {
    a = paramxo;
  }
  
  public HttpURLConnection a(URL paramURL)
  {
    return a(paramURL, a.d());
  }
  
  HttpURLConnection a(URL paramURL, Proxy paramProxy)
  {
    String str = paramURL.getProtocol();
    xo localxo = a.w();
    localxo.a(paramProxy);
    if (str.equals("http")) {
      return new yH(paramURL, localxo);
    }
    if (str.equals("https")) {
      return new yI(paramURL, localxo);
    }
    throw new IllegalArgumentException("Unexpected protocol: " + str);
  }
  
  public xo a()
  {
    return a;
  }
  
  public xq b()
  {
    return new xq(a.x());
  }
  
  public URLStreamHandler createURLStreamHandler(String paramString)
  {
    if ((!paramString.equals("http")) && (!paramString.equals("https"))) {
      return null;
    }
    return new xr(this, paramString);
  }
}

/* Location:
 * Qualified Name:     xq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */