import android.view.View;
import android.view.animation.Interpolator;
import java.util.Iterator;
import java.util.List;

public class cc
{
  private ca a;
  private long b;
  private long c;
  private Interpolator d;
  private List<vb> e;
  private View f;
  
  private cc(ce paramce)
  {
    a = ce.a(paramce);
    b = ce.b(paramce);
    c = ce.c(paramce);
    d = ce.d(paramce);
    e = ce.e(paramce);
    f = ce.f(paramce);
  }
  
  private ca a()
  {
    a.a(b).a(d).b(c);
    if (e.size() > 0)
    {
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext())
      {
        vb localvb = (vb)localIterator.next();
        a.a(localvb);
      }
    }
    a.b(f);
    return a;
  }
  
  public static ce a(cb paramcb)
  {
    return new ce(paramcb, null);
  }
}

/* Location:
 * Qualified Name:     cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */