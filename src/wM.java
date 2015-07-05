import android.view.View;
import android.view.View.OnClickListener;
import com.nispok.snackbar.Snackbar;

public class wm
  implements View.OnClickListener
{
  public wm(Snackbar paramSnackbar) {}
  
  public void onClick(View paramView)
  {
    if ((Snackbar.a(a) != null) && (!Snackbar.b(a)) && ((!Snackbar.c(a)) || (Snackbar.d(a))))
    {
      Snackbar.a(a).a(a);
      Snackbar.a(a, true);
    }
    if (Snackbar.e(a)) {
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     wm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */