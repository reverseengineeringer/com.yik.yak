import java.io.IOException;

public enum xC
{
  private final String e;
  
  private xC(String paramString)
  {
    e = paramString;
  }
  
  public static xC a(String paramString)
  {
    if (paramString.equals(ae)) {
      return a;
    }
    if (paramString.equals(be)) {
      return b;
    }
    if (paramString.equals(de)) {
      return d;
    }
    if (paramString.equals(ce)) {
      return c;
    }
    throw new IOException("Unexpected protocol: " + paramString);
  }
  
  public String toString()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     xC
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */