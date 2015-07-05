import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class er
  extends qh<ep, er>
  implements es
{
  private int a;
  private List<Integer> b = Collections.emptyList();
  private List<Integer> c = Collections.emptyList();
  private List<Integer> d = Collections.emptyList();
  private List<Integer> e = Collections.emptyList();
  private List<Integer> f = Collections.emptyList();
  private List<Integer> g = Collections.emptyList();
  private List<Integer> h = Collections.emptyList();
  private List<Integer> i = Collections.emptyList();
  private List<Integer> j = Collections.emptyList();
  private List<Integer> k = Collections.emptyList();
  
  private static er k()
  {
    return new er();
  }
  
  private void l()
  {
    if ((a & 0x1) != 1)
    {
      b = new ArrayList(b);
      a |= 0x1;
    }
  }
  
  private void m()
  {
    if ((a & 0x2) != 2)
    {
      c = new ArrayList(c);
      a |= 0x2;
    }
  }
  
  private void n()
  {
    if ((a & 0x4) != 4)
    {
      d = new ArrayList(d);
      a |= 0x4;
    }
  }
  
  private void o()
  {
    if ((a & 0x8) != 8)
    {
      e = new ArrayList(e);
      a |= 0x8;
    }
  }
  
  private void q()
  {
    if ((a & 0x10) != 16)
    {
      f = new ArrayList(f);
      a |= 0x10;
    }
  }
  
  private void s()
  {
    if ((a & 0x20) != 32)
    {
      g = new ArrayList(g);
      a |= 0x20;
    }
  }
  
  private void t()
  {
    if ((a & 0x40) != 64)
    {
      h = new ArrayList(h);
      a |= 0x40;
    }
  }
  
  private void u()
  {
    if ((a & 0x80) != 128)
    {
      i = new ArrayList(i);
      a |= 0x80;
    }
  }
  
  private void v()
  {
    if ((a & 0x100) != 256)
    {
      j = new ArrayList(j);
      a |= 0x100;
    }
  }
  
  private void w()
  {
    if ((a & 0x200) != 512)
    {
      k = new ArrayList(k);
      a |= 0x200;
    }
  }
  
  public er a()
  {
    return k().a(d());
  }
  
  public er a(ep paramep)
  {
    if (paramep == ep.a()) {
      return this;
    }
    if (!ep.b(paramep).isEmpty())
    {
      if (b.isEmpty())
      {
        b = ep.b(paramep);
        a &= 0xFFFFFFFE;
      }
    }
    else
    {
      if (!ep.c(paramep).isEmpty())
      {
        if (!c.isEmpty()) {
          break label481;
        }
        c = ep.c(paramep);
        a &= 0xFFFFFFFD;
      }
      label95:
      if (!ep.d(paramep).isEmpty())
      {
        if (!d.isEmpty()) {
          break label502;
        }
        d = ep.d(paramep);
        a &= 0xFFFFFFFB;
      }
      label138:
      if (!ep.e(paramep).isEmpty())
      {
        if (!e.isEmpty()) {
          break label523;
        }
        e = ep.e(paramep);
        a &= 0xFFFFFFF7;
      }
      label181:
      if (!ep.f(paramep).isEmpty())
      {
        if (!f.isEmpty()) {
          break label544;
        }
        f = ep.f(paramep);
        a &= 0xFFFFFFEF;
      }
      label224:
      if (!ep.g(paramep).isEmpty())
      {
        if (!g.isEmpty()) {
          break label565;
        }
        g = ep.g(paramep);
        a &= 0xFFFFFFDF;
      }
      label267:
      if (!ep.h(paramep).isEmpty())
      {
        if (!h.isEmpty()) {
          break label586;
        }
        h = ep.h(paramep);
        a &= 0xFFFFFFBF;
      }
      label310:
      if (!ep.i(paramep).isEmpty())
      {
        if (!i.isEmpty()) {
          break label607;
        }
        i = ep.i(paramep);
        a &= 0xFF7F;
      }
      label354:
      if (!ep.j(paramep).isEmpty())
      {
        if (!j.isEmpty()) {
          break label628;
        }
        j = ep.j(paramep);
        a &= 0xFEFF;
      }
      label398:
      if (!ep.k(paramep).isEmpty())
      {
        if (!k.isEmpty()) {
          break label649;
        }
        k = ep.k(paramep);
        a &= 0xFDFF;
      }
    }
    for (;;)
    {
      a(r().a(ep.l(paramep)));
      return this;
      l();
      b.addAll(ep.b(paramep));
      break;
      label481:
      m();
      c.addAll(ep.c(paramep));
      break label95;
      label502:
      n();
      d.addAll(ep.d(paramep));
      break label138;
      label523:
      o();
      e.addAll(ep.e(paramep));
      break label181;
      label544:
      q();
      f.addAll(ep.f(paramep));
      break label224;
      label565:
      s();
      g.addAll(ep.g(paramep));
      break label267;
      label586:
      t();
      h.addAll(ep.h(paramep));
      break label310;
      label607:
      u();
      i.addAll(ep.i(paramep));
      break label354;
      label628:
      v();
      j.addAll(ep.j(paramep));
      break label398;
      label649:
      w();
      k.addAll(ep.k(paramep));
    }
  }
  
  /* Error */
  public er a(pW parampW, qa paramqa)
  {
    // Byte code:
    //   0: getstatic 155	ep:a	LqC;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 160 3 0
    //   10: checkcast 81	ep
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 79	er:a	(Lep;)Ler;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 163	qr:a	()Lqy;
    //   31: checkcast 81	ep
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 79	er:a	(Lep;)Ler;
    //   47: pop
    //   48: aload_2
    //   49: athrow
    //   50: astore_2
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -15 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	er
    //   0	56	1	parampW	pW
    //   0	56	2	paramqa	qa
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qr
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public ep b()
  {
    return ep.a();
  }
  
  public ep c()
  {
    ep localep = d();
    if (!localep.j()) {
      throw a(localep);
    }
    return localep;
  }
  
  public ep d()
  {
    ep localep = new ep(this, null);
    if ((a & 0x1) == 1)
    {
      b = Collections.unmodifiableList(b);
      a &= 0xFFFFFFFE;
    }
    ep.a(localep, b);
    if ((a & 0x2) == 2)
    {
      c = Collections.unmodifiableList(c);
      a &= 0xFFFFFFFD;
    }
    ep.b(localep, c);
    if ((a & 0x4) == 4)
    {
      d = Collections.unmodifiableList(d);
      a &= 0xFFFFFFFB;
    }
    ep.c(localep, d);
    if ((a & 0x8) == 8)
    {
      e = Collections.unmodifiableList(e);
      a &= 0xFFFFFFF7;
    }
    ep.d(localep, e);
    if ((a & 0x10) == 16)
    {
      f = Collections.unmodifiableList(f);
      a &= 0xFFFFFFEF;
    }
    ep.e(localep, f);
    if ((a & 0x20) == 32)
    {
      g = Collections.unmodifiableList(g);
      a &= 0xFFFFFFDF;
    }
    ep.f(localep, g);
    if ((a & 0x40) == 64)
    {
      h = Collections.unmodifiableList(h);
      a &= 0xFFFFFFBF;
    }
    ep.g(localep, h);
    if ((a & 0x80) == 128)
    {
      i = Collections.unmodifiableList(i);
      a &= 0xFF7F;
    }
    ep.h(localep, i);
    if ((a & 0x100) == 256)
    {
      j = Collections.unmodifiableList(j);
      a &= 0xFEFF;
    }
    ep.i(localep, j);
    if ((a & 0x200) == 512)
    {
      k = Collections.unmodifiableList(k);
      a &= 0xFDFF;
    }
    ep.j(localep, k);
    return localep;
  }
  
  public final boolean j()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */