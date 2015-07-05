class yo
  extends yj
{
  private boolean d;
  
  private yo(yh paramyh)
  {
    super(paramyh, null);
  }
  
  public long a(JP paramJP, long paramLong)
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
    paramLong = yh.b(c).a(paramJP, paramLong);
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
 * Qualified Name:     yo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */