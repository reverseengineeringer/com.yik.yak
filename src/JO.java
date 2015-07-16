import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class jo
  extends Handler
{
  private final jW a;
  
  public jo(jW paramjW)
  {
    a = paramjW;
  }
  
  public jo(jW paramjW, Looper paramLooper)
  {
    super(paramLooper);
    a = paramjW;
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
 * Qualified Name:     jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */