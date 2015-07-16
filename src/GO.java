import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

final class go
  implements ServiceConnection
{
  go(gn paramgn) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    gc.c("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        gc.c("bound to service");
        gn.a(a, hK.a(paramIBinder));
        gn.a(a);
        return;
      }
    }
    catch (RemoteException paramComponentName) {}
    try
    {
      gn.b(a).unbindService(this);
      gn.a(a, null);
      gn.c(a).a(2, null);
      return;
    }
    catch (IllegalArgumentException paramComponentName)
    {
      for (;;) {}
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    gc.c("service disconnected: " + paramComponentName);
    gn.a(a, null);
    gn.d(a).e();
  }
}

/* Location:
 * Qualified Name:     go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */