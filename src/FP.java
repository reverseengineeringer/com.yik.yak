import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class fp
{
  static String a(fo paramfo, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramfo.a());
    if (paramfo.c() > 0L)
    {
      paramLong -= paramfo.c();
      if (paramLong >= 0L) {
        localStringBuilder.append("&qt").append("=").append(paramLong);
      }
    }
    localStringBuilder.append("&z").append("=").append(paramfo.b());
    return localStringBuilder.toString();
  }
  
  static String a(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError("URL encoding failed for: " + paramString);
    }
  }
  
  static Map<String, String> a(Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if ((((String)localEntry.getKey()).startsWith("&")) && (localEntry.getValue() != null))
      {
        String str = ((String)localEntry.getKey()).substring(1);
        if (!TextUtils.isEmpty(str)) {
          localHashMap.put(str, localEntry.getValue());
        }
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     fp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */