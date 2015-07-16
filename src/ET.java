import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class et
  extends ql<er, et>
  implements ey
{
  private int a;
  private ew b = ew.a;
  private Object c = "";
  private List<er> d = Collections.emptyList();
  private List<er> e = Collections.emptyList();
  private List<er> f = Collections.emptyList();
  private Object g = "";
  private Object h = "";
  private long i;
  private boolean j;
  private List<er> k = Collections.emptyList();
  private List<eu> l = Collections.emptyList();
  private boolean m;
  
  private static et t()
  {
    return new et();
  }
  
  private void u()
  {
    if ((a & 0x4) != 4)
    {
      d = new ArrayList(d);
      a |= 0x4;
    }
  }
  
  private void v()
  {
    if ((a & 0x8) != 8)
    {
      e = new ArrayList(e);
      a |= 0x8;
    }
  }
  
  private void w()
  {
    if ((a & 0x10) != 16)
    {
      f = new ArrayList(f);
      a |= 0x10;
    }
  }
  
  private void x()
  {
    if ((a & 0x200) != 512)
    {
      k = new ArrayList(k);
      a |= 0x200;
    }
  }
  
  private void y()
  {
    if ((a & 0x400) != 1024)
    {
      l = new ArrayList(l);
      a |= 0x400;
    }
  }
  
  public er a(int paramInt)
  {
    return (er)d.get(paramInt);
  }
  
  public et a()
  {
    return t().a(d());
  }
  
  public et a(long paramLong)
  {
    a |= 0x80;
    i = paramLong;
    return this;
  }
  
  public et a(er paramer)
  {
    if (paramer == er.a()) {
      return this;
    }
    if (paramer.d()) {
      a(paramer.e());
    }
    if (paramer.f())
    {
      a |= 0x2;
      c = er.b(paramer);
    }
    if (!er.c(paramer).isEmpty())
    {
      if (d.isEmpty())
      {
        d = er.c(paramer);
        a &= 0xFFFFFFFB;
      }
    }
    else
    {
      if (!er.d(paramer).isEmpty())
      {
        if (!e.isEmpty()) {
          break label411;
        }
        e = er.d(paramer);
        a &= 0xFFFFFFF7;
      }
      label136:
      if (!er.e(paramer).isEmpty())
      {
        if (!f.isEmpty()) {
          break label432;
        }
        f = er.e(paramer);
        a &= 0xFFFFFFEF;
      }
      label179:
      if (paramer.r())
      {
        a |= 0x20;
        g = er.f(paramer);
      }
      if (paramer.t())
      {
        a |= 0x40;
        h = er.g(paramer);
      }
      if (paramer.v()) {
        a(paramer.w());
      }
      if (paramer.x()) {
        a(paramer.y());
      }
      if (!er.h(paramer).isEmpty())
      {
        if (!k.isEmpty()) {
          break label453;
        }
        k = er.h(paramer);
        a &= 0xFDFF;
      }
      label307:
      if (!er.i(paramer).isEmpty())
      {
        if (!l.isEmpty()) {
          break label474;
        }
        l = er.i(paramer);
        a &= 0xFBFF;
      }
    }
    for (;;)
    {
      if (paramer.D()) {
        b(paramer.E());
      }
      a(paramer);
      a(r().a(er.j(paramer)));
      return this;
      u();
      d.addAll(er.c(paramer));
      break;
      label411:
      v();
      e.addAll(er.d(paramer));
      break label136;
      label432:
      w();
      f.addAll(er.e(paramer));
      break label179;
      label453:
      x();
      k.addAll(er.h(paramer));
      break label307;
      label474:
      y();
      l.addAll(er.i(paramer));
    }
  }
  
  public et a(ew paramew)
  {
    if (paramew == null) {
      throw new NullPointerException();
    }
    a |= 0x1;
    b = paramew;
    return this;
  }
  
  public et a(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    a |= 0x2;
    c = paramString;
    return this;
  }
  
  /* Error */
  public et a(pZ parampZ, qd paramqd)
  {
    // Byte code:
    //   0: getstatic 201	er:a	LqF;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 206 3 0
    //   10: checkcast 90	er
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 96	et:a	(Ler;)Let;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 209	qu:a	()LqB;
    //   31: checkcast 90	er
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 96	et:a	(Ler;)Let;
    //   47: pop
    //   48: aload_2
    //   49: athrow
    //   50: astore_2
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -15 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	et
    //   0	56	1	parampZ	pZ
    //   0	56	2	paramqd	qd
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qu
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public et a(boolean paramBoolean)
  {
    a |= 0x100;
    j = paramBoolean;
    return this;
  }
  
  public er b()
  {
    return er.a();
  }
  
  public er b(int paramInt)
  {
    return (er)e.get(paramInt);
  }
  
  public et b(er paramer)
  {
    if (paramer == null) {
      throw new NullPointerException();
    }
    u();
    d.add(paramer);
    return this;
  }
  
  public et b(boolean paramBoolean)
  {
    a |= 0x800;
    m = paramBoolean;
    return this;
  }
  
  public er c()
  {
    er localer = d();
    if (!localer.j()) {
      throw a(localer);
    }
    return localer;
  }
  
  public er c(int paramInt)
  {
    return (er)f.get(paramInt);
  }
  
  public et c(er paramer)
  {
    if (paramer == null) {
      throw new NullPointerException();
    }
    v();
    e.add(paramer);
    return this;
  }
  
  public er d()
  {
    int i1 = 1;
    er localer = new er(this, null);
    int i2 = a;
    if ((i2 & 0x1) == 1) {}
    for (;;)
    {
      er.a(localer, b);
      int n = i1;
      if ((i2 & 0x2) == 2) {
        n = i1 | 0x2;
      }
      er.a(localer, c);
      if ((a & 0x4) == 4)
      {
        d = Collections.unmodifiableList(d);
        a &= 0xFFFFFFFB;
      }
      er.a(localer, d);
      if ((a & 0x8) == 8)
      {
        e = Collections.unmodifiableList(e);
        a &= 0xFFFFFFF7;
      }
      er.b(localer, e);
      if ((a & 0x10) == 16)
      {
        f = Collections.unmodifiableList(f);
        a &= 0xFFFFFFEF;
      }
      er.c(localer, f);
      i1 = n;
      if ((i2 & 0x20) == 32) {
        i1 = n | 0x4;
      }
      er.b(localer, g);
      n = i1;
      if ((i2 & 0x40) == 64) {
        n = i1 | 0x8;
      }
      er.c(localer, h);
      i1 = n;
      if ((i2 & 0x80) == 128) {
        i1 = n | 0x10;
      }
      er.a(localer, i);
      n = i1;
      if ((i2 & 0x100) == 256) {
        n = i1 | 0x20;
      }
      er.a(localer, j);
      if ((a & 0x200) == 512)
      {
        k = Collections.unmodifiableList(k);
        a &= 0xFDFF;
      }
      er.d(localer, k);
      if ((a & 0x400) == 1024)
      {
        l = Collections.unmodifiableList(l);
        a &= 0xFBFF;
      }
      er.e(localer, l);
      i1 = n;
      if ((i2 & 0x800) == 2048) {
        i1 = n | 0x40;
      }
      er.b(localer, m);
      er.a(localer, i1);
      return localer;
      i1 = 0;
    }
  }
  
  public er d(int paramInt)
  {
    return (er)k.get(paramInt);
  }
  
  public et d(er paramer)
  {
    if (paramer == null) {
      throw new NullPointerException();
    }
    w();
    f.add(paramer);
    return this;
  }
  
  public boolean i()
  {
    return (a & 0x1) == 1;
  }
  
  public final boolean j()
  {
    if (!i()) {}
    label37:
    label65:
    label93:
    label121:
    do
    {
      return false;
      int n = 0;
      for (;;)
      {
        if (n >= k()) {
          break label37;
        }
        if (!a(n).j()) {
          break;
        }
        n += 1;
      }
      n = 0;
      for (;;)
      {
        if (n >= l()) {
          break label65;
        }
        if (!b(n).j()) {
          break;
        }
        n += 1;
      }
      n = 0;
      for (;;)
      {
        if (n >= m()) {
          break label93;
        }
        if (!c(n).j()) {
          break;
        }
        n += 1;
      }
      n = 0;
      for (;;)
      {
        if (n >= n()) {
          break label121;
        }
        if (!d(n).j()) {
          break;
        }
        n += 1;
      }
    } while (!s());
    return true;
  }
  
  public int k()
  {
    return d.size();
  }
  
  public int l()
  {
    return e.size();
  }
  
  public int m()
  {
    return f.size();
  }
  
  public int n()
  {
    return k.size();
  }
}

/* Location:
 * Qualified Name:     et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */