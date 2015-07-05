import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class ih
  implements ServiceConnection
{
  public ih(id paramid) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    a.b(paramIBinder);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    a.a.sendMessage(a.a.obtainMessage(4, Integer.valueOf(1)));
  }
}

/* Location:
 * Qualified Name:     ih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */