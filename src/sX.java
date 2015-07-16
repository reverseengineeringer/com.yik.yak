import android.app.Activity;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.mixpanel.android.mpmetrics.InAppFragment;
import com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.InAppNotificationState;

public class sx
  implements Runnable
{
  public sx(InAppFragment paramInAppFragment) {}
  
  public void run()
  {
    InAppFragment.b(a).setVisibility(0);
    InAppFragment.b(a).setBackgroundColor(InAppFragment.c(a).b());
    InAppFragment.b(a).setOnTouchListener(new sy(this));
    ImageView localImageView = (ImageView)InAppFragment.b(a).findViewById(rk.com_mixpanel_android_notification_image);
    float f = TypedValue.applyDimension(1, 75.0F, InAppFragment.e(a).getResources().getDisplayMetrics());
    Object localObject = new TranslateAnimation(0.0F, 0.0F, f, 0.0F);
    ((TranslateAnimation)localObject).setInterpolator(new DecelerateInterpolator());
    ((TranslateAnimation)localObject).setDuration(200L);
    InAppFragment.b(a).startAnimation((Animation)localObject);
    localObject = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, f / 2.0F, f / 2.0F);
    ((ScaleAnimation)localObject).setInterpolator(new sA(a));
    ((ScaleAnimation)localObject).setDuration(400L);
    ((ScaleAnimation)localObject).setStartOffset(200L);
    localImageView.startAnimation((Animation)localObject);
  }
}

/* Location:
 * Qualified Name:     sx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */