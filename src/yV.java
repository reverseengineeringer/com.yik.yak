import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

class yv
  extends yt
{
  private int d = -1;
  private boolean e = true;
  private final yB f;
  
  yv(yr paramyr, yB paramyB)
  {
    super(paramyr, null);
    f = paramyB;
  }
  
  private void c()
  {
    if (d != -1) {
      yr.b(c).q();
    }
    String str = yr.b(c).q();
    int i = str.indexOf(";");
    Object localObject = str;
    if (i != -1) {
      localObject = str.substring(0, i);
    }
    try
    {
      d = Integer.parseInt(((String)localObject).trim(), 16);
      if (d == 0)
      {
        e = false;
        localObject = new xu();
        c.a((xu)localObject);
        f.a(((xu)localObject).a());
        a(true);
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new ProtocolException("Expected a hex chunk size but was " + (String)localObject);
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
    if (!e) {}
    do
    {
      return -1L;
      if ((d != 0) && (d != -1)) {
        break;
      }
      c();
    } while (!e);
    paramLong = yr.b(c).a(paramKx, Math.min(paramLong, d));
    if (paramLong == -1L)
    {
      a();
      throw new IOException("unexpected end of stream");
    }
    d = ((int)(d - paramLong));
    return paramLong;
  }
  
  public void close()
  {
    if (a) {
      return;
    }
    if ((e) && (!yi.a(this, 100, TimeUnit.MILLISECONDS))) {
      a();
    }
    a = true;
  }
}

/* Location:
 * Qualified Name:     yv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */