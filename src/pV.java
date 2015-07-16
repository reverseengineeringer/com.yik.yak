import java.util.NoSuchElementException;

class pV
  implements pX
{
  private int b;
  private final int c;
  
  private pV(pT parampT)
  {
    b = parampT.b();
    c = (b + parampT.a());
  }
  
  public Byte a()
  {
    return Byte.valueOf(b());
  }
  
  public byte b()
  {
    if (b >= c) {
      throw new NoSuchElementException();
    }
    byte[] arrayOfByte = a.c;
    int i = b;
    b = (i + 1);
    return arrayOfByte[i];
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
 * Qualified Name:     pV
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */