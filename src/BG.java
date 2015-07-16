final class bg
  extends bf
{
  private final bf[] a;
  
  public bg(bf... paramVarArgs)
  {
    super(0, new bf[0]);
    a = paramVarArgs;
  }
  
  public int b()
  {
    int i = 0;
    bf[] arrayOfbf = a;
    int k = arrayOfbf.length;
    int j = 0;
    while (i < k)
    {
      j += arrayOfbf[i].b();
      i += 1;
    }
    return j;
  }
  
  public void b(af paramaf)
  {
    bf[] arrayOfbf = a;
    int j = arrayOfbf.length;
    int i = 0;
    while (i < j)
    {
      arrayOfbf[i].b(paramaf);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */