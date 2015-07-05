import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.nispok.snackbar.Snackbar;

public class wr
  implements Animation.AnimationListener
{
  public wr(Snackbar paramSnackbar) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.post(new ws(this));
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     wr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */