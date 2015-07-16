import android.content.Context;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

public class or
{
  static Map<String, String> a = new HashMap();
  private static String b;
  
  static String a(String paramString1, String paramString2)
  {
    if (paramString2 == null)
    {
      if (paramString1.length() > 0) {
        return paramString1;
      }
      return null;
    }
    return Uri.parse("http://hostname/?" + paramString1).getQueryParameter(paramString2);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    oX.a(paramContext, "gtm_install_referrer", "referrer", paramString);
    b(paramContext, paramString);
  }
  
  public static void a(String paramString)
  {
    try
    {
      b = paramString;
      return;
    }
    finally {}
  }
  
  static void b(Context paramContext, String paramString)
  {
    String str = a(paramString, "conv");
    if ((str != null) && (str.length() > 0))
    {
      a.put(str, paramString);
      oX.a(paramContext, "gtm_click_referrers", str, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     or
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */