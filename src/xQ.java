import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public final class xq
{
  private static final xx a = xx.a("application/x-www-form-urlencoded");
  private final StringBuilder b = new StringBuilder();
  
  public xG a()
  {
    if (b.length() == 0) {
      throw new IllegalStateException("Form encoded body must have at least one part.");
    }
    byte[] arrayOfByte = b.toString().getBytes(yi.d);
    return xG.a(a, arrayOfByte);
  }
  
  public xq a(String paramString1, String paramString2)
  {
    if (b.length() > 0) {
      b.append('&');
    }
    try
    {
      b.append(URLEncoder.encode(paramString1, "UTF-8")).append('=').append(URLEncoder.encode(paramString2, "UTF-8"));
      return this;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new AssertionError(paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     xq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */