import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class ha
  extends TimerTask
{
  private ha(gW paramgW) {}
  
  public void run()
  {
    if ((gW.b(a) == gZ.b) && (gW.e(a).isEmpty()) && (gW.f(a) + gW.g(a) < gW.h(a).b()))
    {
      gc.c("Disconnecting due to inactivity");
      gW.i(a);
      return;
    }
    gW.j(a).schedule(new ha(a), gW.g(a));
  }
}

/* Location:
 * Qualified Name:     ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */