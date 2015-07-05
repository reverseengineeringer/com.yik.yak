import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public final class ce
{
  private List<vb> a = new ArrayList();
  private ca b;
  private long c = 1000L;
  private long d = 0L;
  private Interpolator e;
  private View f;
  
  private ce(cb paramcb)
  {
    b = paramcb.a();
  }
  
  public ce a(long paramLong)
  {
    c = paramLong;
    return this;
  }
  
  public cf a(View paramView)
  {
    f = paramView;
    return new cf(cc.a(new cc(this, null)), f, null);
  }
}

/* Location:
 * Qualified Name:     ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */