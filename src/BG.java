final class bg
  extends bj
{
  private final long a;
  private final String b;
  
  public bg(long paramLong, String paramString, bc parambc, bf parambf)
  {
    super(10, new bj[] { parambc, parambf });
    a = paramLong;
    b = paramString;
  }
  
  public int a()
  {
    return aj.b(1, a) + aj.b(2, af.a(b));
  }
  
  public void a(aj paramaj)
  {
    paramaj.a(1, a);
    paramaj.a(2, af.a(b));
  }
}

/* Location:
 * Qualified Name:     bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */