import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class za
{
  yX[] a = new yX[8];
  int b = a.length - 1;
  int c = 0;
  int d = 0;
  private final List<yX> e = new ArrayList();
  private final KB f;
  private int g;
  private int h;
  
  za(int paramInt, KT paramKT)
  {
    g = paramInt;
    h = paramInt;
    f = KI.a(paramKT);
  }
  
  private void a(int paramInt, yX paramyX)
  {
    e.add(paramyX);
    int j = j;
    int i = j;
    if (paramInt != -1) {
      i = j - a[d(paramInt)].j;
    }
    if (i > h)
    {
      e();
      return;
    }
    j = b(d + i - h);
    if (paramInt == -1)
    {
      if (c + 1 > a.length)
      {
        yX[] arrayOfyX = new yX[a.length * 2];
        System.arraycopy(a, 0, arrayOfyX, a.length, a.length);
        b = (a.length - 1);
        a = arrayOfyX;
      }
      paramInt = b;
      b = (paramInt - 1);
      a[paramInt] = paramyX;
      c += 1;
    }
    for (;;)
    {
      d = (i + d);
      return;
      int k = d(paramInt);
      a[(j + k + paramInt)] = paramyX;
    }
  }
  
  private int b(int paramInt)
  {
    int i = 0;
    int k = 0;
    if (paramInt > 0)
    {
      i = a.length - 1;
      int j = paramInt;
      paramInt = k;
      while ((i >= b) && (j > 0))
      {
        j -= a[i].j;
        d -= a[i].j;
        c -= 1;
        paramInt += 1;
        i -= 1;
      }
      System.arraycopy(a, b + 1, a, b + 1 + paramInt, c);
      b += paramInt;
      i = paramInt;
    }
    return i;
  }
  
  private void c(int paramInt)
  {
    if (h(paramInt))
    {
      yX localyX = yZ.a()[paramInt];
      e.add(localyX);
      return;
    }
    int i = d(paramInt - yZ.a().length);
    if ((i < 0) || (i > a.length - 1)) {
      throw new IOException("Header index too large " + (paramInt + 1));
    }
    e.add(a[i]);
  }
  
  private int d(int paramInt)
  {
    return b + 1 + paramInt;
  }
  
  private void d()
  {
    if (h < d)
    {
      if (h == 0) {
        e();
      }
    }
    else {
      return;
    }
    b(d - h);
  }
  
  private void e()
  {
    e.clear();
    Arrays.fill(a, null);
    b = (a.length - 1);
    c = 0;
    d = 0;
  }
  
  private void e(int paramInt)
  {
    KC localKC1 = g(paramInt);
    KC localKC2 = c();
    e.add(new yX(localKC1, localKC2));
  }
  
  private void f()
  {
    KC localKC1 = yZ.a(c());
    KC localKC2 = c();
    e.add(new yX(localKC1, localKC2));
  }
  
  private void f(int paramInt)
  {
    a(-1, new yX(g(paramInt), c()));
  }
  
  private KC g(int paramInt)
  {
    if (h(paramInt)) {
      return ah;
    }
    return a[d(paramInt - yZ.a().length)].h;
  }
  
  private void g()
  {
    a(-1, new yX(yZ.a(c()), c()));
  }
  
  private int h()
  {
    return f.k() & 0xFF;
  }
  
  private boolean h(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= yZ.a().length - 1);
  }
  
  int a(int paramInt1, int paramInt2)
  {
    paramInt1 &= paramInt2;
    if (paramInt1 < paramInt2) {
      return paramInt1;
    }
    paramInt1 = 0;
    int i;
    for (;;)
    {
      i = h();
      if ((i & 0x80) == 0) {
        break;
      }
      paramInt2 += ((i & 0x7F) << paramInt1);
      paramInt1 += 7;
    }
    return (i << paramInt1) + paramInt2;
  }
  
  void a()
  {
    while (!f.h())
    {
      int i = f.k() & 0xFF;
      if (i == 128) {
        throw new IOException("index == 0");
      }
      if ((i & 0x80) == 128)
      {
        c(a(i, 127) - 1);
      }
      else if (i == 64)
      {
        g();
      }
      else if ((i & 0x40) == 64)
      {
        f(a(i, 63) - 1);
      }
      else if ((i & 0x20) == 32)
      {
        h = a(i, 31);
        if ((h < 0) || (h > g)) {
          throw new IOException("Invalid dynamic table size update " + h);
        }
        d();
      }
      else if ((i == 16) || (i == 0))
      {
        f();
      }
      else
      {
        e(a(i, 15) - 1);
      }
    }
  }
  
  void a(int paramInt)
  {
    g = paramInt;
    h = paramInt;
    d();
  }
  
  public List<yX> b()
  {
    ArrayList localArrayList = new ArrayList(e);
    e.clear();
    return localArrayList;
  }
  
  KC c()
  {
    int j = h();
    if ((j & 0x80) == 128) {}
    for (int i = 1;; i = 0)
    {
      j = a(j, 127);
      if (i == 0) {
        break;
      }
      return KC.a(zh.a().a(f.f(j)));
    }
    return f.c(j);
  }
}

/* Location:
 * Qualified Name:     za
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */