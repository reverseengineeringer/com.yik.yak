import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class zg
  implements yW
{
  private final KA a;
  private final boolean b;
  private final Kx c;
  private final zb d;
  private int e;
  private boolean f;
  
  zg(KA paramKA, boolean paramBoolean)
  {
    a = paramKA;
    b = paramBoolean;
    c = new Kx();
    d = new zb(c);
    e = 16384;
  }
  
  private void b(int paramInt, long paramLong)
  {
    if (paramLong > 0L)
    {
      int i = (int)Math.min(e, paramLong);
      paramLong -= i;
      if (paramLong == 0L) {}
      for (byte b1 = 4;; b1 = 0)
      {
        a(paramInt, i, (byte)9, b1);
        a.a_(c, i);
        break;
      }
    }
  }
  
  public void a()
  {
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    boolean bool = b;
    if (!bool) {}
    for (;;)
    {
      return;
      if (zc.b().isLoggable(Level.FINE)) {
        zc.b().fine(String.format(">> CONNECTION %s", new Object[] { zc.a().c() }));
      }
      a.c(zc.a().f());
      a.a();
    }
  }
  
  void a(int paramInt1, byte paramByte, Kx paramKx, int paramInt2)
  {
    a(paramInt1, paramInt2, (byte)0, paramByte);
    if (paramInt2 > 0) {
      a.a_(paramKx, paramInt2);
    }
  }
  
  void a(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
  {
    if (zc.b().isLoggable(Level.FINE)) {
      zc.b().fine(ze.a(false, paramInt1, paramInt2, paramByte1, paramByte2));
    }
    if (paramInt2 > e) {
      throw zc.b("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(e), Integer.valueOf(paramInt2) });
    }
    if ((0x80000000 & paramInt1) != 0) {
      throw zc.b("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
    }
    zc.a(a, paramInt2);
    a.g(paramByte1 & 0xFF);
    a.g(paramByte2 & 0xFF);
    a.e(0x7FFFFFFF & paramInt1);
  }
  
  public void a(int paramInt1, int paramInt2, List<yX> paramList)
  {
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (c.c() != 0L) {
      throw new IllegalStateException();
    }
    d.a(paramList);
    long l = c.c();
    int i = (int)Math.min(e - 4, l);
    if (l == i) {}
    for (byte b1 = 4;; b1 = 0)
    {
      a(paramInt1, i + 4, (byte)5, b1);
      a.e(0x7FFFFFFF & paramInt2);
      a.a_(c, i);
      if (l > i) {
        b(paramInt1, l - i);
      }
      return;
    }
  }
  
  public void a(int paramInt, long paramLong)
  {
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    if ((paramLong == 0L) || (paramLong > 2147483647L)) {
      throw zc.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
    }
    a(paramInt, 4, (byte)8, (byte)0);
    a.e((int)paramLong);
    a.a();
  }
  
  public void a(int paramInt, yT paramyT)
  {
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (t == -1) {
      throw new IllegalArgumentException();
    }
    a(paramInt, 4, (byte)3, (byte)0);
    a.e(s);
    a.a();
  }
  
  public void a(int paramInt, yT paramyT, byte[] paramArrayOfByte)
  {
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (s == -1) {
      throw zc.b("errorCode.httpCode == -1", new Object[0]);
    }
    a(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
    a.e(paramInt);
    a.e(s);
    if (paramArrayOfByte.length > 0) {
      a.c(paramArrayOfByte);
    }
    a.a();
  }
  
  public void a(zr paramzr)
  {
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    e = paramzr.d(e);
    a(0, 0, (byte)4, (byte)1);
    a.a();
  }
  
  public void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    byte b1 = 0;
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramBoolean) {
      b1 = 1;
    }
    a(0, 8, (byte)6, b1);
    a.e(paramInt1);
    a.e(paramInt2);
    a.a();
  }
  
  public void a(boolean paramBoolean, int paramInt1, Kx paramKx, int paramInt2)
  {
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    byte b1 = 0;
    if (paramBoolean) {
      b1 = (byte)1;
    }
    a(paramInt1, b1, paramKx, paramInt2);
  }
  
  void a(boolean paramBoolean, int paramInt, List<yX> paramList)
  {
    if (f) {
      throw new IOException("closed");
    }
    if (c.c() != 0L) {
      throw new IllegalStateException();
    }
    d.a(paramList);
    long l = c.c();
    int i = (int)Math.min(e, l);
    if (l == i) {}
    for (byte b1 = 4;; b1 = 0)
    {
      byte b2 = b1;
      if (paramBoolean) {
        b2 = (byte)(b1 | 0x1);
      }
      a(paramInt, i, (byte)1, b2);
      a.a_(c, i);
      if (l > i) {
        b(paramInt, l - i);
      }
      return;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<yX> paramList)
  {
    if (paramBoolean2) {
      try
      {
        throw new UnsupportedOperationException();
      }
      finally {}
    }
    if (f) {
      throw new IOException("closed");
    }
    a(paramBoolean1, paramInt1, paramList);
  }
  
  public void b()
  {
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    a.a();
  }
  
  public void b(zr paramzr)
  {
    int i = 0;
    try
    {
      if (f) {
        throw new IOException("closed");
      }
    }
    finally {}
    a(0, paramzr.b() * 6, (byte)4, (byte)0);
    if (i < 10) {
      if (paramzr.a(i)) {
        break label110;
      }
    }
    for (;;)
    {
      label57:
      a.f(j);
      a.e(paramzr.b(i));
      break label103;
      a.a();
      return;
      label103:
      label110:
      do
      {
        j = i;
        break label57;
        i += 1;
        break;
        if (i == 4)
        {
          j = 3;
          break label57;
        }
      } while (i != 7);
      int j = 4;
    }
  }
  
  public int c()
  {
    return e;
  }
  
  public void close()
  {
    try
    {
      f = true;
      a.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     zg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */