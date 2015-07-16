import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public class qr
{
  public static final byte[] a = new byte[0];
  public static final ByteBuffer b = ByteBuffer.wrap(a);
  
  public static int a(long paramLong)
  {
    return (int)(paramLong >>> 32 ^ paramLong);
  }
  
  public static int a(List<? extends qs> paramList)
  {
    paramList = paramList.iterator();
    for (int i = 1; paramList.hasNext(); i = a((qs)paramList.next()) + i * 31) {}
    return i;
  }
  
  public static int a(qs paramqs)
  {
    return paramqs.a();
  }
  
  public static int a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return 1231;
    }
    return 1237;
  }
  
  public static boolean a(byte[] paramArrayOfByte)
  {
    return qY.a(paramArrayOfByte);
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, "UTF-8");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new RuntimeException("UTF-8 not supported?", paramArrayOfByte);
    }
  }
}

/* Location:
 * Qualified Name:     qr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */