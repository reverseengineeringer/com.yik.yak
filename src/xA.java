import java.util.List;

class xa
  implements xw
{
  private final int b;
  private final xD c;
  
  xa(wY paramwY, int paramInt, xD paramxD)
  {
    b = paramInt;
    c = paramxD;
  }
  
  public xD a()
  {
    return c;
  }
  
  public xJ a(xD paramxD)
  {
    if (b < wY.c(a).u().size())
    {
      paramxD = new xa(a, b + 1, paramxD);
      return ((xv)wY.c(a).u().get(b)).a(paramxD);
    }
    return a.a(paramxD, false);
  }
}

/* Location:
 * Qualified Name:     xa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */