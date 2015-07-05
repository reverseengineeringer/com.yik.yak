import java.net.URL;

public class xv
{
  private String a;
  private URL b;
  private String c;
  private xk d;
  private xw e;
  private Object f;
  
  public xv()
  {
    c = "GET";
    d = new xk();
  }
  
  private xv(xt paramxt)
  {
    a = xt.a(paramxt);
    b = xt.b(paramxt);
    c = xt.c(paramxt);
    e = xt.d(paramxt);
    f = xt.e(paramxt);
    d = xt.f(paramxt).b();
  }
  
  public xv a()
  {
    return a("GET", null);
  }
  
  public xv a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("url == null");
    }
    a = paramString;
    return this;
  }
  
  public xv a(String paramString1, String paramString2)
  {
    d.b(paramString1, paramString2);
    return this;
  }
  
  public xv a(String paramString, xw paramxw)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      throw new IllegalArgumentException("method == null || method.length() == 0");
    }
    if ((paramxw != null) && (!yv.c(paramString))) {
      throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
    }
    xw localxw = paramxw;
    if (paramxw == null)
    {
      localxw = paramxw;
      if (yv.c(paramString)) {
        localxw = xw.a(null, xY.a);
      }
    }
    c = paramString;
    e = localxw;
    return this;
  }
  
  public xv a(URL paramURL)
  {
    if (paramURL == null) {
      throw new IllegalArgumentException("url == null");
    }
    b = paramURL;
    a = paramURL.toString();
    return this;
  }
  
  public xv a(xi paramxi)
  {
    d = paramxi.b();
    return this;
  }
  
  public xv a(xw paramxw)
  {
    return a("POST", paramxw);
  }
  
  public xt b()
  {
    if (a == null) {
      throw new IllegalStateException("url == null");
    }
    return new xt(this, null);
  }
  
  public xv b(String paramString)
  {
    d.b(paramString);
    return this;
  }
  
  public xv b(String paramString1, String paramString2)
  {
    d.a(paramString1, paramString2);
    return this;
  }
  
  public xv b(xw paramxw)
  {
    return a("PUT", paramxw);
  }
}

/* Location:
 * Qualified Name:     xv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */