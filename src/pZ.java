import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class pz
{
  private static pz a;
  private volatile pA b;
  private volatile String c;
  private volatile String d;
  private volatile String e;
  
  pz()
  {
    e();
  }
  
  private String a(String paramString)
  {
    return paramString.split("&")[0].split("=")[1];
  }
  
  static pz a()
  {
    try
    {
      if (a == null) {
        a = new pz();
      }
      pz localpz = a;
      return localpz;
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
      pv.d("Container preview url: " + str);
      if (!str.matches(".*?&gtm_debug=x$")) {
        break label138;
      }
      b = pA.c;
    }
    catch (UnsupportedEncodingException paramUri)
    {
      for (;;)
      {
        bool = false;
        continue;
        b = pA.b;
      }
    }
    finally {}
    e = b(paramUri);
    if ((b == pA.b) || (b == pA.c)) {
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
          pv.d("Exit preview mode for container: " + c);
          b = pA.a;
          d = null;
        }
      }
      else
      {
        pv.b("Invalid preview uri: " + str);
        bool = false;
        continue;
      }
      bool = false;
    }
  }
  
  pA b()
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
    b = pA.a;
    d = null;
    c = null;
    e = null;
  }
}

/* Location:
 * Qualified Name:     pz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */