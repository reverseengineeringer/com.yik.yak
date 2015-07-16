import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import com.mixpanel.android.mpmetrics.InAppFragment;
import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.InAppNotificationState;

public class sz
  implements GestureDetector.OnGestureListener
{
  public sz(InAppFragment paramInAppFragment) {}
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 > 0.0F) {
      InAppFragment.a(a);
    }
    return true;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {}
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    paramMotionEvent = InAppFragment.c(a).c();
    Object localObject = paramMotionEvent.k();
    if ((localObject != null) && (((String)localObject).length() > 0)) {}
    try
    {
      localObject = Uri.parse((String)localObject);
      try
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", (Uri)localObject);
        InAppFragment.e(a).startActivity(localIntent);
        InAppFragment.f(a).c().a("$campaign_open", paramMotionEvent);
        InAppFragment.a(a);
        return true;
      }
      catch (ActivityNotFoundException paramMotionEvent)
      {
        for (;;)
        {
          new StringBuilder().append("User doesn't have an activity for notification URI ").append(localObject).toString();
        }
      }
      return true;
    }
    catch (IllegalArgumentException paramMotionEvent) {}
  }
}

/* Location:
 * Qualified Name:     sz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */