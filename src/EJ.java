import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ej
  extends qk<eh, ej>
  implements ek
{
  private int a;
  private qx b = qw.a;
  private List<er> c = Collections.emptyList();
  private List<ed> d = Collections.emptyList();
  private List<dZ> e = Collections.emptyList();
  private List<dZ> f = Collections.emptyList();
  private List<dZ> g = Collections.emptyList();
  private List<el> h = Collections.emptyList();
  private Object i = "";
  private Object j = "";
  private Object k = "0";
  private Object l = "";
  private dT m = dT.a();
  private float n;
  private boolean o;
  private qx p = qw.a;
  private int q;
  
  private static ej q()
  {
    return new ej();
  }
  
  private void s()
  {
    if ((a & 0x1) != 1)
    {
      b = new qw(b);
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
      p = new qw(p);
      a |= 0x4000;
    }
  }
  
  public ej a()
  {
    return q().a(d());
  }
  
  public ej a(float paramFloat)
  {
    a |= 0x1000;
    n = paramFloat;
    return this;
  }
  
  public ej a(dT paramdT)
  {
    if (((a & 0x800) == 2048) && (m != dT.a())) {}
    for (m = dT.a(m).a(paramdT).d();; m = paramdT)
    {
      a |= 0x800;
      return this;
    }
  }
  
  public ej a(eh parameh)
  {
    if (parameh == eh.a()) {
      return this;
    }
    if (!eh.b(parameh).isEmpty())
    {
      if (b.isEmpty())
      {
        b = eh.b(parameh);
        a &= 0xFFFFFFFE;
      }
    }
    else
    {
      if (!eh.c(parameh).isEmpty())
      {
        if (!c.isEmpty()) {
          break label565;
        }
        c = eh.c(parameh);
        a &= 0xFFFFFFFD;
      }
      label95:
      if (!eh.d(parameh).isEmpty())
      {
        if (!d.isEmpty()) {
          break label586;
        }
        d = eh.d(parameh);
        a &= 0xFFFFFFFB;
      }
      label138:
      if (!eh.e(parameh).isEmpty())
      {
        if (!e.isEmpty()) {
          break label607;
        }
        e = eh.e(parameh);
        a &= 0xFFFFFFF7;
      }
      label181:
      if (!eh.f(parameh).isEmpty())
      {
        if (!f.isEmpty()) {
          break label628;
        }
        f = eh.f(parameh);
        a &= 0xFFFFFFEF;
      }
      label224:
      if (!eh.g(parameh).isEmpty())
      {
        if (!g.isEmpty()) {
          break label649;
        }
        g = eh.g(parameh);
        a &= 0xFFFFFFDF;
      }
      label267:
      if (!eh.h(parameh).isEmpty())
      {
        if (!h.isEmpty()) {
          break label670;
        }
        h = eh.h(parameh);
        a &= 0xFFFFFFBF;
      }
      label310:
      if (parameh.v())
      {
        a |= 0x80;
        i = eh.i(parameh);
      }
      if (parameh.x())
      {
        a |= 0x100;
        j = eh.j(parameh);
      }
      if (parameh.z())
      {
        a |= 0x200;
        k = eh.k(parameh);
      }
      if (parameh.B())
      {
        a |= 0x400;
        l = eh.l(parameh);
      }
      if (parameh.D()) {
        a(parameh.E());
      }
      if (parameh.F()) {
        a(parameh.G());
      }
      if (parameh.H()) {
        a(parameh.I());
      }
      if (!eh.m(parameh).isEmpty())
      {
        if (!p.isEmpty()) {
          break label691;
        }
        p = eh.m(parameh);
        a &= 0xBFFF;
      }
    }
    for (;;)
    {
      if (parameh.L()) {
        f(parameh.M());
      }
      a(r().a(eh.n(parameh)));
      return this;
      s();
      b.addAll(eh.b(parameh));
      break;
      label565:
      t();
      c.addAll(eh.c(parameh));
      break label95;
      label586:
      u();
      d.addAll(eh.d(parameh));
      break label138;
      label607:
      v();
      e.addAll(eh.e(parameh));
      break label181;
      label628:
      w();
      f.addAll(eh.f(parameh));
      break label224;
      label649:
      x();
      g.addAll(eh.g(parameh));
      break label267;
      label670:
      y();
      h.addAll(eh.h(parameh));
      break label310;
      label691:
      z();
      p.addAll(eh.m(parameh));
    }
  }
  
  /* Error */
  public ej a(pZ parampZ, qd paramqd)
  {
    // Byte code:
    //   0: getstatic 250	eh:a	LqF;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 255 3 0
    //   10: checkcast 127	eh
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 113	ej:a	(Leh;)Lej;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 258	qu:a	()LqB;
    //   31: checkcast 127	eh
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 113	ej:a	(Leh;)Lej;
    //   47: pop
    //   48: aload_2
    //   49: athrow
    //   50: astore_2
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -15 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	ej
    //   0	56	1	parampZ	pZ
    //   0	56	2	paramqd	qd
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qu
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public ej a(boolean paramBoolean)
  {
    a |= 0x2000;
    o = paramBoolean;
    return this;
  }
  
  public er a(int paramInt)
  {
    return (er)c.get(paramInt);
  }
  
  public ed b(int paramInt)
  {
    return (ed)d.get(paramInt);
  }
  
  public eh b()
  {
    return eh.a();
  }
  
  public dZ c(int paramInt)
  {
    return (dZ)e.get(paramInt);
  }
  
  public eh c()
  {
    eh localeh = d();
    if (!localeh.j()) {
      throw a(localeh);
    }
    return localeh;
  }
  
  public dZ d(int paramInt)
  {
    return (dZ)f.get(paramInt);
  }
  
  public eh d()
  {
    int i2 = 1;
    eh localeh = new eh(this, null);
    int i3 = a;
    if ((a & 0x1) == 1)
    {
      b = new qV(b);
      a &= 0xFFFFFFFE;
    }
    eh.a(localeh, b);
    if ((a & 0x2) == 2)
    {
      c = Collections.unmodifiableList(c);
      a &= 0xFFFFFFFD;
    }
    eh.a(localeh, c);
    if ((a & 0x4) == 4)
    {
      d = Collections.unmodifiableList(d);
      a &= 0xFFFFFFFB;
    }
    eh.b(localeh, d);
    if ((a & 0x8) == 8)
    {
      e = Collections.unmodifiableList(e);
      a &= 0xFFFFFFF7;
    }
    eh.c(localeh, e);
    if ((a & 0x10) == 16)
    {
      f = Collections.unmodifiableList(f);
      a &= 0xFFFFFFEF;
    }
    eh.d(localeh, f);
    if ((a & 0x20) == 32)
    {
      g = Collections.unmodifiableList(g);
      a &= 0xFFFFFFDF;
    }
    eh.e(localeh, g);
    if ((a & 0x40) == 64)
    {
      h = Collections.unmodifiableList(h);
      a &= 0xFFFFFFBF;
    }
    eh.f(localeh, h);
    if ((i3 & 0x80) == 128) {}
    for (;;)
    {
      eh.a(localeh, i);
      int i1 = i2;
      if ((i3 & 0x100) == 256) {
        i1 = i2 | 0x2;
      }
      eh.b(localeh, j);
      i2 = i1;
      if ((i3 & 0x200) == 512) {
        i2 = i1 | 0x4;
      }
      eh.c(localeh, k);
      i1 = i2;
      if ((i3 & 0x400) == 1024) {
        i1 = i2 | 0x8;
      }
      eh.d(localeh, l);
      i2 = i1;
      if ((i3 & 0x800) == 2048) {
        i2 = i1 | 0x10;
      }
      eh.a(localeh, m);
      i1 = i2;
      if ((i3 & 0x1000) == 4096) {
        i1 = i2 | 0x20;
      }
      eh.a(localeh, n);
      i2 = i1;
      if ((i3 & 0x2000) == 8192) {
        i2 = i1 | 0x40;
      }
      eh.a(localeh, o);
      if ((a & 0x4000) == 16384)
      {
        p = new qV(p);
        a &= 0xBFFF;
      }
      eh.b(localeh, p);
      i1 = i2;
      if ((i3 & 0x8000) == 32768) {
        i1 = i2 | 0x80;
      }
      eh.a(localeh, q);
      eh.b(localeh, i1);
      return localeh;
      i2 = 0;
    }
  }
  
  public dZ e(int paramInt)
  {
    return (dZ)g.get(paramInt);
  }
  
  public ej f(int paramInt)
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
 * Qualified Name:     ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */