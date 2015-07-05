import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class gg
{
  private final Map<String, Integer> a = new HashMap();
  private final Map<String, String> b = new HashMap();
  private final boolean c;
  private final String d;
  
  public gg(String paramString, boolean paramBoolean)
  {
    c = paramBoolean;
    d = paramString;
  }
  
  public String a()
  {
    if (!c) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(d);
    Iterator localIterator = a.keySet().iterator();
    String str;
    while (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localStringBuilder.append("&").append(str).append("=").append(a.get(str));
    }
    localIterator = b.keySet().iterator();
    while (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localStringBuilder.append("&").append(str).append("=").append((String)b.get(str));
    }
    return localStringBuilder.toString();
  }
  
  public void a(String paramString, int paramInt)
  {
    if (!c) {
      return;
    }
    Integer localInteger2 = (Integer)a.get(paramString);
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null) {
      localInteger1 = Integer.valueOf(0);
    }
    a.put(paramString, Integer.valueOf(localInteger1.intValue() + paramInt));
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((!c) || (TextUtils.isEmpty(paramString1))) {
      return;
    }
    b.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     gg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */