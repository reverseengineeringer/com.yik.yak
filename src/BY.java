import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

class by
  extends Jd<bC>
  implements bB<bC>
{
  Js a;
  private final JI g;
  
  public by(Context paramContext, ScheduledExecutorService paramScheduledExecutorService, bz parambz, JI paramJI)
  {
    super(paramContext, paramScheduledExecutorService, parambz);
    g = paramJI;
  }
  
  public Js a()
  {
    return a;
  }
  
  public void a(JR paramJR, String paramString)
  {
    a = new bw(bs.b(), paramString, a, g, new Ic().a(b));
    ((bz)d).a(paramJR);
    a(b);
  }
}

/* Location:
 * Qualified Name:     by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */