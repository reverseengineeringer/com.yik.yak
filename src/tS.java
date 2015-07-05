import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.mixpanel.android.surveys.CardCarouselLayout;

public class ts
  implements Animation.AnimationListener
{
  public ts(CardCarouselLayout paramCardCarouselLayout, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.setVisibility(8);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     ts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */