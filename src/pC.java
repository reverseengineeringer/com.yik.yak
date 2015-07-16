import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class pC
{
  private static pC a;
  private volatile pD b;
  private volatile String c;
  private volatile String d;
  private volatile String e;
  
  pC()
  {
    e();
  }
  
  private String a(String paramString)
  {
    return paramString.split("&")[0].split("=")[1];
  }
  
  static pC a()
  {
    try
    {
      if (a == null) {
        a = new pC();
      }
      pC localpC = a;
      return localpC;
    }
    finally {}
  }
  
  private String b(Uri paramUri)
  {
    return paramUri.getQuery().replace("&gtm_debug=x", "");
  }
  
  boolean a(Uri paramUri)
  {
    boolean bool = true;
    String str;
    try
    {
      str = URLDecoder.decode(paramUri.toString(), "UTF-8");
      if (!str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
        break label153;
      }
      py.d("Container preview url: " + str);
      if (!str.matches(".*?&gtm_debug=x$")) {
        break label138;
      }
      b = pD.c;
    }
    catch (UnsupportedEncodingException paramUri)
    {
      for (;;)
      {
        bool = false;
        continue;
        b = pD.b;
      }
    }
    finally {}
    e = b(paramUri);
    if ((b == pD.b) || (b == pD.c)) {
      d = ("/r?" + e);
    }
    c = a(e);
    for (;;)
    {
      return bool;
      label138:
      label153:
      if (str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"))
      {
        if (a(paramUri.getQuery()).equals(c))
        {
          py.d("Exit preview mode for container: " + c);
          b = pD.a;
          d = null;
        }
      }
      else
      {
        py.b("Invalid preview uri: " + str);
        bool = false;
        continue;
      }
      bool = false;
    }
  }
  
  pD b()
  {
    return b;
  }
  
  String c()
  {
    return d;
  }
  
  String d()
  {
    return c;
  }
  
  void e()
  {
    b = pD.a;
    d = null;
    c = null;
    e = null;
  }
}

/* Location:
 * Qualified Name:     pC
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */