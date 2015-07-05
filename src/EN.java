import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class en
  extends qh<el, en>
  implements eo
{
  private int a;
  private qu b = qt.a;
  private List<ev> c = Collections.emptyList();
  private List<eh> d = Collections.emptyList();
  private List<ed> e = Collections.emptyList();
  private List<ed> f = Collections.emptyList();
  private List<ed> g = Collections.emptyList();
  private List<ep> h = Collections.emptyList();
  private Object i = "";
  private Object j = "";
  private Object k = "0";
  private Object l = "";
  private dX m = dX.a();
  private float n;
  private boolean o;
  private qu p = qt.a;
  private int q;
  
  private static en q()
  {
    return new en();
  }
  
  private void s()
  {
    if ((a & 0x1) != 1)
    {
      b = new qt(b);
      a |= 0x1;
    }
  }
  
  private void t()
  {
    if ((a & 0x2) != 2)
    {
      c = new ArrayList(c);
      a |= 0x2;
    }
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
    if ((a & 0x20) != 32)
    {
      g = new ArrayList(g);
      a |= 0x20;
    }
  }
  
  private void y()
  {
    if ((a & 0x40) != 64)
    {
      h = new ArrayList(h);
      a |= 0x40;
    }
  }
  
  private void z()
  {
    if ((a & 0x4000) != 16384)
    {
      p = new qt(p);
      a |= 0x4000;
    }
  }
  
  public en a()
  {
    return q().a(d());
  }
  
  public en a(float paramFloat)
  {
    a |= 0x1000;
    n = paramFloat;
    return this;
  }
  
  public en a(dX paramdX)
  {
    if (((a & 0x800) == 2048) && (m != dX.a())) {}
    for (m = dX.a(m).a(paramdX).d();; m = paramdX)
    {
      a |= 0x800;
      return this;
    }
  }
  
  public en a(el paramel)
  {
    if (paramel == el.a()) {
      return this;
    }
    if (!el.b(paramel).isEmpty())
    {
      if (b.isEmpty())
      {
        b = el.b(paramel);
        a &= 0xFFFFFFFE;
      }
    }
    else
    {
      if (!el.c(paramel).isEmpty())
      {
        if (!c.isEmpty()) {
          break label565;
        }
        c = el.c(paramel);
        a &= 0xFFFFFFFD;
      }
      label95:
      if (!el.d(paramel).isEmpty())
      {
        if (!d.isEmpty()) {
          break label586;
        }
        d = el.d(paramel);
        a &= 0xFFFFFFFB;
      }
      label138:
      if (!el.e(paramel).isEmpty())
      {
        if (!e.isEmpty()) {
          break label607;
        }
        e = el.e(paramel);
        a &= 0xFFFFFFF7;
      }
      label181:
      if (!el.f(paramel).isEmpty())
      {
        if (!f.isEmpty()) {
          break label628;
        }
        f = el.f(paramel);
        a &= 0xFFFFFFEF;
      }
      label224:
      if (!el.g(paramel).isEmpty())
      {
        if (!g.isEmpty()) {
          break label649;
        }
        g = el.g(paramel);
        a &= 0xFFFFFFDF;
      }
      label267:
      if (!el.h(paramel).isEmpty())
      {
        if (!h.isEmpty()) {
          break label670;
        }
        h = el.h(paramel);
        a &= 0xFFFFFFBF;
      }
      label310:
      if (paramel.v())
      {
        a |= 0x80;
        i = el.i(paramel);
      }
      if (paramel.x())
      {
        a |= 0x100;
        j = el.j(paramel);
      }
      if (paramel.z())
      {
        a |= 0x200;
        k = el.k(paramel);
      }
      if (paramel.B())
      {
        a |= 0x400;
        l = el.l(paramel);
      }
      if (paramel.D()) {
        a(paramel.E());
      }
      if (paramel.F()) {
        a(paramel.G());
      }
      if (paramel.H()) {
        a(paramel.I());
      }
      if (!el.m(paramel).isEmpty())
      {
        if (!p.isEmpty()) {
          break label691;
        }
        p = el.m(paramel);
        a &= 0xBFFF;
      }
    }
    for (;;)
    {
      if (paramel.L()) {
        f(paramel.M());
      }
      a(r().a(el.n(paramel)));
      return this;
      s();
      b.addAll(el.b(paramel));
      break;
      label565:
      t();
      c.addAll(el.c(paramel));
      break label95;
      label586:
      u();
      d.addAll(el.d(paramel));
      break label138;
      label607:
      v();
      e.addAll(el.e(paramel));
      break label181;
      label628:
      w();
      f.addAll(el.f(paramel));
      break label224;
      label649:
      x();
      g.addAll(el.g(paramel));
      break label267;
      label670:
      y();
      h.addAll(el.h(paramel));
      break label310;
      label691:
      z();
      p.addAll(el.m(paramel));
    }
  }
  
  /* Error */
  public en a(pW parampW, qa paramqa)
  {
    // Byte code:
    //   0: getstatic 250	el:a	LqC;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 255 3 0
    //   10: checkcast 127	el
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 113	en:a	(Lel;)Len;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 258	qr:a	()Lqy;
    //   31: checkcast 127	el
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 113	en:a	(Lel;)Len;
    //   47: pop
    //   48: aload_2
    //   49: athrow
    //   50: astore_2
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -15 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	en
    //   0	56	1	parampW	pW
    //   0	56	2	paramqa	qa
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qr
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public en a(boolean paramBoolean)
  {
    a |= 0x2000;
    o = paramBoolean;
    return this;
  }
  
  public ev a(int paramInt)
  {
    return (ev)c.get(paramInt);
  }
  
  public eh b(int paramInt)
  {
    return (eh)d.get(paramInt);
  }
  
  public el b()
  {
    return el.a();
  }
  
  public ed c(int paramInt)
  {
    return (ed)e.get(paramInt);
  }
  
  public el c()
  {
    el localel = d();
    if (!localel.j()) {
      throw a(localel);
    }
    return localel;
  }
  
  public ed d(int paramInt)
  {
    return (ed)f.get(paramInt);
  }
  
  public el d()
  {
    int i2 = 1;
    el localel = new el(this, null);
    int i3 = a;
    if ((a & 0x1) == 1)
    {
      b = new qS(b);
      a &= 0xFFFFFFFE;
    }
    el.a(localel, b);
    if ((a & 0x2) == 2)
    {
      c = Collections.unmodifiableList(c);
      a &= 0xFFFFFFFD;
    }
    el.a(localel, c);
    if ((a & 0x4) == 4)
    {
      d = Collections.unmodifiableList(d);
      a &= 0xFFFFFFFB;
    }
    el.b(localel, d);
    if ((a & 0x8) == 8)
    {
      e = Collections.unmodifiableList(e);
      a &= 0xFFFFFFF7;
    }
    el.c(localel, e);
    if ((a & 0x10) == 16)
    {
      f = Collections.unmodifiableList(f);
      a &= 0xFFFFFFEF;
    }
    el.d(localel, f);
    if ((a & 0x20) == 32)
    {
      g = Collections.unmodifiableList(g);
      a &= 0xFFFFFFDF;
    }
    el.e(localel, g);
    if ((a & 0x40) == 64)
    {
      h = Collections.unmodifiableList(h);
      a &= 0xFFFFFFBF;
    }
    el.f(localel, h);
    if ((i3 & 0x80) == 128) {}
    for (;;)
    {
      el.a(localel, i);
      int i1 = i2;
      if ((i3 & 0x100) == 256) {
        i1 = i2 | 0x2;
      }
      el.b(localel, j);
      i2 = i1;
      if ((i3 & 0x200) == 512) {
        i2 = i1 | 0x4;
      }
      el.c(localel, k);
      i1 = i2;
      if ((i3 & 0x400) == 1024) {
        i1 = i2 | 0x8;
      }
      el.d(localel, l);
      i2 = i1;
      if ((i3 & 0x800) == 2048) {
        i2 = i1 | 0x10;
      }
      el.a(localel, m);
      i1 = i2;
      if ((i3 & 0x1000) == 4096) {
        i1 = i2 | 0x20;
      }
      el.a(localel, n);
      i2 = i1;
      if ((i3 & 0x2000) == 8192) {
        i2 = i1 | 0x40;
      }
      el.a(localel, o);
      if ((a & 0x4000) == 16384)
      {
        p = new qS(p);
        a &= 0xBFFF;
      }
      el.b(localel, p);
      i1 = i2;
      if ((i3 & 0x8000) == 32768) {
        i1 = i2 | 0x80;
      }
      el.a(localel, q);
      el.b(localel, i1);
      return localel;
      i2 = 0;
    }
  }
  
  public ed e(int paramInt)
  {
    return (ed)g.get(paramInt);
  }
  
  public en f(int paramInt)
  {
    a |= 0x8000;
    q = paramInt;
    return this;
  }
  
  public int i()
  {
    return c.size();
  }
  
  public final boolean j()
  {
    int i1 = 0;
    while (i1 < i())
    {
      if (!a(i1).j()) {
        return false;
      }
      i1 += 1;
    }
    i1 = 0;
    for (;;)
    {
      if (i1 >= k()) {
        break label58;
      }
      if (!b(i1).j()) {
        break;
      }
      i1 += 1;
    }
    label58:
    i1 = 0;
    for (;;)
    {
      if (i1 >= l()) {
        break label86;
      }
      if (!c(i1).j()) {
        break;
      }
      i1 += 1;
    }
    label86:
    i1 = 0;
    for (;;)
    {
      if (i1 >= m()) {
        break label114;
      }
      if (!d(i1).j()) {
        break;
      }
      i1 += 1;
    }
    label114:
    i1 = 0;
    for (;;)
    {
      if (i1 >= n()) {
        break label142;
      }
      if (!e(i1).j()) {
        break;
      }
      i1 += 1;
    }
    label142:
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
    return g.size();
  }
}

/* Location:
 * Qualified Name:     en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */