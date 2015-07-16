import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class eb
  extends qk<dZ, eb>
  implements ec
{
  private int a;
  private List<Integer> b = Collections.emptyList();
  private int c;
  private int d;
  private boolean e;
  private boolean f;
  
  private static eb l()
  {
    return new eb();
  }
  
  private void m()
  {
    if ((a & 0x1) != 1)
    {
      b = new ArrayList(b);
      a |= 0x1;
    }
  }
  
  public eb a()
  {
    return l().a(d());
  }
  
  public eb a(int paramInt)
  {
    a |= 0x2;
    c = paramInt;
    return this;
  }
  
  public eb a(dZ paramdZ)
  {
    if (paramdZ == dZ.a()) {
      return this;
    }
    if (!dZ.b(paramdZ).isEmpty())
    {
      if (!b.isEmpty()) {
        break label134;
      }
      b = dZ.b(paramdZ);
      a &= 0xFFFFFFFE;
    }
    for (;;)
    {
      if (paramdZ.f()) {
        a(paramdZ.g());
      }
      if (paramdZ.h()) {
        b(paramdZ.i());
      }
      if (paramdZ.k()) {
        a(paramdZ.l());
      }
      if (paramdZ.m()) {
        b(paramdZ.q());
      }
      a(r().a(dZ.c(paramdZ)));
      return this;
      label134:
      m();
      b.addAll(dZ.b(paramdZ));
    }
  }
  
  /* Error */
  public eb a(pZ parampZ, qd paramqd)
  {
    // Byte code:
    //   0: getstatic 123	dZ:a	LqF;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 128 3 0
    //   10: checkcast 55	dZ
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 50	eb:a	(LdZ;)Leb;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 131	qu:a	()LqB;
    //   31: checkcast 55	dZ
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 50	eb:a	(LdZ;)Leb;
    //   47: pop
    //   48: aload_2
    //   49: athrow
    //   50: astore_2
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -15 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	eb
    //   0	56	1	parampZ	pZ
    //   0	56	2	paramqd	qd
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qu
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public eb a(boolean paramBoolean)
  {
    a |= 0x8;
    e = paramBoolean;
    return this;
  }
  
  public dZ b()
  {
    return dZ.a();
  }
  
  public eb b(int paramInt)
  {
    a |= 0x4;
    d = paramInt;
    return this;
  }
  
  public eb b(boolean paramBoolean)
  {
    a |= 0x10;
    f = paramBoolean;
    return this;
  }
  
  public dZ c()
  {
    dZ localdZ = d();
    if (!localdZ.j()) {
      throw a(localdZ);
    }
    return localdZ;
  }
  
  public dZ d()
  {
    int j = 1;
    dZ localdZ = new dZ(this, null);
    int k = a;
    if ((a & 0x1) == 1)
    {
      b = Collections.unmodifiableList(b);
      a &= 0xFFFFFFFE;
    }
    dZ.a(localdZ, b);
    if ((k & 0x2) == 2) {}
    for (;;)
    {
      dZ.a(localdZ, c);
      int i = j;
      if ((k & 0x4) == 4) {
        i = j | 0x2;
      }
      dZ.b(localdZ, d);
      j = i;
      if ((k & 0x8) == 8) {
        j = i | 0x4;
      }
      dZ.a(localdZ, e);
      i = j;
      if ((k & 0x10) == 16) {
        i = j | 0x8;
      }
      dZ.b(localdZ, f);
      dZ.c(localdZ, i);
      return localdZ;
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
 * Qualified Name:     eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */