import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.nispok.snackbar.Snackbar;

public class wy
  implements Animation.AnimationListener
{
  public wy(Snackbar paramSnackbar) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (Snackbar.k(a) != null) {
      Snackbar.c(a, false);
    }
    a.post(new wz(this));
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     wy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */