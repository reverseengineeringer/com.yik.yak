import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.nispok.snackbar.Snackbar;

public class wo
  implements ViewTreeObserver.OnPreDrawListener
{
  public wo(Snackbar paramSnackbar) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if ((Snackbar.k(a) != null) && (!Snackbar.l(a))) {
      Snackbar.c(a, false);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     wo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */