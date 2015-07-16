import java.net.ProtocolException;

final class yw
  implements KS
{
  private boolean b;
  private long c;
  
  private yw(yr paramyr, long paramLong)
  {
    c = paramLong;
  }
  
  public void a()
  {
    if (b) {
      return;
    }
    yr.a(a).a();
  }
  
  public void a_(Kx paramKx, long paramLong)
  {
    if (b) {
      throw new IllegalStateException("closed");
    }
    yi.a(paramKx.c(), 0L, paramLong);
    if (paramLong > c) {
      throw new ProtocolException("expected " + c + " bytes but received " + paramLong);
    }
    yr.a(a).a_(paramKx, paramLong);
    c -= paramLong;
  }
  
  public KU b()
  {
    return yr.a(a).b();
  }
  
  public void close()
  {
    if (b) {
      return;
    }
    b = true;
    if (c > 0L) {
      throw new ProtocolException("unexpected end of stream");
    }
    yr.a(a, 3);
  }
}

/* Location:
 * Qualified Name:     yw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */