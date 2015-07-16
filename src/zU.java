import java.io.IOException;
import java.util.List;
import java.util.zip.Deflater;

final class zu
  implements yW
{
  private final KA a;
  private final Kx b;
  private final KA c;
  private final boolean d;
  private boolean e;
  
  zu(KA paramKA, boolean paramBoolean)
  {
    a = paramKA;
    d = paramBoolean;
    paramKA = new Deflater();
    paramKA.setDictionary(zs.a);
    b = new Kx();
    c = KI.a(new KD(b, paramKA));
  }
  
  private void a(List<yX> paramList)
  {
    if (b.c() != 0L) {
      throw new IllegalStateException();
    }
    c.e(paramList.size());
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      KC localKC = geth;
      c.e(localKC.e());
      c.b(localKC);
      localKC = geti;
      c.e(localKC.e());
      c.b(localKC);
      i += 1;
    }
    c.a();
  }
  
  public void a() {}
  
  void a(int paramInt1, int paramInt2, Kx paramKx, int paramInt3)
  {
    if (e) {
      throw new IOException("closed");
    }
    if (paramInt3 > 16777215L) {
      throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt3);
    }
    a.e(0x7FFFFFFF & paramInt1);
    a.e((paramInt2 & 0xFF) << 24 | 0xFFFFFF & paramInt3);
    if (paramInt3 > 0) {
      a.a_(paramKx, paramInt3);
    }
  }
  
  public void a(int paramInt1, int paramInt2, List<yX> paramList) {}
  
  public void a(int paramInt, long paramLong)
  {
    try
    {
      if (e) {
        throw new IOException("closed");
      }
    }
    finally {}
    if ((paramLong == 0L) || (paramLong > 2147483647L)) {
      throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + paramLong);
    }
    a.e(-2147287031);
    a.e(8);
    a.e(paramInt);
    a.e((int)paramLong);
    a.a();
  }
  
  public void a(int paramInt, yT paramyT)
  {
    try
    {
      if (e) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (t == -1) {
      throw new IllegalArgumentException();
    }
    a.e(-2147287037);
    a.e(8);
    a.e(0x7FFFFFFF & paramInt);
    a.e(t);
    a.a();
  }
  
  public void a(int paramInt, yT paramyT, byte[] paramArrayOfByte)
  {
    try
    {
      if (e) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (u == -1) {
      throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
    }
    a.e(-2147287033);
    a.e(8);
    a.e(paramInt);
    a.e(u);
    a.a();
  }
  
  public void a(zr paramzr) {}
  
  public void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    try
    {
      if (e) {
        throw new IOException("closed");
      }
    }
    finally {}
    boolean bool3 = d;
    boolean bool1;
    if ((paramInt1 & 0x1) == 1) {
      bool1 = true;
    }
    for (;;)
    {
      if (paramBoolean != bool1) {
        throw new IllegalArgumentException("payload != reply");
      }
      a.e(-2147287034);
      a.e(4);
      a.e(paramInt1);
      a.a();
      return;
      for (;;)
      {
        if (bool3 == bool1) {
          break label130;
        }
        bool1 = bool2;
        break;
        bool1 = false;
      }
      label130:
      bool1 = false;
    }
  }
  
  public void a(boolean paramBoolean, int paramInt1, Kx paramKx, int paramInt2)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      try
      {
        a(paramInt1, i, paramKx, paramInt2);
        return;
      }
      finally {}
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<yX> paramList)
  {
    int j = 0;
    try
    {
      if (e) {
        throw new IOException("closed");
      }
    }
    finally {}
    a(paramList);
    int k = (int)(10L + b.c());
    int i;
    if (paramBoolean1) {
      i = 1;
    }
    for (;;)
    {
      a.e(-2147287039);
      a.e(((j | i) & 0xFF) << 24 | k & 0xFFFFFF);
      a.e(paramInt1 & 0x7FFFFFFF);
      a.e(paramInt2 & 0x7FFFFFFF);
      a.f(0);
      a.a(b);
      a.a();
      return;
      i = 0;
      if (paramBoolean2) {
        j = 2;
      }
    }
  }
  
  public void b()
  {
    try
    {
      if (e) {
        throw new IOException("closed");
      }
    }
    finally {}
    a.a();
  }
  
  public void b(zr paramzr)
  {
    try
    {
      if (e) {
        throw new IOException("closed");
      }
    }
    finally {}
    int i = paramzr.b();
    a.e(-2147287036);
    a.e(i * 8 + 4 & 0xFFFFFF | 0x0);
    a.e(i);
    i = 0;
    for (;;)
    {
      if (i <= 10)
      {
        if (paramzr.a(i))
        {
          int j = paramzr.c(i);
          a.e((j & 0xFF) << 24 | i & 0xFFFFFF);
          a.e(paramzr.b(i));
        }
      }
      else
      {
        a.a();
        return;
      }
      i += 1;
    }
  }
  
  public int c()
  {
    return 16383;
  }
  
  public void close()
  {
    try
    {
      e = true;
      yi.a(a, c);
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
 * Qualified Name:     zu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */