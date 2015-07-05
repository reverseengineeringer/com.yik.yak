import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Iterator;

public class io
  implements ServiceConnection
{
  public io(in paramin) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (im.a(a.a))
    {
      in.a(a, paramIBinder);
      in.a(a, paramComponentName);
      Iterator localIterator = in.a(a).iterator();
      if (localIterator.hasNext()) {
        ((ih)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
      }
    }
    in.a(a, 1);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (im.a(a.a))
    {
      in.a(a, null);
      in.a(a, paramComponentName);
      Iterator localIterator = in.a(a).iterator();
      if (localIterator.hasNext()) {
        ((ih)localIterator.next()).onServiceDisconnected(paramComponentName);
      }
    }
    in.a(a, 2);
  }
}

/* Location:
 * Qualified Name:     io
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */