public class ge
  implements gj
{
  private final long a;
  private final int b;
  private double c;
  private long d;
  private final Object e = new Object();
  private final String f;
  
  public ge(int paramInt, long paramLong, String paramString)
  {
    b = paramInt;
    c = b;
    a = paramLong;
    f = paramString;
  }
  
  public ge(String paramString)
  {
    this(60, 2000L, paramString);
  }
  
  public boolean a()
  {
    synchronized (e)
    {
      long l = System.currentTimeMillis();
      if (c < b)
      {
        double d1 = (l - d) / a;
        if (d1 > 0.0D) {
          c = Math.min(b, d1 + c);
        }
      }
      d = l;
      if (c >= 1.0D)
      {
        c -= 1.0D;
        return true;
      }
      gf.d("Excessive " + f + " detected; call ignored.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */