public final class xg
{
  private final String a;
  private final String b;
  
  public xg(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof xg)) && (yi.a(a, a)) && (yi.a(b, b));
  }
  
  public int hashCode()
  {
    int j = 0;
    if (b != null) {}
    for (int i = b.hashCode();; i = 0)
    {
      if (a != null) {
        j = a.hashCode();
      }
      return (i + 899) * 31 + j;
    }
  }
  
  public String toString()
  {
    return a + " realm=\"" + b + "\"";
  }
}

/* Location:
 * Qualified Name:     xg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */