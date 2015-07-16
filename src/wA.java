import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.nispok.snackbar.Snackbar;

public class wA
  implements Animation.AnimationListener
{
  public wA(Snackbar paramSnackbar) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.post(new wB(this));
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     wA
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */