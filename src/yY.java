class yy
  extends yt
{
  private boolean d;
  
  private yy(yr paramyr)
  {
    super(paramyr, null);
  }
  
  public long a(Kx paramKx, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (a) {
      throw new IllegalStateException("closed");
    }
    if (d) {
      return -1L;
    }
    paramLong = yr.b(c).a(paramKx, paramLong);
    if (paramLong == -1L)
    {
      d = true;
      a(false);
      return -1L;
    }
    return paramLong;
  }
  
  public void close()
  {
    if (a) {
      return;
    }
    if (!d) {
      a();
    }
    a = true;
  }
}

/* Location:
 * Qualified Name:     yy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */