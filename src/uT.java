import android.os.Message;

class ut
  implements Runnable
{
  private volatile boolean b = true;
  
  public ut(uq paramuq) {}
  
  public void a()
  {
    b = false;
    uq.a(a).post(this);
  }
  
  public void b()
  {
    b = true;
    uq.a(a).removeCallbacks(this);
  }
  
  public void run()
  {
    if (!b)
    {
      Message localMessage = uq.a(a).obtainMessage(1);
      uq.a(a).sendMessage(localMessage);
    }
    uq.a(a).postDelayed(this, 30000L);
  }
}

/* Location:
 * Qualified Name:     ut
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */