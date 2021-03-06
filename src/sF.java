import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

class sf
{
  private final Object b = new Object();
  private Handler c = a();
  private long d = 0L;
  private long e = 0L;
  private long f = -1L;
  private tp g;
  
  public sf(sd paramsd) {}
  
  private Handler a()
  {
    HandlerThread localHandlerThread = new HandlerThread("com.mixpanel.android.AnalyticsWorker", 1);
    localHandlerThread.start();
    return new sg(this, localHandlerThread.getLooper());
  }
  
  private void b()
  {
    long l1 = System.currentTimeMillis();
    long l2 = d + 1L;
    if (f > 0L)
    {
      e = ((l1 - f + e * d) / l2);
      long l3 = e / 1000L;
      sd.a(a, "Average send frequency approximately " + l3 + " seconds.");
    }
    f = l1;
    d = l2;
  }
  
  public void a(Message paramMessage)
  {
    synchronized (b)
    {
      if (c == null)
      {
        sd.a(a, "Dead mixpanel worker dropping a message: " + what);
        return;
      }
      c.sendMessage(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     sf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */