import android.app.Activity;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.InAppNotificationState;

class su
  implements Runnable
{
  su(ss paramss) {}
  
  public void run()
  {
    ss.b(a).setVisibility(0);
    ss.b(a).setBackgroundColor(ss.c(a).b());
    ss.b(a).setOnTouchListener(new sv(this));
    ImageView localImageView = (ImageView)ss.b(a).findViewById(rh.com_mixpanel_android_notification_image);
    float f = TypedValue.applyDimension(1, 75.0F, ss.e(a).getResources().getDisplayMetrics());
    Object localObject = new TranslateAnimation(0.0F, 0.0F, f, 0.0F);
    ((TranslateAnimation)localObject).setInterpolator(new DecelerateInterpolator());
    ((TranslateAnimation)localObject).setDuration(200L);
    ss.b(a).startAnimation((Animation)localObject);
    localObject = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, f / 2.0F, f / 2.0F);
    ((ScaleAnimation)localObject).setInterpolator(new sx(a));
    ((ScaleAnimation)localObject).setDuration(400L);
    ((ScaleAnimation)localObject).setStartOffset(200L);
    localImageView.startAnimation((Animation)localObject);
  }
}

/* Location:
 * Qualified Name:     su
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */