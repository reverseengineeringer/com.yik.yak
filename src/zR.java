import java.util.Arrays;

public final class zr
{
  private int a;
  private int b;
  private int c;
  private final int[] d = new int[10];
  
  zr a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 >= d.length) {
      return this;
    }
    int i = 1 << paramInt1;
    a |= i;
    if ((paramInt2 & 0x1) != 0)
    {
      b |= i;
      if ((paramInt2 & 0x2) == 0) {
        break label86;
      }
    }
    label86:
    for (c = (i | c);; c = ((i ^ 0xFFFFFFFF) & c))
    {
      d[paramInt1] = paramInt3;
      return this;
      b &= (i ^ 0xFFFFFFFF);
      break;
    }
  }
  
  void a()
  {
    c = 0;
    b = 0;
    a = 0;
    Arrays.fill(d, 0);
  }
  
  void a(zr paramzr)
  {
    int i = 0;
    if (i < 10)
    {
      if (!paramzr.a(i)) {}
      for (;;)
      {
        i += 1;
        break;
        a(i, paramzr.c(i), paramzr.b(i));
      }
    }
  }
  
  boolean a(int paramInt)
  {
    return (1 << paramInt & a) != 0;
  }
  
  int b()
  {
    return Integer.bitCount(a);
  }
  
  int b(int paramInt)
  {
    return d[paramInt];
  }
  
  int c()
  {
    if ((0x2 & a) != 0) {
      return d[1];
    }
    return -1;
  }
  
  int c(int paramInt)
  {
    int i = 0;
    if (g(paramInt)) {
      i = 2;
    }
    int j = i;
    if (f(paramInt)) {
      j = i | 0x1;
    }
    return j;
  }
  
  int d(int paramInt)
  {
    if ((0x20 & a) != 0) {
      paramInt = d[5];
    }
    return paramInt;
  }
  
  int e(int paramInt)
  {
    if ((0x80 & a) != 0) {
      paramInt = d[7];
    }
    return paramInt;
  }
  
  boolean f(int paramInt)
  {
    return (1 << paramInt & b) != 0;
  }
  
  boolean g(int paramInt)
  {
    return (1 << paramInt & c) != 0;
  }
}

/* Location:
 * Qualified Name:     zr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */