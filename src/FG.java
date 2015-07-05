import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class fg
  extends TimerTask
{
  private fg(fb paramfb) {}
  
  public void run()
  {
    if ((fb.b(a) == ff.b) && (fb.e(a).isEmpty()) && (fb.f(a) + fb.g(a) < fb.h(a).a()))
    {
      ft.c("Disconnecting due to inactivity");
      fb.i(a);
      return;
    }
    fb.j(a).schedule(new fg(a), fb.g(a));
  }
}

/* Location:
 * Qualified Name:     fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */