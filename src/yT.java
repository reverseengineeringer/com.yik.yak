import java.io.IOException;
import java.util.concurrent.TimeUnit;

class yt
  implements Kl
{
  boolean a;
  
  yt(yr paramyr, JT paramJT, yc paramyc, JS paramJS) {}
  
  public long a(JP paramJP, long paramLong)
  {
    try
    {
      paramLong = b.a(paramJP, paramLong);
      if (paramLong == -1L)
      {
        if (!a)
        {
          a = true;
          d.close();
        }
        return -1L;
      }
    }
    catch (IOException paramJP)
    {
      if (!a)
      {
        a = true;
        c.a();
      }
      throw paramJP;
    }
    paramJP.a(d.d(), paramJP.c() - paramLong, paramLong);
    d.u();
    return paramLong;
  }
  
  public Km b()
  {
    return b.b();
  }
  
  public void close()
  {
    if ((!a) && (!xY.a(this, 100, TimeUnit.MILLISECONDS)))
    {
      a = true;
      c.a();
    }
    b.close();
  }
}

/* Location:
 * Qualified Name:     yt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */