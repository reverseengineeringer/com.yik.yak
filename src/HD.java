import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class hd
  extends TimerTask
{
  private hd(gZ paramgZ) {}
  
  public void run()
  {
    if ((gZ.b(a) == hc.b) && (gZ.e(a).isEmpty()) && (gZ.f(a) + gZ.g(a) < gZ.h(a).b()))
    {
      gf.c("Disconnecting due to inactivity");
      gZ.i(a);
      return;
    }
    gZ.j(a).schedule(new hd(a), gZ.g(a));
  }
}

/* Location:
 * Qualified Name:     hd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */