import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import com.mixpanel.android.mpmetrics.UpdateDisplayState.DisplayState.InAppNotificationState;

class sw
  implements GestureDetector.OnGestureListener
{
  sw(ss paramss) {}
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 > 0.0F) {
      ss.a(a);
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
    paramMotionEvent = ss.c(a).c();
    Object localObject = paramMotionEvent.j();
    if ((localObject != null) && (((String)localObject).length() > 0)) {}
    try
    {
      localObject = Uri.parse((String)localObject);
      try
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", (Uri)localObject);
        ss.e(a).startActivity(localIntent);
        ss.f(a).getPeople().a("$campaign_open", paramMotionEvent);
        ss.a(a);
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
 * Qualified Name:     sw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */