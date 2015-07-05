import java.io.OutputStream;
import java.nio.ByteBuffer;

class uf
  extends OutputStream
{
  private uf(ua paramua) {}
  
  public void close()
  {
    try
    {
      ua.c(a).a(rL.b, ua.c(), true);
      return;
    }
    catch (rG localrG)
    {
      throw new ue(a, localrG);
    }
    catch (rF localrF)
    {
      throw new ue(a, localrF);
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
      ua.c(a).a(rL.b, paramArrayOfByte, false);
      return;
    }
    catch (rG paramArrayOfByte)
    {
      throw new ue(a, paramArrayOfByte);
    }
    catch (rF paramArrayOfByte)
    {
      throw new ue(a, paramArrayOfByte);
    }
  }
}

/* Location:
 * Qualified Name:     uf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */