import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ef
  extends qh<ed, ef>
  implements eg
{
  private int a;
  private List<Integer> b = Collections.emptyList();
  private int c;
  private int d;
  private boolean e;
  private boolean f;
  
  private static ef l()
  {
    return new ef();
  }
  
  private void m()
  {
    if ((a & 0x1) != 1)
    {
      b = new ArrayList(b);
      a |= 0x1;
    }
  }
  
  public ef a()
  {
    return l().a(d());
  }
  
  public ef a(int paramInt)
  {
    a |= 0x2;
    c = paramInt;
    return this;
  }
  
  public ef a(ed paramed)
  {
    if (paramed == ed.a()) {
      return this;
    }
    if (!ed.b(paramed).isEmpty())
    {
      if (!b.isEmpty()) {
        break label134;
      }
      b = ed.b(paramed);
      a &= 0xFFFFFFFE;
    }
    for (;;)
    {
      if (paramed.f()) {
        a(paramed.g());
      }
      if (paramed.h()) {
        b(paramed.i());
      }
      if (paramed.k()) {
        a(paramed.l());
      }
      if (paramed.m()) {
        b(paramed.q());
      }
      a(r().a(ed.c(paramed)));
      return this;
      label134:
      m();
      b.addAll(ed.b(paramed));
    }
  }
  
  /* Error */
  public ef a(pW parampW, qa paramqa)
  {
    // Byte code:
    //   0: getstatic 123	ed:a	LqC;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 128 3 0
    //   10: checkcast 55	ed
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 50	ef:a	(Led;)Lef;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 131	qr:a	()Lqy;
    //   31: checkcast 55	ed
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 50	ef:a	(Led;)Lef;
    //   47: pop
    //   48: aload_2
    //   49: athrow
    //   50: astore_2
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -15 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	ef
    //   0	56	1	parampW	pW
    //   0	56	2	paramqa	qa
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qr
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public ef a(boolean paramBoolean)
  {
    a |= 0x8;
    e = paramBoolean;
    return this;
  }
  
  public ed b()
  {
    return ed.a();
  }
  
  public ef b(int paramInt)
  {
    a |= 0x4;
    d = paramInt;
    return this;
  }
  
  public ef b(boolean paramBoolean)
  {
    a |= 0x10;
    f = paramBoolean;
    return this;
  }
  
  public ed c()
  {
    ed localed = d();
    if (!localed.j()) {
      throw a(localed);
    }
    return localed;
  }
  
  public ed d()
  {
    int j = 1;
    ed localed = new ed(this, null);
    int k = a;
    if ((a & 0x1) == 1)
    {
      b = Collections.unmodifiableList(b);
      a &= 0xFFFFFFFE;
    }
    ed.a(localed, b);
    if ((k & 0x2) == 2) {}
    for (;;)
    {
      ed.a(localed, c);
      int i = j;
      if ((k & 0x4) == 4) {
        i = j | 0x2;
      }
      ed.b(localed, d);
      j = i;
      if ((k & 0x8) == 8) {
        j = i | 0x4;
      }
      ed.a(localed, e);
      i = j;
      if ((k & 0x10) == 16) {
        i = j | 0x8;
      }
      ed.b(localed, f);
      ed.c(localed, i);
      return localed;
      j = 0;
    }
  }
  
  public boolean i()
  {
    return (a & 0x2) == 2;
  }
  
  public final boolean j()
  {
    return i();
  }
}

/* Location:
 * Qualified Name:     ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */