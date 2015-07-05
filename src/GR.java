import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

final class gr
  implements ServiceConnection
{
  gr(gq paramgq) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    gf.c("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        gf.c("bound to service");
        gq.a(a, hN.a(paramIBinder));
        gq.a(a);
        return;
      }
    }
    catch (RemoteException paramComponentName) {}
    try
    {
      gq.b(a).unbindService(this);
      gq.a(a, null);
      gq.c(a).a(2, null);
      return;
    }
    catch (IllegalArgumentException paramComponentName)
    {
      for (;;) {}
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    gf.c("service disconnected: " + paramComponentName);
    gq.a(a, null);
    gq.d(a).e();
  }
}

/* Location:
 * Qualified Name:     gr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */