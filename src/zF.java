import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class zf
  implements yU
{
  final za a;
  private final KB b;
  private final zd c;
  private final boolean d;
  
  zf(KB paramKB, int paramInt, boolean paramBoolean)
  {
    b = paramKB;
    d = paramBoolean;
    c = new zd(b);
    a = new za(paramInt, c);
  }
  
  private List<yX> a(int paramInt1, short paramShort, byte paramByte, int paramInt2)
  {
    zd localzd = c;
    c.d = paramInt1;
    a = paramInt1;
    c.e = paramShort;
    c.b = paramByte;
    c.c = paramInt2;
    a.a();
    return a.b();
  }
  
  private void a(yV paramyV, int paramInt)
  {
    b.m();
    b.k();
  }
  
  private void a(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    if (paramInt2 == 0) {
      throw zc.a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }
    boolean bool;
    if ((paramByte & 0x1) != 0)
    {
      bool = true;
      if ((paramByte & 0x8) == 0) {
        break label108;
      }
    }
    label108:
    for (short s = (short)(b.k() & 0xFF);; s = 0)
    {
      int i = paramInt1;
      if ((paramByte & 0x20) != 0)
      {
        a(paramyV, paramInt2);
        i = paramInt1 - 5;
      }
      paramyV.a(false, bool, paramInt2, -1, a(zc.a(i, paramByte, s), s, paramByte, paramInt2), yY.d);
      return;
      bool = false;
      break;
    }
  }
  
  private void b(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    int i = 1;
    short s = 0;
    boolean bool;
    if ((paramByte & 0x1) != 0)
    {
      bool = true;
      if ((paramByte & 0x20) == 0) {
        break label43;
      }
    }
    for (;;)
    {
      if (i == 0) {
        break label49;
      }
      throw zc.a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
      bool = false;
      break;
      label43:
      i = 0;
    }
    label49:
    if ((paramByte & 0x8) != 0) {
      s = (short)(b.k() & 0xFF);
    }
    paramInt1 = zc.a(paramInt1, paramByte, s);
    paramyV.a(bool, paramInt2, b, paramInt1);
    b.g(s);
  }
  
  private void c(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    if (paramInt1 != 5) {
      throw zc.a("TYPE_PRIORITY length: %d != 5", new Object[] { Integer.valueOf(paramInt1) });
    }
    if (paramInt2 == 0) {
      throw zc.a("TYPE_PRIORITY streamId == 0", new Object[0]);
    }
    a(paramyV, paramInt2);
  }
  
  private void d(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    if (paramInt1 != 4) {
      throw zc.a("TYPE_RST_STREAM length: %d != 4", new Object[] { Integer.valueOf(paramInt1) });
    }
    if (paramInt2 == 0) {
      throw zc.a("TYPE_RST_STREAM streamId == 0", new Object[0]);
    }
    paramInt1 = b.m();
    yT localyT = yT.b(paramInt1);
    if (localyT == null) {
      throw zc.a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(paramInt1) });
    }
    paramyV.a(paramInt2, localyT);
  }
  
  private void e(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    if (paramInt2 != 0) {
      throw zc.a("TYPE_SETTINGS streamId != 0", new Object[0]);
    }
    if ((paramByte & 0x1) != 0)
    {
      if (paramInt1 != 0) {
        throw zc.a("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
      }
    }
    else
    {
      if (paramInt1 % 6 != 0) {
        throw zc.a("TYPE_SETTINGS length %% 6 != 0: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      zr localzr = new zr();
      paramByte = 0;
      if (paramByte < paramInt1)
      {
        int i = b.l();
        int j = b.m();
        paramInt2 = i;
        switch (i)
        {
        default: 
          throw zc.a("PROTOCOL_ERROR invalid settings id: %s", new Object[] { Short.valueOf(i) });
        case 2: 
          paramInt2 = i;
          if (j != 0)
          {
            paramInt2 = i;
            if (j != 1) {
              throw zc.a("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
            }
          }
          break;
        case 3: 
          paramInt2 = 4;
        }
        do
        {
          do
          {
            localzr.a(paramInt2, 0, j);
            paramByte += 6;
            break;
            paramInt2 = 7;
          } while (j >= 0);
          throw zc.a("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
          if (j < 16384) {
            break label247;
          }
          paramInt2 = i;
        } while (j <= 16777215);
        label247:
        throw zc.a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[] { Integer.valueOf(j) });
      }
      paramyV.a(false, localzr);
      if (localzr.c() >= 0) {
        a.a(localzr.c());
      }
    }
  }
  
  private void f(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    short s = 0;
    if (paramInt2 == 0) {
      throw zc.a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    }
    if ((paramByte & 0x8) != 0) {
      s = (short)(b.k() & 0xFF);
    }
    paramyV.a(paramInt2, b.m() & 0x7FFFFFFF, a(zc.a(paramInt1 - 4, paramByte, s), s, paramByte, paramInt2));
  }
  
  private void g(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    boolean bool = true;
    if (paramInt1 != 8) {
      throw zc.a("TYPE_PING length != 8: %s", new Object[] { Integer.valueOf(paramInt1) });
    }
    if (paramInt2 != 0) {
      throw zc.a("TYPE_PING streamId != 0", new Object[0]);
    }
    paramInt1 = b.m();
    paramInt2 = b.m();
    if ((paramByte & 0x1) != 0) {}
    for (;;)
    {
      paramyV.a(bool, paramInt1, paramInt2);
      return;
      bool = false;
    }
  }
  
  private void h(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    if (paramInt1 < 8) {
      throw zc.a("TYPE_GOAWAY length < 8: %s", new Object[] { Integer.valueOf(paramInt1) });
    }
    if (paramInt2 != 0) {
      throw zc.a("TYPE_GOAWAY streamId != 0", new Object[0]);
    }
    paramByte = b.m();
    paramInt2 = b.m();
    paramInt1 -= 8;
    yT localyT = yT.b(paramInt2);
    if (localyT == null) {
      throw zc.a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
    }
    KC localKC = KC.a;
    if (paramInt1 > 0) {
      localKC = b.c(paramInt1);
    }
    paramyV.a(paramByte, localyT, localKC);
  }
  
  private void i(yV paramyV, int paramInt1, byte paramByte, int paramInt2)
  {
    if (paramInt1 != 4) {
      throw zc.a("TYPE_WINDOW_UPDATE length !=4: %s", new Object[] { Integer.valueOf(paramInt1) });
    }
    long l = b.m() & 0x7FFFFFFF;
    if (l == 0L) {
      throw zc.a("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
    }
    paramyV.a(paramInt2, l);
  }
  
  public void a()
  {
    if (d) {}
    KC localKC;
    do
    {
      return;
      localKC = b.c(zc.a().e());
      if (zc.b().isLoggable(Level.FINE)) {
        zc.b().fine(String.format("<< CONNECTION %s", new Object[] { localKC.c() }));
      }
    } while (zc.a().equals(localKC));
    throw zc.a("Expected a connection header but was %s", new Object[] { localKC.a() });
  }
  
  public boolean a(yV paramyV)
  {
    int i;
    try
    {
      b.a(9L);
      i = zc.a(b);
      if ((i < 0) || (i > 16384)) {
        throw zc.a("FRAME_SIZE_ERROR: %s", new Object[] { Integer.valueOf(i) });
      }
    }
    catch (IOException paramyV)
    {
      return false;
    }
    byte b1 = (byte)(b.k() & 0xFF);
    byte b2 = (byte)(b.k() & 0xFF);
    int j = b.m() & 0x7FFFFFFF;
    if (zc.b().isLoggable(Level.FINE)) {
      zc.b().fine(ze.a(true, j, i, b1, b2));
    }
    switch (b1)
    {
    default: 
      b.g(i);
      return true;
    case 0: 
      b(paramyV, i, b2, j);
      return true;
    case 1: 
      a(paramyV, i, b2, j);
      return true;
    case 2: 
      c(paramyV, i, b2, j);
      return true;
    case 3: 
      d(paramyV, i, b2, j);
      return true;
    case 4: 
      e(paramyV, i, b2, j);
      return true;
    case 5: 
      f(paramyV, i, b2, j);
      return true;
    case 6: 
      g(paramyV, i, b2, j);
      return true;
    case 7: 
      h(paramyV, i, b2, j);
      return true;
    }
    i(paramyV, i, b2, j);
    return true;
  }
  
  public void close()
  {
    b.close();
  }
}

/* Location:
 * Qualified Name:     zf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */