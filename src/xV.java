import java.io.Closeable;

public final class xV
  implements Closeable
{
  private final String b;
  private final long c;
  private final KT[] d;
  private final long[] e;
  
  private xV(xP paramxP, String paramString, long paramLong, KT[] paramArrayOfKT, long[] paramArrayOfLong)
  {
    b = paramString;
    c = paramLong;
    d = paramArrayOfKT;
    e = paramArrayOfLong;
  }
  
  public KT a(int paramInt)
  {
    return d[paramInt];
  }
  
  public xS a()
  {
    return xP.a(a, b, c);
  }
  
  public void close()
  {
    KT[] arrayOfKT = d;
    int j = arrayOfKT.length;
    int i = 0;
    while (i < j)
    {
      yi.a(arrayOfKT[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     xV
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */