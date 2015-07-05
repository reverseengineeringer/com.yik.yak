import java.io.File;
import java.nio.charset.Charset;

public abstract class xw
{
  public static xw a(xn paramxn, File paramFile)
  {
    if (paramFile == null) {
      throw new NullPointerException("content == null");
    }
    return new xy(paramxn, paramFile);
  }
  
  public static xw a(xn paramxn, String paramString)
  {
    Object localObject = xY.d;
    xn localxn = paramxn;
    if (paramxn != null)
    {
      Charset localCharset = paramxn.a();
      localObject = localCharset;
      localxn = paramxn;
      if (localCharset == null)
      {
        localObject = xY.d;
        localxn = xn.a(paramxn + "; charset=utf-8");
      }
    }
    return a(localxn, paramString.getBytes((Charset)localObject));
  }
  
  public static xw a(xn paramxn, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("content == null");
    }
    return new xx(paramxn, paramArrayOfByte);
  }
  
  public abstract xn a();
  
  public abstract void a(JS paramJS);
  
  public long b()
  {
    return -1L;
  }
}

/* Location:
 * Qualified Name:     xw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */