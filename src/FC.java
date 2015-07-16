import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class fc
  extends TimerTask
{
  private fc(eX parameX) {}
  
  public void run()
  {
    if ((eX.b(a) == fb.b) && (eX.e(a).isEmpty()) && (eX.f(a) + eX.g(a) < eX.h(a).a()))
    {
      fq.c("Disconnecting due to inactivity");
      eX.i(a);
      return;
    }
    eX.j(a).schedule(new fc(a), eX.g(a));
  }
}

/* Location:
 * Qualified Name:     fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */