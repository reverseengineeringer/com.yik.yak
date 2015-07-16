import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.internal.ha;
import java.util.List;
import java.util.Map;

class gn
  implements gm
{
  private ServiceConnection a;
  private gp b;
  private gq c;
  private Context d;
  private hJ e;
  
  public gn(Context paramContext, gp paramgp, gq paramgq)
  {
    d = paramContext;
    if (paramgp == null) {
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    }
    b = paramgp;
    if (paramgq == null) {
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    }
    c = paramgq;
  }
  
  private hJ f()
  {
    d();
    return e;
  }
  
  private void g()
  {
    h();
  }
  
  private void h()
  {
    b.d();
  }
  
  public void a()
  {
    try
    {
      f().a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gc.a("clear hits failed: " + localRemoteException);
    }
  }
  
  public void a(Map<String, String> paramMap, long paramLong, String paramString, List<ha> paramList)
  {
    try
    {
      f().a(paramMap, paramLong, paramString, paramList);
      return;
    }
    catch (RemoteException paramMap)
    {
      gc.a("sendHit failed: " + paramMap);
    }
  }
  
  public void b()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
    localIntent.putExtra("app_package_name", d.getPackageName());
    if (a != null) {
      gc.a("Calling connect() while still connected, missing disconnect().");
    }
    boolean bool;
    do
    {
      return;
      a = new go(this);
      bool = d.bindService(localIntent, a, 129);
      gc.c("connect: bindService returned " + bool + " for " + localIntent);
    } while (bool);
    a = null;
    c.a(1, null);
  }
  
  public void c()
  {
    e = null;
    if (a != null) {}
    try
    {
      d.unbindService(a);
      a = null;
      b.e();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  protected void d()
  {
    if (!e()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public boolean e()
  {
    return e != null;
  }
}

/* Location:
 * Qualified Name:     gn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */