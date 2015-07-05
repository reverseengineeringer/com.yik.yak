public class ds
{
  public static vK a(dt paramdt, float paramFloat, vK paramvK)
  {
    return a(paramdt, paramFloat, paramvK, new dr[0]);
  }
  
  public static vK a(dt paramdt, float paramFloat, vK paramvK, dr... paramVarArgs)
  {
    paramdt = paramdt.a(paramFloat);
    if (paramVarArgs != null) {
      paramdt.a(paramVarArgs);
    }
    paramvK.a(paramdt);
    return paramvK;
  }
}

/* Location:
 * Qualified Name:     ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */