import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

class hl
  implements Runnable
{
  private final Map<String, String> b;
  
  hl(Map<String, String> paramMap)
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
      if (go.a((String)paramMap.get("useSecure"), true)) {
        return "https:";
      }
      return "http:";
    }
    return "https:";
  }
  
  private void b(Map<String, String> paramMap)
  {
    gR localgR = ga.a(hh.a(a));
    go.a(paramMap, "&adid", localgR);
    go.a(paramMap, "&ate", localgR);
  }
  
  private void c(Map<String, String> paramMap)
  {
    gA localgA = gA.a();
    go.a(paramMap, "&an", localgA);
    go.a(paramMap, "&av", localgA);
    go.a(paramMap, "&aid", localgA);
    go.a(paramMap, "&aiid", localgA);
    paramMap.put("&v", "1");
  }
  
  private boolean d(Map<String, String> paramMap)
  {
    if (paramMap.get("&sf") == null) {
      return false;
    }
    double d = go.a((String)paramMap.get("&sf"), 100.0D);
    if (d >= 100.0D) {
      return false;
    }
    if (hh.a((String)paramMap.get("&cid")) % 10000 >= d * 100.0D)
    {
      if (paramMap.get("&t") == null) {}
      for (paramMap = "unknown";; paramMap = (String)paramMap.get("&t"))
      {
        gf.c(String.format("%s hit sampled out", new Object[] { paramMap }));
        return true;
      }
    }
    return false;
  }
  
  public void run()
  {
    b(b);
    if (TextUtils.isEmpty((CharSequence)b.get("&cid"))) {
      b.put("&cid", gJ.a().a("&cid"));
    }
    if ((fQ.a(hh.a(a)).c()) || (d(b))) {
      return;
    }
    if (!TextUtils.isEmpty(hh.b(a)))
    {
      hm.a().a(true);
      b.putAll(new fV().b(hh.b(a)).a());
      hm.a().a(false);
      hh.a(a, null);
    }
    c(b);
    Map localMap = gd.a(b);
    hh.d(a).a(localMap, Long.valueOf((String)b.get("&ht")).longValue(), a(b), hh.c(a));
  }
}

/* Location:
 * Qualified Name:     hl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */