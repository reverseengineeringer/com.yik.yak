import java.io.InputStream;

class qL
  extends InputStream
{
  private qJ b;
  private qy c;
  private int d;
  private int e;
  private int f;
  private int g;
  
  public qL(qG paramqG)
  {
    a();
  }
  
  private int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    int j = paramInt1;
    paramInt1 = i;
    for (i = j; paramInt1 > 0; i = j)
    {
      b();
      if (c == null)
      {
        if (paramInt1 != paramInt2) {
          break;
        }
        return -1;
      }
      int k = Math.min(d - e, paramInt1);
      j = i;
      if (paramArrayOfByte != null)
      {
        c.b(paramArrayOfByte, e, i, k);
        j = i + k;
      }
      e += k;
      paramInt1 -= k;
    }
    return paramInt2 - paramInt1;
  }
  
  private void a()
  {
    b = new qJ(a, null);
    c = b.a();
    d = c.a();
    e = 0;
    f = 0;
  }
  
  private void b()
  {
    if ((c != null) && (e == d))
    {
      f += d;
      e = 0;
      if (b.hasNext())
      {
        c = b.a();
        d = c.a();
      }
    }
    else
    {
      return;
    }
    c = null;
    d = 0;
  }
  
  public int available()
  {
    int i = f;
    int j = e;
    return a.a() - (i + j);
  }
  
  public void mark(int paramInt)
  {
    g = (f + e);
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
  {
    b();
    if (c == null) {
      return -1;
    }
    qy localqy = c;
    int i = e;
    e = (i + 1);
    return localqy.a(i) & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException();
    }
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
      throw new IndexOutOfBoundsException();
    }
    return a(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void reset()
  {
    try
    {
      a();
      a(null, 0, g);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long skip(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IndexOutOfBoundsException();
    }
    long l = paramLong;
    if (paramLong > 2147483647L) {
      l = 2147483647L;
    }
    return a(null, 0, (int)l);
  }
}

/* Location:
 * Qualified Name:     qL
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */