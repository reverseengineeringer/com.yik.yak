import java.io.Closeable;
import java.io.File;

final class xy
  extends xw
{
  xy(xn paramxn, File paramFile) {}
  
  public xn a()
  {
    return a;
  }
  
  public void a(JS paramJS)
  {
    Object localObject = null;
    try
    {
      Kl localKl = Ka.a(b);
      localObject = localKl;
      paramJS.a(localKl);
      xY.a(localKl);
      return;
    }
    finally
    {
      xY.a((Closeable)localObject);
    }
  }
  
  public long b()
  {
    return b.length();
  }
}

/* Location:
 * Qualified Name:     xy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */