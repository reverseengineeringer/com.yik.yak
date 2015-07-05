import android.text.TextUtils;

public class gc
{
  private String a;
  private final long b;
  private final long c;
  private final String d;
  private String e;
  private String f = "https:";
  
  public gc(String paramString1, long paramLong1, long paramLong2, String paramString2)
  {
    a = paramString1;
    b = paramLong1;
    c = paramLong2;
    d = paramString2;
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public long b()
  {
    return b;
  }
  
  public void b(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {}
    do
    {
      return;
      e = paramString;
    } while (!paramString.toLowerCase().startsWith("http:"));
    f = "http:";
  }
  
  public long c()
  {
    return c;
  }
  
  public String d()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     gc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */