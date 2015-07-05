import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class jr
  extends Handler
{
  private final jZ a;
  
  public jr(jZ paramjZ)
  {
    a = paramjZ;
  }
  
  public jr(jZ paramjZ, Looper paramLooper)
  {
    super(paramLooper);
    a = paramjZ;
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    }
    paramMessage = new Location((Location)obj);
    a.onLocationChanged(paramMessage);
  }
}

/* Location:
 * Qualified Name:     jr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */