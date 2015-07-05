import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class fw
{
  private Map<String, String> a = new HashMap();
  
  public static fw a(String paramString, Boolean paramBoolean)
  {
    fo.a().a(fp.H);
    fw localfw = new fw();
    localfw.a("&t", "exception");
    localfw.a("&exd", paramString);
    localfw.a("&exf", a(paramBoolean));
    return localfw;
  }
  
  public static fw a(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    fo.a().a(fp.Y);
    fw localfw = new fw();
    localfw.a("&t", "event");
    localfw.a("&ec", paramString1);
    localfw.a("&ea", paramString2);
    localfw.a("&el", paramString3);
    if (paramLong == null) {}
    for (paramString1 = null;; paramString1 = Long.toString(paramLong.longValue()))
    {
      localfw.a("&ev", paramString1);
      return localfw;
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
  
  public static fw b()
  {
    fo.a().a(fp.ak);
    fw localfw = new fw();
    localfw.a("&t", "appview");
    return localfw;
  }
  
  public fw a(String paramString)
  {
    fo.a().a(fp.d);
    paramString = fI.b(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return this;
    }
    paramString = fI.a(paramString);
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
  
  public fw a(String paramString1, String paramString2)
  {
    fo.a().a(fp.a);
    if (paramString1 != null)
    {
      a.put(paramString1, paramString2);
      return this;
    }
    ft.d(" MapBuilder.set() called with a null paramName.");
    return this;
  }
  
  public Map<String, String> a()
  {
    return new HashMap(a);
  }
}

/* Location:
 * Qualified Name:     fw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */