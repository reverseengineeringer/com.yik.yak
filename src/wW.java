import android.view.View;
import com.nispok.snackbar.Snackbar;

public class ww
  implements wL
{
  public ww(Snackbar paramSnackbar) {}
  
  public void a(View paramView, Object paramObject)
  {
    if (paramView != null) {
      Snackbar.b(a, false);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (Snackbar.f(a)) {
      return;
    }
    if (paramBoolean)
    {
      a.removeCallbacks(Snackbar.g(a));
      Snackbar.a(a, System.currentTimeMillis());
      return;
    }
    Snackbar.b(a, Snackbar.h(a) - (Snackbar.i(a) - Snackbar.j(a)));
    Snackbar.c(a, Snackbar.h(a));
  }
  
  public boolean a(Object paramObject)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     ww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */