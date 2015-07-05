import java.util.NoSuchElementException;

class qx
  implements pU
{
  private int b = 0;
  private final int c;
  
  private qx(qv paramqv)
  {
    c = paramqv.a();
  }
  
  public Byte a()
  {
    return Byte.valueOf(b());
  }
  
  public byte b()
  {
    try
    {
      byte[] arrayOfByte = a.c;
      int i = b;
      b = (i + 1);
      byte b1 = arrayOfByte[i];
      return b1;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
    }
  }
  
  public boolean hasNext()
  {
    return b < c;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     qx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */