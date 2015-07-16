import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class ie
  implements ServiceConnection
{
  public ie(ia paramia) {}
  
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
 * Qualified Name:     ie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */