import android.os.Handler;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ua
  implements Runnable
{
  private ua(tY paramtY) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    synchronized (tY.a(a))
    {
      Iterator localIterator = tY.a(a).entrySet().iterator();
      while (localIterator.hasNext())
      {
        uc localuc = (uc)((Map.Entry)localIterator.next()).getValue();
        if (l - a > 1000L)
        {
          tY.b(a).a(b, c);
          localIterator.remove();
        }
      }
    }
    if (!tY.a(a).isEmpty()) {
      tY.c(a).postDelayed(this, 500L);
    }
  }
}

/* Location:
 * Qualified Name:     ua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */