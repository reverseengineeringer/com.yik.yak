import java.io.IOException;

public enum xs
{
  private final String e;
  
  private xs(String paramString)
  {
    e = paramString;
  }
  
  public static xs a(String paramString)
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
 * Qualified Name:     xs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */