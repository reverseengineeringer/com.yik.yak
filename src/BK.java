final class bk
  extends bj
{
  private final bj[] a;
  
  public bk(bj... paramVarArgs)
  {
    super(0, new bj[0]);
    a = paramVarArgs;
  }
  
  public int b()
  {
    int i = 0;
    bj[] arrayOfbj = a;
    int k = arrayOfbj.length;
    int j = 0;
    while (i < k)
    {
      j += arrayOfbj[i].b();
      i += 1;
    }
    return j;
  }
  
  public void b(aj paramaj)
  {
    bj[] arrayOfbj = a;
    int j = arrayOfbj.length;
    int i = 0;
    while (i < j)
    {
      arrayOfbj[i].b(paramaj);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */