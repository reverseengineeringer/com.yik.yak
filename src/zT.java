import java.io.IOException;
import java.net.ProtocolException;
import java.util.List;

final class zt
  implements yU
{
  private final KB a;
  private final boolean b;
  private final zl c;
  
  zt(KB paramKB, boolean paramBoolean)
  {
    a = paramKB;
    c = new zl(a);
    b = paramBoolean;
  }
  
  private static IOException a(String paramString, Object... paramVarArgs)
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  private void a(yV paramyV, int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    int i = a.m();
    int j = a.m();
    a.l();
    List localList = c.a(paramInt2 - 10);
    boolean bool1;
    if ((paramInt1 & 0x1) != 0)
    {
      bool1 = true;
      if ((paramInt1 & 0x2) == 0) {
        break label95;
      }
    }
    for (;;)
    {
      paramyV.a(bool2, bool1, i & 0x7FFFFFFF, j & 0x7FFFFFFF, localList, yY.a);
      return;
      bool1 = false;
      break;
      label95:
      bool2 = false;
    }
  }
  
  private void b(yV paramyV, int paramInt1, int paramInt2)
  {
    int i = a.m();
    List localList = c.a(paramInt2 - 4);
    if ((paramInt1 & 0x1) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramyV.a(false, bool, i & 0x7FFFFFFF, -1, localList, yY.b);
      return;
    }
  }
  
  private void c(yV paramyV, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 8) {
      throw a("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramInt1 = a.m();
    paramInt2 = a.m();
    yT localyT = yT.a(paramInt2);
    if (localyT == null) {
      throw a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramyV.a(paramInt1 & 0x7FFFFFFF, localyT);
  }
  
  private void d(yV paramyV, int paramInt1, int paramInt2)
  {
    paramyV.a(false, false, a.m() & 0x7FFFFFFF, -1, c.a(paramInt2 - 4), yY.c);
  }
  
  private void e(yV paramyV, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 8) {
      throw a("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramInt1 = a.m();
    long l = a.m() & 0x7FFFFFFF;
    if (l == 0L) {
      throw a("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
    }
    paramyV.a(paramInt1 & 0x7FFFFFFF, l);
  }
  
  private void f(yV paramyV, int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    if (paramInt2 != 4) {
      throw a("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramInt1 = a.m();
    boolean bool3 = b;
    if ((paramInt1 & 0x1) == 1)
    {
      bool1 = true;
      if (bool3 != bool1) {
        break label79;
      }
    }
    label79:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramyV.a(bool1, paramInt1, 0);
      return;
      bool1 = false;
      break;
    }
  }
  
  private void g(yV paramyV, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 8) {
      throw a("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramInt1 = a.m();
    paramInt2 = a.m();
    yT localyT = yT.c(paramInt2);
    if (localyT == null) {
      throw a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramyV.a(paramInt1 & 0x7FFFFFFF, localyT, KC.a);
  }
  
  private void h(yV paramyV, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    int i = a.m();
    if (paramInt2 != i * 8 + 4) {
      throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
    }
    zr localzr = new zr();
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      int j = a.m();
      localzr.a(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, a.m());
      paramInt2 += 1;
    }
    if ((paramInt1 & 0x1) != 0) {}
    for (;;)
    {
      paramyV.a(bool, localzr);
      return;
      bool = false;
    }
  }
  
  public void a() {}
  
  public boolean a(yV paramyV)
  {
    boolean bool = false;
    int j;
    int k;
    int m;
    for (;;)
    {
      try
      {
        j = a.m();
        k = a.m();
        if ((0x80000000 & j) != 0)
        {
          i = 1;
          m = (0xFF000000 & k) >>> 24;
          k &= 0xFFFFFF;
          if (i == 0) {
            break label258;
          }
          i = (0x7FFF0000 & j) >>> 16;
          if (i == 3) {
            break;
          }
          throw new ProtocolException("version != 3: " + i);
        }
      }
      catch (IOException paramyV)
      {
        return false;
      }
      int i = 0;
    }
    switch (0xFFFF & j)
    {
    case 5: 
    default: 
      a.g(k);
      return true;
    case 1: 
      a(paramyV, m, k);
      return true;
    case 2: 
      b(paramyV, m, k);
      return true;
    case 3: 
      c(paramyV, m, k);
      return true;
    case 4: 
      h(paramyV, m, k);
      return true;
    case 6: 
      f(paramyV, m, k);
      return true;
    case 7: 
      g(paramyV, m, k);
      return true;
    case 8: 
      d(paramyV, m, k);
      return true;
    }
    e(paramyV, m, k);
    return true;
    label258:
    if ((m & 0x1) != 0) {
      bool = true;
    }
    paramyV.a(bool, 0x7FFFFFFF & j, a, k);
    return true;
  }
  
  public void close()
  {
    c.a();
  }
}

/* Location:
 * Qualified Name:     zt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */