import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

class yn
  extends yj
{
  private long d;
  
  public yn(yh paramyh, long paramLong)
  {
    super(paramyh, null);
    d = paramLong;
    if (d == 0L) {
      a(true);
    }
  }
  
  public long a(JP paramJP, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (a) {
      throw new IllegalStateException("closed");
    }
    if (d == 0L) {
      return -1L;
    }
    paramLong = yh.b(c).a(paramJP, Math.min(d, paramLong));
    if (paramLong == -1L)
    {
      a();
      throw new ProtocolException("unexpected end of stream");
    }
    d -= paramLong;
    if (d == 0L) {
      a(true);
    }
    return paramLong;
  }
  
  public void close()
  {
    if (a) {
      return;
    }
    if ((d != 0L) && (!xY.a(this, 100, TimeUnit.MILLISECONDS))) {
      a();
    }
    a = true;
  }
}

/* Location:
 * Qualified Name:     yn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */