import java.io.OutputStream;

public final class qb
{
  private final byte[] a;
  private final int b;
  private int c;
  private int d = 0;
  private final OutputStream e;
  
  private qb(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    e = paramOutputStream;
    a = paramArrayOfByte;
    c = 0;
    b = paramArrayOfByte.length;
  }
  
  public static qb a(OutputStream paramOutputStream)
  {
    return a(paramOutputStream, 4096);
  }
  
  public static qb a(OutputStream paramOutputStream, int paramInt)
  {
    return new qb(paramOutputStream, new byte[paramInt]);
  }
  
  private void b()
  {
    if (e == null) {
      throw new qc();
    }
    e.write(a, 0, c);
    c = 0;
  }
  
  public void a()
  {
    if (e != null) {
      b();
    }
  }
  
  public void a(byte paramByte)
  {
    if (c == b) {
      b();
    }
    byte[] arrayOfByte = a;
    int i = c;
    c = (i + 1);
    arrayOfByte[i] = paramByte;
    d += 1;
  }
  
  public void a(int paramInt)
  {
    e(paramInt);
  }
  
  public void a(long paramLong)
  {
    c(paramLong);
  }
  
  public void a(pW parampW)
  {
    d(parampW.a());
    b(parampW);
  }
  
  public void a(pW parampW, int paramInt1, int paramInt2)
  {
    if (b - c >= paramInt2)
    {
      parampW.b(a, paramInt1, c, paramInt2);
      c += paramInt2;
      d += paramInt2;
      return;
    }
    int i = b - c;
    parampW.b(a, paramInt1, c, i);
    paramInt1 += i;
    paramInt2 -= i;
    c = b;
    d = (i + d);
    b();
    if (paramInt2 <= b)
    {
      parampW.b(a, paramInt1, 0, paramInt2);
      c = paramInt2;
    }
    for (;;)
    {
      d += paramInt2;
      return;
      parampW.a(e, paramInt1, paramInt2);
    }
  }
  
  public void b(int paramInt)
  {
    d(paramInt);
  }
  
  public void b(long paramLong)
  {
    d(paramLong);
  }
  
  public void b(pW parampW)
  {
    a(parampW, 0, parampW.a());
  }
  
  public void c(int paramInt)
  {
    a((byte)paramInt);
  }
  
  public void c(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        c((int)paramLong);
        return;
      }
      c((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public void d(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        c(paramInt);
        return;
      }
      c(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public void d(long paramLong)
  {
    c((int)paramLong & 0xFF);
    c((int)(paramLong >> 8) & 0xFF);
    c((int)(paramLong >> 16) & 0xFF);
    c((int)(paramLong >> 24) & 0xFF);
    c((int)(paramLong >> 32) & 0xFF);
    c((int)(paramLong >> 40) & 0xFF);
    c((int)(paramLong >> 48) & 0xFF);
    c((int)(paramLong >> 56) & 0xFF);
  }
  
  public void e(int paramInt)
  {
    c(paramInt & 0xFF);
    c(paramInt >> 8 & 0xFF);
    c(paramInt >> 16 & 0xFF);
    c(paramInt >> 24 & 0xFF);
  }
}

/* Location:
 * Qualified Name:     qb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */