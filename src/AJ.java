import java.io.Flushable;
import java.io.InputStream;
import java.io.OutputStream;

final class aj
  implements Flushable
{
  private final byte[] a;
  private final int b;
  private int c;
  private final OutputStream d;
  
  private aj(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    d = paramOutputStream;
    a = paramArrayOfByte;
    c = 0;
    b = paramArrayOfByte.length;
  }
  
  public static aj a(OutputStream paramOutputStream)
  {
    return a(paramOutputStream, 4096);
  }
  
  public static aj a(OutputStream paramOutputStream, int paramInt)
  {
    return new aj(paramOutputStream, new byte[paramInt]);
  }
  
  private void a()
  {
    if (d == null) {
      throw new ak();
    }
    d.write(a, 0, c);
    c = 0;
  }
  
  public static int b(float paramFloat)
  {
    return 4;
  }
  
  public static int b(int paramInt, float paramFloat)
  {
    return j(paramInt) + b(paramFloat);
  }
  
  public static int b(int paramInt, long paramLong)
  {
    return j(paramInt) + b(paramLong);
  }
  
  public static int b(int paramInt, af paramaf)
  {
    return j(paramInt) + b(paramaf);
  }
  
  public static int b(int paramInt, boolean paramBoolean)
  {
    return j(paramInt) + b(paramBoolean);
  }
  
  public static int b(long paramLong)
  {
    return d(paramLong);
  }
  
  public static int b(af paramaf)
  {
    return l(paramaf.a()) + paramaf.a();
  }
  
  public static int b(boolean paramBoolean)
  {
    return 1;
  }
  
  public static int d(long paramLong)
  {
    if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L) {
      return 1;
    }
    if ((0xFFFFFFFFFFFFC000 & paramLong) == 0L) {
      return 2;
    }
    if ((0xFFFFFFFFFFE00000 & paramLong) == 0L) {
      return 3;
    }
    if ((0xFFFFFFFFF0000000 & paramLong) == 0L) {
      return 4;
    }
    if ((0xFFFFFFF800000000 & paramLong) == 0L) {
      return 5;
    }
    if ((0xFFFFFC0000000000 & paramLong) == 0L) {
      return 6;
    }
    if ((0xFFFE000000000000 & paramLong) == 0L) {
      return 7;
    }
    if ((0xFF00000000000000 & paramLong) == 0L) {
      return 8;
    }
    if ((0x8000000000000000 & paramLong) == 0L) {
      return 9;
    }
    return 10;
  }
  
  public static int e(int paramInt)
  {
    if (paramInt >= 0) {
      return l(paramInt);
    }
    return 10;
  }
  
  public static int e(int paramInt1, int paramInt2)
  {
    return j(paramInt1) + e(paramInt2);
  }
  
  public static int f(int paramInt)
  {
    return l(paramInt);
  }
  
  public static int f(int paramInt1, int paramInt2)
  {
    return j(paramInt1) + f(paramInt2);
  }
  
  public static int g(int paramInt)
  {
    return e(paramInt);
  }
  
  public static int g(int paramInt1, int paramInt2)
  {
    return j(paramInt1) + g(paramInt2);
  }
  
  public static int h(int paramInt)
  {
    return l(n(paramInt));
  }
  
  public static int h(int paramInt1, int paramInt2)
  {
    return j(paramInt1) + h(paramInt2);
  }
  
  public static int j(int paramInt)
  {
    return l(bv.a(paramInt, 0));
  }
  
  public static int l(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0) {
      return 1;
    }
    if ((paramInt & 0xC000) == 0) {
      return 2;
    }
    if ((0xFFE00000 & paramInt) == 0) {
      return 3;
    }
    if ((0xF0000000 & paramInt) == 0) {
      return 4;
    }
    return 5;
  }
  
  public static int n(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  public void a(byte paramByte)
  {
    if (c == b) {
      a();
    }
    byte[] arrayOfByte = a;
    int i = c;
    c = (i + 1);
    arrayOfByte[i] = paramByte;
  }
  
  public void a(float paramFloat)
  {
    m(Float.floatToRawIntBits(paramFloat));
  }
  
  public void a(int paramInt)
  {
    if (paramInt >= 0)
    {
      k(paramInt);
      return;
    }
    c(paramInt);
  }
  
  public void a(int paramInt, float paramFloat)
  {
    i(paramInt, 5);
    a(paramFloat);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    i(paramInt1, 0);
    a(paramInt2);
  }
  
  public void a(int paramInt, long paramLong)
  {
    i(paramInt, 0);
    a(paramLong);
  }
  
  public void a(int paramInt, af paramaf)
  {
    i(paramInt, 2);
    a(paramaf);
  }
  
  public void a(int paramInt, String paramString)
  {
    i(paramInt, 2);
    a(paramString);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    i(paramInt, 0);
    a(paramBoolean);
  }
  
  public void a(long paramLong)
  {
    c(paramLong);
  }
  
  public void a(af paramaf)
  {
    k(paramaf.a());
    c(paramaf);
  }
  
  public void a(af paramaf, int paramInt1, int paramInt2)
  {
    if (b - c >= paramInt2)
    {
      paramaf.a(a, paramInt1, c, paramInt2);
      c += paramInt2;
      return;
    }
    int j = b - c;
    paramaf.a(a, paramInt1, c, j);
    int i = paramInt1 + j;
    paramInt1 = paramInt2 - j;
    c = b;
    a();
    if (paramInt1 <= b)
    {
      paramaf.a(a, i, 0, paramInt1);
      c = paramInt1;
      return;
    }
    paramaf = paramaf.b();
    if (i != paramaf.skip(i)) {
      throw new IllegalStateException("Skip failed.");
    }
    do
    {
      d.write(a, 0, i);
      paramInt1 -= i;
      if (paramInt1 <= 0) {
        break;
      }
      paramInt2 = Math.min(paramInt1, b);
      i = paramaf.read(a, 0, paramInt2);
    } while (i == paramInt2);
    throw new IllegalStateException("Read failed.");
  }
  
  public void a(String paramString)
  {
    paramString = paramString.getBytes("UTF-8");
    k(paramString.length);
    a(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      i(i);
      return;
    }
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (b - c >= paramInt2)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, a, c, paramInt2);
      c += paramInt2;
      return;
    }
    int i = b - c;
    System.arraycopy(paramArrayOfByte, paramInt1, a, c, i);
    paramInt1 += i;
    paramInt2 -= i;
    c = b;
    a();
    if (paramInt2 <= b)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, a, 0, paramInt2);
      c = paramInt2;
      return;
    }
    d.write(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void b(int paramInt)
  {
    k(paramInt);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    i(paramInt1, 0);
    b(paramInt2);
  }
  
  public void c(int paramInt)
  {
    a(paramInt);
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    i(paramInt1, 0);
    c(paramInt2);
  }
  
  public void c(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        i((int)paramLong);
        return;
      }
      i((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public void c(af paramaf)
  {
    a(paramaf, 0, paramaf.a());
  }
  
  public void d(int paramInt)
  {
    k(n(paramInt));
  }
  
  public void d(int paramInt1, int paramInt2)
  {
    i(paramInt1, 0);
    d(paramInt2);
  }
  
  public void flush()
  {
    if (d != null) {
      a();
    }
  }
  
  public void i(int paramInt)
  {
    a((byte)paramInt);
  }
  
  public void i(int paramInt1, int paramInt2)
  {
    k(bv.a(paramInt1, paramInt2));
  }
  
  public void k(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        i(paramInt);
        return;
      }
      i(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public void m(int paramInt)
  {
    i(paramInt & 0xFF);
    i(paramInt >> 8 & 0xFF);
    i(paramInt >> 16 & 0xFF);
    i(paramInt >> 24 & 0xFF);
  }
}

/* Location:
 * Qualified Name:     aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */