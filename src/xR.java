import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

class xr
  extends URLStreamHandler
{
  xr(xq paramxq, String paramString) {}
  
  protected int getDefaultPort()
  {
    if (a.equals("http")) {
      return 80;
    }
    if (a.equals("https")) {
      return 443;
    }
    throw new AssertionError();
  }
  
  protected URLConnection openConnection(URL paramURL)
  {
    return b.a(paramURL);
  }
  
  protected URLConnection openConnection(URL paramURL, Proxy paramProxy)
  {
    return b.a(paramURL, paramProxy);
  }
}

/* Location:
 * Qualified Name:     xr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */