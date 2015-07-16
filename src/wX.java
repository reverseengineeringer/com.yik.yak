import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.nispok.snackbar.Snackbar;

public class wx
  implements ViewTreeObserver.OnPreDrawListener
{
  public wx(Snackbar paramSnackbar) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (Snackbar.k(a) != null) {
      if (!Snackbar.l(a)) {
        break label52;
      }
    }
    for (;;)
    {
      if (!Snackbar.m(a)) {
        Snackbar.c(a, false);
      }
      return true;
      label52:
      Snackbar.k(a).a(a);
    }
  }
}

/* Location:
 * Qualified Name:     wx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */