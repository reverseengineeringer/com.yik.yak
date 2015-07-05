public final class xe
{
  private boolean a;
  private String[] b;
  private String[] c;
  private boolean d;
  
  public xe(xc paramxc)
  {
    a = d;
    b = xc.a(paramxc);
    c = xc.b(paramxc);
    d = e;
  }
  
  private xe(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public xc a()
  {
    return new xc(this, null);
  }
  
  public xe a(boolean paramBoolean)
  {
    if (!a) {
      throw new IllegalStateException("no TLS extensions for cleartext connections");
    }
    d = paramBoolean;
    return this;
  }
  
  xe a(String[] paramArrayOfString)
  {
    b = paramArrayOfString;
    return this;
  }
  
  public xe a(wY... paramVarArgs)
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
  
  public xe a(xE... paramVarArgs)
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
  
  xe b(String... paramVarArgs)
  {
    c = paramVarArgs;
    return this;
  }
}

/* Location:
 * Qualified Name:     xe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */