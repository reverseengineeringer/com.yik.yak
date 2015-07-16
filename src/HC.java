import com.google.android.gms.internal.ha;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class hc
{
  private final Map<String, String> a;
  private final long b;
  private final String c;
  private final List<ha> d;
  
  public hc(Map<String, String> paramMap, long paramLong, String paramString, List<ha> paramList)
  {
    a = paramMap;
    b = paramLong;
    c = paramString;
    d = paramList;
  }
  
  public Map<String, String> a()
  {
    return a;
  }
  
  public long b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public List<ha> d()
  {
    return d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PATH: ");
    localStringBuilder.append(c);
    if (a != null)
    {
      localStringBuilder.append("  PARAMS: ");
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append((String)localEntry.getValue());
        localStringBuilder.append(",  ");
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */