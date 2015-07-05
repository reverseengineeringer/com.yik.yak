abstract class bj
{
  private final int a;
  private final bj[] b;
  
  public bj(int paramInt, bj... paramVarArgs)
  {
    a = paramInt;
    if (paramVarArgs != null) {}
    for (;;)
    {
      b = paramVarArgs;
      return;
      paramVarArgs = bb.a();
    }
  }
  
  public int a()
  {
    return 0;
  }
  
  public void a(aj paramaj) {}
  
  public int b()
  {
    int i = c();
    return i + aj.l(i) + aj.j(a);
  }
  
  public void b(aj paramaj)
  {
    paramaj.i(a, 2);
    paramaj.k(c());
    a(paramaj);
    bj[] arrayOfbj = b;
    int j = arrayOfbj.length;
    int i = 0;
    while (i < j)
    {
      arrayOfbj[i].b(paramaj);
      i += 1;
    }
  }
  
  public int c()
  {
    int j = a();
    bj[] arrayOfbj = b;
    int k = arrayOfbj.length;
    int i = 0;
    while (i < k)
    {
      j += arrayOfbj[i].b();
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */