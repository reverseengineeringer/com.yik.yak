import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class jp
  extends kc
{
  private Handler a;
  
  jp(jW paramjW, Looper paramLooper)
  {
    if (paramLooper == null) {}
    for (paramjW = new jo(paramjW);; paramjW = new jo(paramjW, paramLooper))
    {
      a = paramjW;
      return;
    }
  }
  
  public void a(Location paramLocation)
  {
    if (a == null) {
      return;
    }
    Message localMessage = Message.obtain();
    what = 1;
    obj = paramLocation;
    a.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     jp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */