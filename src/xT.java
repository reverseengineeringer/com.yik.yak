import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;

public final class xt
{
  private final String a;
  private final String b;
  private final xi c;
  private final xw d;
  private final Object e;
  private volatile URL f;
  private volatile URI g;
  private volatile wM h;
  
  private xt(xv paramxv)
  {
    a = xv.a(paramxv);
    b = xv.b(paramxv);
    c = xv.c(paramxv).a();
    d = xv.d(paramxv);
    if (xv.e(paramxv) != null) {}
    for (Object localObject = xv.e(paramxv);; localObject = this)
    {
      e = localObject;
      f = xv.f(paramxv);
      return;
    }
  }
  
  public String a(String paramString)
  {
    return c.a(paramString);
  }
  
  public URL a()
  {
    try
    {
      URL localURL = f;
      if (localURL != null) {
        return localURL;
      }
      localURL = new URL(a);
      f = localURL;
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new RuntimeException("Malformed URL: " + a, localMalformedURLException);
    }
  }
  
  public URI b()
  {
    try
    {
      URI localURI = g;
      if (localURI != null) {
        return localURI;
      }
      localURI = xS.a().a(a());
      g = localURI;
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new IOException(localURISyntaxException.getMessage());
    }
  }
  
  public List<String> b(String paramString)
  {
    return c.c(paramString);
  }
  
  public String c()
  {
    return a;
  }
  
  public String d()
  {
    return b;
  }
  
  public xi e()
  {
    return c;
  }
  
  public xw f()
  {
    return d;
  }
  
  public xv g()
  {
    return new xv(this, null);
  }
  
  public wM h()
  {
    wM localwM = h;
    if (localwM != null) {
      return localwM;
    }
    localwM = wM.a(c);
    h = localwM;
    return localwM;
  }
  
  public boolean i()
  {
    return a().getProtocol().equals("https");
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Request{method=").append(b).append(", url=").append(a).append(", tag=");
    if (e != this) {}
    for (Object localObject = e;; localObject = null) {
      return localObject + '}';
    }
  }
}

/* Location:
 * Qualified Name:     xt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */