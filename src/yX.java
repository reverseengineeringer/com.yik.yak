import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

class yx
  extends yt
{
  private long d;
  
  public yx(yr paramyr, long paramLong)
  {
    super(paramyr, null);
    d = paramLong;
    if (d == 0L) {
      a(true);
    }
  }
  
  public long a(Kx paramKx, long paramLong)
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
    paramLong = yr.b(c).a(paramKx, Math.min(d, paramLong));
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
    if ((d != 0L) && (!yi.a(this, 100, TimeUnit.MILLISECONDS))) {
      a();
    }
    a = true;
  }
}

/* Location:
 * Qualified Name:     yx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */