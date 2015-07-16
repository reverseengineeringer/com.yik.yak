import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

final class ab
{
  public static final ab a = new ab(new byte[0]);
  private final byte[] b;
  private volatile int c = 0;
  
  private ab(byte[] paramArrayOfByte)
  {
    b = paramArrayOfByte;
  }
  
  public static ab a(String paramString)
  {
    try
    {
      paramString = new ab(paramString.getBytes("UTF-8"));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException("UTF-8 not supported.", paramString);
    }
  }
  
  public static ab a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return new ab(arrayOfByte);
  }
  
  public int a()
  {
    return b.length;
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(b, paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }
  
  public InputStream b()
  {
    return new ByteArrayInputStream(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    for (;;)
    {
      return true;
      if (!(paramObject instanceof ab)) {
        return false;
      }
      Object localObject = (ab)paramObject;
      int j = b.length;
      if (j != b.length) {
        return false;
      }
      paramObject = b;
      localObject = b;
      int i = 0;
      while (i < j)
      {
        if (paramObject[i] != localObject[i]) {
          return false;
        }
        i += 1;
      }
    }
  }
  
  public int hashCode()
  {
    int i = c;
    int j = i;
    if (i == 0)
    {
      byte[] arrayOfByte = b;
      int k = b.length;
      j = 0;
      int m;
      for (i = k; j < k; i = m + i * 31)
      {
        m = arrayOfByte[j];
        j += 1;
      }
      j = i;
      if (i == 0) {
        j = 1;
      }
      c = j;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */