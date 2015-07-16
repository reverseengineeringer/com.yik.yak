import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

class hi
  implements Runnable
{
  private final Map<String, String> b;
  
  hi(Map<String, String> paramMap)
  {
    b = new HashMap((Map)localObject);
    Object localObject = (String)((Map)localObject).get("&ht");
    paramMap = (Map<String, String>)localObject;
    if (localObject != null) {}
    try
    {
      Long.valueOf((String)localObject);
      paramMap = (Map<String, String>)localObject;
    }
    catch (NumberFormatException paramMap)
    {
      for (;;)
      {
        long l;
        paramMap = null;
      }
    }
    if (paramMap == null)
    {
      l = System.currentTimeMillis();
      b.put("&ht", Long.toString(l));
    }
  }
  
  private String a(Map<String, String> paramMap)
  {
    if (paramMap.containsKey("useSecure"))
    {
      if (gl.a((String)paramMap.get("useSecure"), true)) {
        return "https:";
      }
      return "http:";
    }
    return "https:";
  }
  
  private void b(Map<String, String> paramMap)
  {
    gO localgO = fX.a(he.a(a));
    gl.a(paramMap, "&adid", localgO);
    gl.a(paramMap, "&ate", localgO);
  }
  
  private void c(Map<String, String> paramMap)
  {
    gx localgx = gx.a();
    gl.a(paramMap, "&an", localgx);
    gl.a(paramMap, "&av", localgx);
    gl.a(paramMap, "&aid", localgx);
    gl.a(paramMap, "&aiid", localgx);
    paramMap.put("&v", "1");
  }
  
  private boolean d(Map<String, String> paramMap)
  {
    if (paramMap.get("&sf") == null) {
      return false;
    }
    double d = gl.a((String)paramMap.get("&sf"), 100.0D);
    if (d >= 100.0D) {
      return false;
    }
    if (he.a((String)paramMap.get("&cid")) % 10000 >= d * 100.0D)
    {
      if (paramMap.get("&t") == null) {}
      for (paramMap = "unknown";; paramMap = (String)paramMap.get("&t"))
      {
        gc.c(String.format("%s hit sampled out", new Object[] { paramMap }));
        return true;
      }
    }
    return false;
  }
  
  public void run()
  {
    b(b);
    if (TextUtils.isEmpty((CharSequence)b.get("&cid"))) {
      b.put("&cid", gG.a().a("&cid"));
    }
    if ((fN.a(he.a(a)).c()) || (d(b))) {
      return;
    }
    if (!TextUtils.isEmpty(he.b(a)))
    {
      hj.a().a(true);
      b.putAll(new fS().b(he.b(a)).a());
      hj.a().a(false);
      he.a(a, null);
    }
    c(b);
    Map localMap = ga.a(b);
    he.d(a).a(localMap, Long.valueOf((String)b.get("&ht")).longValue(), a(b), he.c(a));
  }
}

/* Location:
 * Qualified Name:     hi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */