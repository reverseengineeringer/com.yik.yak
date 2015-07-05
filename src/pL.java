import java.util.Arrays;

class pl
{
  final String a;
  final byte[] b;
  
  pl(String paramString, byte[] paramArrayOfByte)
  {
    a = paramString;
    b = paramArrayOfByte;
  }
  
  public String toString()
  {
    return "KeyAndSerialized: key = " + a + " serialized hash = " + Arrays.hashCode(b);
  }
}

/* Location:
 * Qualified Name:     pl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */