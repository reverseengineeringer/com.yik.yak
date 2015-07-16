import java.util.logging.Level;
import java.util.logging.Logger;

final class zd
  implements KT
{
  int a;
  byte b;
  int c;
  int d;
  short e;
  private final KB f;
  
  public zd(KB paramKB)
  {
    f = paramKB;
  }
  
  private void a()
  {
    int i = c;
    int j = zc.a(f);
    d = j;
    a = j;
    byte b1 = (byte)(f.k() & 0xFF);
    b = ((byte)(f.k() & 0xFF));
    if (zc.b().isLoggable(Level.FINE)) {
      zc.b().fine(ze.a(true, c, a, b1, b));
    }
    c = (f.m() & 0x7FFFFFFF);
    if (b1 != 9) {
      throw zc.a("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b1) });
    }
    if (c != i) {
      throw zc.a("TYPE_CONTINUATION streamId changed", new Object[0]);
    }
  }
  
  public long a(Kx paramKx, long paramLong)
  {
    if (d == 0)
    {
      f.g(e);
      e = 0;
      if ((b & 0x4) == 0) {}
    }
    do
    {
      return -1L;
      a();
      break;
      paramLong = f.a(paramKx, Math.min(paramLong, d));
    } while (paramLong == -1L);
    d = ((int)(d - paramLong));
    return paramLong;
  }
  
  public KU b()
  {
    return f.b();
  }
  
  public void close() {}
}

/* Location:
 * Qualified Name:     zd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */