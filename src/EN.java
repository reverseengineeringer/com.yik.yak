import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class en
  extends qk<el, en>
  implements eo
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
  
  private static en k()
  {
    return new en();
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
  
  public en a()
  {
    return k().a(d());
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
          break label481;
        }
        c = el.c(paramel);
        a &= 0xFFFFFFFD;
      }
      label95:
      if (!el.d(paramel).isEmpty())
      {
        if (!d.isEmpty()) {
          break label502;
        }
        d = el.d(paramel);
        a &= 0xFFFFFFFB;
      }
      label138:
      if (!el.e(paramel).isEmpty())
      {
        if (!e.isEmpty()) {
          break label523;
        }
        e = el.e(paramel);
        a &= 0xFFFFFFF7;
      }
      label181:
      if (!el.f(paramel).isEmpty())
      {
        if (!f.isEmpty()) {
          break label544;
        }
        f = el.f(paramel);
        a &= 0xFFFFFFEF;
      }
      label224:
      if (!el.g(paramel).isEmpty())
      {
        if (!g.isEmpty()) {
          break label565;
        }
        g = el.g(paramel);
        a &= 0xFFFFFFDF;
      }
      label267:
      if (!el.h(paramel).isEmpty())
      {
        if (!h.isEmpty()) {
          break label586;
        }
        h = el.h(paramel);
        a &= 0xFFFFFFBF;
      }
      label310:
      if (!el.i(paramel).isEmpty())
      {
        if (!i.isEmpty()) {
          break label607;
        }
        i = el.i(paramel);
        a &= 0xFF7F;
      }
      label354:
      if (!el.j(paramel).isEmpty())
      {
        if (!j.isEmpty()) {
          break label628;
        }
        j = el.j(paramel);
        a &= 0xFEFF;
      }
      label398:
      if (!el.k(paramel).isEmpty())
      {
        if (!k.isEmpty()) {
          break label649;
        }
        k = el.k(paramel);
        a &= 0xFDFF;
      }
    }
    for (;;)
    {
      a(r().a(el.l(paramel)));
      return this;
      l();
      b.addAll(el.b(paramel));
      break;
      label481:
      m();
      c.addAll(el.c(paramel));
      break label95;
      label502:
      n();
      d.addAll(el.d(paramel));
      break label138;
      label523:
      o();
      e.addAll(el.e(paramel));
      break label181;
      label544:
      q();
      f.addAll(el.f(paramel));
      break label224;
      label565:
      s();
      g.addAll(el.g(paramel));
      break label267;
      label586:
      t();
      h.addAll(el.h(paramel));
      break label310;
      label607:
      u();
      i.addAll(el.i(paramel));
      break label354;
      label628:
      v();
      j.addAll(el.j(paramel));
      break label398;
      label649:
      w();
      k.addAll(el.k(paramel));
    }
  }
  
  /* Error */
  public en a(pZ parampZ, qd paramqd)
  {
    // Byte code:
    //   0: getstatic 155	el:a	LqF;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 160 3 0
    //   10: checkcast 81	el
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 79	en:a	(Lel;)Len;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 163	qu:a	()LqB;
    //   31: checkcast 81	el
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 79	en:a	(Lel;)Len;
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
    //   0	56	1	parampZ	pZ
    //   0	56	2	paramqd	qd
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qu
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public el b()
  {
    return el.a();
  }
  
  public el c()
  {
    el localel = d();
    if (!localel.j()) {
      throw a(localel);
    }
    return localel;
  }
  
  public el d()
  {
    el localel = new el(this, null);
    if ((a & 0x1) == 1)
    {
      b = Collections.unmodifiableList(b);
      a &= 0xFFFFFFFE;
    }
    el.a(localel, b);
    if ((a & 0x2) == 2)
    {
      c = Collections.unmodifiableList(c);
      a &= 0xFFFFFFFD;
    }
    el.b(localel, c);
    if ((a & 0x4) == 4)
    {
      d = Collections.unmodifiableList(d);
      a &= 0xFFFFFFFB;
    }
    el.c(localel, d);
    if ((a & 0x8) == 8)
    {
      e = Collections.unmodifiableList(e);
      a &= 0xFFFFFFF7;
    }
    el.d(localel, e);
    if ((a & 0x10) == 16)
    {
      f = Collections.unmodifiableList(f);
      a &= 0xFFFFFFEF;
    }
    el.e(localel, f);
    if ((a & 0x20) == 32)
    {
      g = Collections.unmodifiableList(g);
      a &= 0xFFFFFFDF;
    }
    el.f(localel, g);
    if ((a & 0x40) == 64)
    {
      h = Collections.unmodifiableList(h);
      a &= 0xFFFFFFBF;
    }
    el.g(localel, h);
    if ((a & 0x80) == 128)
    {
      i = Collections.unmodifiableList(i);
      a &= 0xFF7F;
    }
    el.h(localel, i);
    if ((a & 0x100) == 256)
    {
      j = Collections.unmodifiableList(j);
      a &= 0xFEFF;
    }
    el.i(localel, j);
    if ((a & 0x200) == 512)
    {
      k = Collections.unmodifiableList(k);
      a &= 0xFDFF;
    }
    el.j(localel, k);
    return localel;
  }
  
  public final boolean j()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */