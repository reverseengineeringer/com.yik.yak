import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

class ac
{
  private static final AtomicLong a = new AtomicLong(0L);
  private static String b;
  
  public ac(Iq paramIq)
  {
    Object localObject = new byte[10];
    a((byte[])localObject);
    b((byte[])localObject);
    c((byte[])localObject);
    paramIq = Ie.a(paramIq.b());
    localObject = Ie.a((byte[])localObject);
    b = String.format(Locale.US, "%s-%s-%s-%s", new Object[] { ((String)localObject).substring(0, 12), ((String)localObject).substring(12, 16), ((String)localObject).subSequence(16, 20), paramIq.substring(0, 12) }).toUpperCase(Locale.US);
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    long l = new Date().getTime();
    byte[] arrayOfByte = a(l / 1000L);
    paramArrayOfByte[0] = arrayOfByte[0];
    paramArrayOfByte[1] = arrayOfByte[1];
    paramArrayOfByte[2] = arrayOfByte[2];
    paramArrayOfByte[3] = arrayOfByte[3];
    arrayOfByte = b(l % 1000L);
    paramArrayOfByte[4] = arrayOfByte[0];
    paramArrayOfByte[5] = arrayOfByte[1];
  }
  
  private static byte[] a(long paramLong)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(4);
    localByteBuffer.putInt((int)paramLong);
    localByteBuffer.order(ByteOrder.BIG_ENDIAN);
    localByteBuffer.position(0);
    return localByteBuffer.array();
  }
  
  private void b(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = b(a.incrementAndGet());
    paramArrayOfByte[6] = arrayOfByte[0];
    paramArrayOfByte[7] = arrayOfByte[1];
  }
  
  private static byte[] b(long paramLong)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(2);
    localByteBuffer.putShort((short)(int)paramLong);
    localByteBuffer.order(ByteOrder.BIG_ENDIAN);
    localByteBuffer.position(0);
    return localByteBuffer.array();
  }
  
  private void c(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = b(Integer.valueOf(Process.myPid()).shortValue());
    paramArrayOfByte[8] = arrayOfByte[0];
    paramArrayOfByte[9] = arrayOfByte[1];
  }
  
  public String toString()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */