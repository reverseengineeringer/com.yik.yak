import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class ft
{
  private Map<String, String> a = new HashMap();
  
  public static ft a(String paramString, Boolean paramBoolean)
  {
    fl.a().a(fm.H);
    ft localft = new ft();
    localft.a("&t", "exception");
    localft.a("&exd", paramString);
    localft.a("&exf", a(paramBoolean));
    return localft;
  }
  
  public static ft a(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    fl.a().a(fm.Y);
    ft localft = new ft();
    localft.a("&t", "event");
    localft.a("&ec", paramString1);
    localft.a("&ea", paramString2);
    localft.a("&el", paramString3);
    if (paramLong == null) {}
    for (paramString1 = null;; paramString1 = Long.toString(paramLong.longValue()))
    {
      localft.a("&ev", paramString1);
      return localft;
    }
  }
  
  static String a(Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      return null;
    }
    if (paramBoolean.booleanValue()) {
      return "1";
    }
    return "0";
  }
  
  public static ft b()
  {
    fl.a().a(fm.ak);
    ft localft = new ft();
    localft.a("&t", "appview");
    return localft;
  }
  
  public ft a(String paramString)
  {
    fl.a().a(fm.d);
    paramString = fF.b(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return this;
    }
    paramString = fF.a(paramString);
    a("&cc", (String)paramString.get("utm_content"));
    a("&cm", (String)paramString.get("utm_medium"));
    a("&cn", (String)paramString.get("utm_campaign"));
    a("&cs", (String)paramString.get("utm_source"));
    a("&ck", (String)paramString.get("utm_term"));
    a("&ci", (String)paramString.get("utm_id"));
    a("&gclid", (String)paramString.get("gclid"));
    a("&dclid", (String)paramString.get("dclid"));
    a("&gmob_t", (String)paramString.get("gmob_t"));
    return this;
  }
  
  public ft a(String paramString1, String paramString2)
  {
    fl.a().a(fm.a);
    if (paramString1 != null)
    {
      a.put(paramString1, paramString2);
      return this;
    }
    fq.d(" MapBuilder.set() called with a null paramName.");
    return this;
  }
  
  public Map<String, String> a()
  {
    return new HashMap(a);
  }
}

/* Location:
 * Qualified Name:     ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */