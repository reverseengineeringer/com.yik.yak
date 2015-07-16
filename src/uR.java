import java.io.OutputStream;
import java.nio.ByteBuffer;

class ur
  extends OutputStream
{
  private ur(um paramum) {}
  
  public void close()
  {
    try
    {
      um.c(a).a(rP.b, um.c(), true);
      return;
    }
    catch (rK localrK)
    {
      throw new uq(a, localrK);
    }
    catch (rJ localrJ)
    {
      throw new uq(a, localrJ);
    }
  }
  
  public void write(int paramInt)
  {
    write(new byte[] { (byte)paramInt }, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2);
    try
    {
      um.c(a).a(rP.b, paramArrayOfByte, false);
      return;
    }
    catch (rK paramArrayOfByte)
    {
      throw new uq(a, paramArrayOfByte);
    }
    catch (rJ paramArrayOfByte)
    {
      throw new uq(a, paramArrayOfByte);
    }
  }
}

/* Location:
 * Qualified Name:     ur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */