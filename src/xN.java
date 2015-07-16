public final class xn
{
  private boolean a;
  private String[] b;
  private String[] c;
  private boolean d;
  
  public xn(xl paramxl)
  {
    a = d;
    b = xl.a(paramxl);
    c = xl.b(paramxl);
    d = e;
  }
  
  private xn(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public xl a()
  {
    return new xl(this, null);
  }
  
  public xn a(boolean paramBoolean)
  {
    if (!a) {
      throw new IllegalStateException("no TLS extensions for cleartext connections");
    }
    d = paramBoolean;
    return this;
  }
  
  xn a(String[] paramArrayOfString)
  {
    b = paramArrayOfString;
    return this;
  }
  
  public xn a(xO... paramVarArgs)
  {
    if (!a) {
      throw new IllegalStateException("no TLS versions for cleartext connections");
    }
    String[] arrayOfString = new String[paramVarArgs.length];
    int i = 0;
    while (i < paramVarArgs.length)
    {
      arrayOfString[i] = e;
      i += 1;
    }
    return b(arrayOfString);
  }
  
  public xn a(xh... paramVarArgs)
  {
    if (!a) {
      throw new IllegalStateException("no cipher suites for cleartext connections");
    }
    String[] arrayOfString = new String[paramVarArgs.length];
    int i = 0;
    while (i < paramVarArgs.length)
    {
      arrayOfString[i] = aS;
      i += 1;
    }
    return a(arrayOfString);
  }
  
  xn b(String... paramVarArgs)
  {
    c = paramVarArgs;
    return this;
  }
}

/* Location:
 * Qualified Name:     xn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */