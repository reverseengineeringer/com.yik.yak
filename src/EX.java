import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ex
  extends qi<ev, ex>
  implements eC
{
  private int a;
  private eA b = eA.a;
  private Object c = "";
  private List<ev> d = Collections.emptyList();
  private List<ev> e = Collections.emptyList();
  private List<ev> f = Collections.emptyList();
  private Object g = "";
  private Object h = "";
  private long i;
  private boolean j;
  private List<ev> k = Collections.emptyList();
  private List<ey> l = Collections.emptyList();
  private boolean m;
  
  private static ex t()
  {
    return new ex();
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
  
  public ev a(int paramInt)
  {
    return (ev)d.get(paramInt);
  }
  
  public ex a()
  {
    return t().a(d());
  }
  
  public ex a(long paramLong)
  {
    a |= 0x80;
    i = paramLong;
    return this;
  }
  
  public ex a(eA parameA)
  {
    if (parameA == null) {
      throw new NullPointerException();
    }
    a |= 0x1;
    b = parameA;
    return this;
  }
  
  public ex a(ev paramev)
  {
    if (paramev == ev.a()) {
      return this;
    }
    if (paramev.d()) {
      a(paramev.e());
    }
    if (paramev.f())
    {
      a |= 0x2;
      c = ev.b(paramev);
    }
    if (!ev.c(paramev).isEmpty())
    {
      if (d.isEmpty())
      {
        d = ev.c(paramev);
        a &= 0xFFFFFFFB;
      }
    }
    else
    {
      if (!ev.d(paramev).isEmpty())
      {
        if (!e.isEmpty()) {
          break label411;
        }
        e = ev.d(paramev);
        a &= 0xFFFFFFF7;
      }
      label136:
      if (!ev.e(paramev).isEmpty())
      {
        if (!f.isEmpty()) {
          break label432;
        }
        f = ev.e(paramev);
        a &= 0xFFFFFFEF;
      }
      label179:
      if (paramev.r())
      {
        a |= 0x20;
        g = ev.f(paramev);
      }
      if (paramev.t())
      {
        a |= 0x40;
        h = ev.g(paramev);
      }
      if (paramev.v()) {
        a(paramev.w());
      }
      if (paramev.x()) {
        a(paramev.y());
      }
      if (!ev.h(paramev).isEmpty())
      {
        if (!k.isEmpty()) {
          break label453;
        }
        k = ev.h(paramev);
        a &= 0xFDFF;
      }
      label307:
      if (!ev.i(paramev).isEmpty())
      {
        if (!l.isEmpty()) {
          break label474;
        }
        l = ev.i(paramev);
        a &= 0xFBFF;
      }
    }
    for (;;)
    {
      if (paramev.D()) {
        b(paramev.E());
      }
      a(paramev);
      a(r().a(ev.j(paramev)));
      return this;
      u();
      d.addAll(ev.c(paramev));
      break;
      label411:
      v();
      e.addAll(ev.d(paramev));
      break label136;
      label432:
      w();
      f.addAll(ev.e(paramev));
      break label179;
      label453:
      x();
      k.addAll(ev.h(paramev));
      break label307;
      label474:
      y();
      l.addAll(ev.i(paramev));
    }
  }
  
  public ex a(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    a |= 0x2;
    c = paramString;
    return this;
  }
  
  /* Error */
  public ex a(pW parampW, qa paramqa)
  {
    // Byte code:
    //   0: getstatic 201	ev:a	LqC;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 206 3 0
    //   10: checkcast 90	ev
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 96	ex:a	(Lev;)Lex;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 209	qr:a	()Lqy;
    //   31: checkcast 90	ev
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 96	ex:a	(Lev;)Lex;
    //   47: pop
    //   48: aload_2
    //   49: athrow
    //   50: astore_2
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -15 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	ex
    //   0	56	1	parampW	pW
    //   0	56	2	paramqa	qa
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qr
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public ex a(boolean paramBoolean)
  {
    a |= 0x100;
    j = paramBoolean;
    return this;
  }
  
  public ev b()
  {
    return ev.a();
  }
  
  public ev b(int paramInt)
  {
    return (ev)e.get(paramInt);
  }
  
  public ex b(ev paramev)
  {
    if (paramev == null) {
      throw new NullPointerException();
    }
    u();
    d.add(paramev);
    return this;
  }
  
  public ex b(boolean paramBoolean)
  {
    a |= 0x800;
    m = paramBoolean;
    return this;
  }
  
  public ev c()
  {
    ev localev = d();
    if (!localev.j()) {
      throw a(localev);
    }
    return localev;
  }
  
  public ev c(int paramInt)
  {
    return (ev)f.get(paramInt);
  }
  
  public ex c(ev paramev)
  {
    if (paramev == null) {
      throw new NullPointerException();
    }
    v();
    e.add(paramev);
    return this;
  }
  
  public ev d()
  {
    int i1 = 1;
    ev localev = new ev(this, null);
    int i2 = a;
    if ((i2 & 0x1) == 1) {}
    for (;;)
    {
      ev.a(localev, b);
      int n = i1;
      if ((i2 & 0x2) == 2) {
        n = i1 | 0x2;
      }
      ev.a(localev, c);
      if ((a & 0x4) == 4)
      {
        d = Collections.unmodifiableList(d);
        a &= 0xFFFFFFFB;
      }
      ev.a(localev, d);
      if ((a & 0x8) == 8)
      {
        e = Collections.unmodifiableList(e);
        a &= 0xFFFFFFF7;
      }
      ev.b(localev, e);
      if ((a & 0x10) == 16)
      {
        f = Collections.unmodifiableList(f);
        a &= 0xFFFFFFEF;
      }
      ev.c(localev, f);
      i1 = n;
      if ((i2 & 0x20) == 32) {
        i1 = n | 0x4;
      }
      ev.b(localev, g);
      n = i1;
      if ((i2 & 0x40) == 64) {
        n = i1 | 0x8;
      }
      ev.c(localev, h);
      i1 = n;
      if ((i2 & 0x80) == 128) {
        i1 = n | 0x10;
      }
      ev.a(localev, i);
      n = i1;
      if ((i2 & 0x100) == 256) {
        n = i1 | 0x20;
      }
      ev.a(localev, j);
      if ((a & 0x200) == 512)
      {
        k = Collections.unmodifiableList(k);
        a &= 0xFDFF;
      }
      ev.d(localev, k);
      if ((a & 0x400) == 1024)
      {
        l = Collections.unmodifiableList(l);
        a &= 0xFBFF;
      }
      ev.e(localev, l);
      i1 = n;
      if ((i2 & 0x800) == 2048) {
        i1 = n | 0x40;
      }
      ev.b(localev, m);
      ev.a(localev, i1);
      return localev;
      i1 = 0;
    }
  }
  
  public ev d(int paramInt)
  {
    return (ev)k.get(paramInt);
  }
  
  public ex d(ev paramev)
  {
    if (paramev == null) {
      throw new NullPointerException();
    }
    w();
    f.add(paramev);
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
 * Qualified Name:     ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */