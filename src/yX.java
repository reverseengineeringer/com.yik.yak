import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public final class yx
{
  static final String a = xS.a().b();
  public static final String b = a + "-Sent-Millis";
  public static final String c = a + "-Received-Millis";
  public static final String d = a + "-Selected-Protocol";
  private static final Comparator<String> e = new yy();
  
  public static long a(xi paramxi)
  {
    return b(paramxi.a("Content-Length"));
  }
  
  public static long a(xt paramxt)
  {
    return a(paramxt.e());
  }
  
  public static long a(xz paramxz)
  {
    return a(paramxz.g());
  }
  
  private static String a(List<String> paramList)
  {
    if (paramList.size() == 1) {
      return (String)paramList.get(0);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      if (i > 0) {
        localStringBuilder.append("; ");
      }
      localStringBuilder.append((String)paramList.get(i));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static Map<String, List<String>> a(xi paramxi, String paramString)
  {
    TreeMap localTreeMap = new TreeMap(e);
    int j = paramxi.a();
    int i = 0;
    while (i < j)
    {
      String str1 = paramxi.a(i);
      String str2 = paramxi.b(i);
      ArrayList localArrayList = new ArrayList();
      List localList = (List)localTreeMap.get(str1);
      if (localList != null) {
        localArrayList.addAll(localList);
      }
      localArrayList.add(str2);
      localTreeMap.put(str1, Collections.unmodifiableList(localArrayList));
      i += 1;
    }
    if (paramString != null) {
      localTreeMap.put(null, Collections.unmodifiableList(Collections.singletonList(paramString)));
    }
    return Collections.unmodifiableMap(localTreeMap);
  }
  
  public static xt a(wE paramwE, xz paramxz, Proxy paramProxy)
  {
    if (paramxz.c() == 407) {
      return paramwE.b(paramProxy, paramxz);
    }
    return paramwE.a(paramProxy, paramxz);
  }
  
  public static void a(xv paramxv, Map<String, List<String>> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      String str = (String)localEntry.getKey();
      if ((("Cookie".equalsIgnoreCase(str)) || ("Cookie2".equalsIgnoreCase(str))) && (!((List)localEntry.getValue()).isEmpty())) {
        paramxv.b(str, a((List)localEntry.getValue()));
      }
    }
  }
  
  static boolean a(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }
  
  public static boolean a(xz paramxz, xi paramxi, xt paramxt)
  {
    paramxz = d(paramxz).iterator();
    while (paramxz.hasNext())
    {
      String str = (String)paramxz.next();
      if (!xY.a(paramxi.c(str), paramxt.b(str))) {
        return false;
      }
    }
    return true;
  }
  
  private static long b(String paramString)
  {
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
  
  public static List<wX> b(xi paramxi, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramxi.a();
    int i = 0;
    if (i < k)
    {
      if (!paramString.equalsIgnoreCase(paramxi.a(i))) {}
      label181:
      for (;;)
      {
        i += 1;
        break;
        String str1 = paramxi.b(i);
        int j = 0;
        for (;;)
        {
          if (j >= str1.length()) {
            break label181;
          }
          int m = yg.a(str1, j, " ");
          String str2 = str1.substring(j, m).trim();
          j = yg.a(str1, m);
          if (!str1.regionMatches(true, j, "realm=\"", 0, "realm=\"".length())) {
            break;
          }
          j = "realm=\"".length() + j;
          m = yg.a(str1, j, "\"");
          String str3 = str1.substring(j, m);
          j = yg.a(str1, yg.a(str1, m + 1, ",") + 1);
          localArrayList.add(new wX(str2, str3));
        }
      }
    }
    return localArrayList;
  }
  
  public static boolean b(xz paramxz)
  {
    return d(paramxz).contains("*");
  }
  
  public static xi c(xz paramxz)
  {
    Set localSet = d(paramxz);
    if (localSet.isEmpty()) {
      return new xk().a();
    }
    paramxz = paramxz.j().a().e();
    xk localxk = new xk();
    int i = 0;
    int j = paramxz.a();
    while (i < j)
    {
      String str = paramxz.a(i);
      if (localSet.contains(str)) {
        localxk.a(str, paramxz.b(i));
      }
      i += 1;
    }
    return localxk.a();
  }
  
  private static Set<String> d(xz paramxz)
  {
    Object localObject1 = Collections.emptySet();
    xi localxi = paramxz.g();
    int k = localxi.a();
    int i = 0;
    while (i < k) {
      if (!"Vary".equalsIgnoreCase(localxi.a(i)))
      {
        i += 1;
      }
      else
      {
        Object localObject2 = localxi.b(i);
        paramxz = (xz)localObject1;
        if (((Set)localObject1).isEmpty()) {
          paramxz = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        }
        localObject2 = ((String)localObject2).split(",");
        int m = localObject2.length;
        int j = 0;
        for (;;)
        {
          localObject1 = paramxz;
          if (j >= m) {
            break;
          }
          paramxz.add(localObject2[j].trim());
          j += 1;
        }
      }
    }
    return (Set<String>)localObject1;
  }
}

/* Location:
 * Qualified Name:     yx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */