import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.nispok.snackbar.Snackbar;

public class wp
  implements Animation.AnimationListener
{
  public wp(Snackbar paramSnackbar) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (Snackbar.k(a) != null) {
      Snackbar.c(a, false);
    }
    a.post(new wq(this));
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     wp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */