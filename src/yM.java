import java.net.ProtocolException;

final class ym
  implements Kk
{
  private boolean b;
  private long c;
  
  private ym(yh paramyh, long paramLong)
  {
    c = paramLong;
  }
  
  public void a()
  {
    if (b) {
      return;
    }
    yh.a(a).a();
  }
  
  public void a_(JP paramJP, long paramLong)
  {
    if (b) {
      throw new IllegalStateException("closed");
    }
    xY.a(paramJP.c(), 0L, paramLong);
    if (paramLong > c) {
      throw new ProtocolException("expected " + c + " bytes but received " + paramLong);
    }
    yh.a(a).a_(paramJP, paramLong);
    c -= paramLong;
  }
  
  public Km b()
  {
    return yh.a(a).b();
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
    yh.a(a, 3);
  }
}

/* Location:
 * Qualified Name:     ym
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */