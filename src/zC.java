class zc
  extends JX
{
  zc(zb paramzb, Kl paramKl)
  {
    super(paramKl);
  }
  
  public long a(JP paramJP, long paramLong)
  {
    if (zb.a(a) == 0) {}
    do
    {
      return -1L;
      paramLong = super.a(paramJP, Math.min(paramLong, zb.a(a)));
    } while (paramLong == -1L);
    zb.a(a, (int)(zb.a(a) - paramLong));
    return paramLong;
  }
}

/* Location:
 * Qualified Name:     zc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */