public final class ej
  extends qh<eh, ej>
  implements ek
{
  private int a;
  private int b;
  private int c;
  
  private static ej m()
  {
    return new ej();
  }
  
  public ej a()
  {
    return m().a(d());
  }
  
  public ej a(int paramInt)
  {
    a |= 0x1;
    b = paramInt;
    return this;
  }
  
  public ej a(eh parameh)
  {
    if (parameh == eh.a()) {
      return this;
    }
    if (parameh.d()) {
      a(parameh.e());
    }
    if (parameh.f()) {
      b(parameh.g());
    }
    a(r().a(eh.b(parameh)));
    return this;
  }
  
  /* Error */
  public ej a(pW parampW, qa paramqa)
  {
    // Byte code:
    //   0: getstatic 76	eh:a	LqC;
    //   3: aload_1
    //   4: aload_2
    //   5: invokeinterface 81 3 0
    //   10: checkcast 36	eh
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +9 -> 24
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 29	ej:a	(Leh;)Lej;
    //   23: pop
    //   24: aload_0
    //   25: areturn
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 84	qr:a	()Lqy;
    //   31: checkcast 36	eh
    //   34: astore_1
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: aload_1
    //   39: ifnull +9 -> 48
    //   42: aload_0
    //   43: aload_1
    //   44: invokevirtual 29	ej:a	(Leh;)Lej;
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
    //   0	56	1	parampW	pW
    //   0	56	2	paramqa	qa
    // Exception table:
    //   from	to	target	type
    //   0	14	26	qr
    //   35	37	37	finally
    //   0	14	50	finally
    //   27	35	50	finally
  }
  
  public eh b()
  {
    return eh.a();
  }
  
  public ej b(int paramInt)
  {
    a |= 0x2;
    c = paramInt;
    return this;
  }
  
  public eh c()
  {
    eh localeh = d();
    if (!localeh.j()) {
      throw a(localeh);
    }
    return localeh;
  }
  
  public eh d()
  {
    int i = 1;
    eh localeh = new eh(this, null);
    int k = a;
    if ((k & 0x1) == 1) {}
    for (;;)
    {
      eh.a(localeh, b);
      int j = i;
      if ((k & 0x2) == 2) {
        j = i | 0x2;
      }
      eh.b(localeh, c);
      eh.c(localeh, j);
      return localeh;
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
 * Qualified Name:     ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */