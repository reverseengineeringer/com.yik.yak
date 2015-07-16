public final class ef
  extends qk<ed, ef>
  implements eg
{
  private int a;
  private int b;
  private int c;
  
  private static ef m()
  {
    return new ef();
  }
  
  public ef a()
  {
    return m().a(d());
  }
  
  public ef a(int paramInt)
  {
    a |= 0x1;
    b = paramInt;
    return this;
  }
  
  public ef a(ed paramed)
  {
    if (paramed == ed.a()) {
      return this;
    }
    if (paramed.d()) {
      a(paramed.e());
    }
    if (paramed.f()) {
      b(paramed.g());
    }
    a(r().a(ed.b(paramed)));
    return this;
  }
  
  /* Error */
  public ef a(pZ parampZ, qd paramqd)
  {
    // Byte code:
    //   0: getstatic 76	ed:a	LqF;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 81 3 0
    //   10: checkcast 36	ed
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 29	ef:a	(Led;)Lef;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 84	qu:a	()LqB;
    //   31: checkcast 36	ed
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 29	ef:a	(Led;)Lef;
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
    //   0	56	1	parampZ	pZ
    //   0	56	2	paramqd	qd
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qu
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public ed b()
  {
    return ed.a();
  }
  
  public ef b(int paramInt)
  {
    a |= 0x2;
    c = paramInt;
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
    int i = 1;
    ed localed = new ed(this, null);
    int k = a;
    if ((k & 0x1) == 1) {}
    for (;;)
    {
      ed.a(localed, b);
      int j = i;
      if ((k & 0x2) == 2) {
        j = i | 0x2;
      }
      ed.b(localed, c);
      ed.c(localed, j);
      return localed;
      i = 0;
    }
  }
  
  public boolean i()
  {
    return (a & 0x1) == 1;
  }
  
  public final boolean j()
  {
    if (!i()) {}
    while (!k()) {
      return false;
    }
    return true;
  }
  
  public boolean k()
  {
    return (a & 0x2) == 2;
  }
}

/* Location:
 * Qualified Name:     ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */