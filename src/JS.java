import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class js
  extends kf
{
  private Handler a;
  
  js(jZ paramjZ, Looper paramLooper)
  {
    if (paramLooper == null) {}
    for (paramjZ = new jr(paramjZ);; paramjZ = new jr(paramjZ, paramLooper))
    {
      a = paramjZ;
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
 * Qualified Name:     js
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */