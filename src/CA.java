import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public final class ca
{
  private List<vk> a = new ArrayList();
  private bW b;
  private long c = 1000L;
  private long d = 0L;
  private Interpolator e;
  private View f;
  
  private ca(bX parambX)
  {
    b = parambX.a();
  }
  
  public ca a(long paramLong)
  {
    c = paramLong;
    return this;
  }
  
  public cb a(View paramView)
  {
    f = paramView;
    return new cb(bY.a(new bY(this, null)), f, null);
  }
}

/* Location:
 * Qualified Name:     ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */