import android.text.TextUtils;

class fo
{
  private String a;
  private final long b;
  private final long c;
  private String d = "https:";
  
  fo(String paramString, long paramLong1, long paramLong2)
  {
    a = paramString;
    b = paramLong1;
    c = paramLong2;
  }
  
  String a()
  {
    return a;
  }
  
  void a(String paramString)
  {
    a = paramString;
  }
  
  long b()
  {
    return b;
  }
  
  void b(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {}
    while (!paramString.toLowerCase().startsWith("http:")) {
      return;
    }
    d = "http:";
  }
  
  long c()
  {
    return c;
  }
  
  String d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */