import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Iterator;

public class il
  implements ServiceConnection
{
  public il(ik paramik) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (ij.a(a.a))
    {
      ik.a(a, paramIBinder);
      ik.a(a, paramComponentName);
      Iterator localIterator = ik.a(a).iterator();
      if (localIterator.hasNext()) {
        ((ie)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
      }
    }
    ik.a(a, 1);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (ij.a(a.a))
    {
      ik.a(a, null);
      ik.a(a, paramComponentName);
      Iterator localIterator = ik.a(a).iterator();
      if (localIterator.hasNext()) {
        ((ie)localIterator.next()).onServiceDisconnected(paramComponentName);
      }
    }
    ik.a(a, 2);
  }
}

/* Location:
 * Qualified Name:     il
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */