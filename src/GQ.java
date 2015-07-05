import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.internal.ha;
import java.util.List;
import java.util.Map;

class gq
  implements gp
{
  private ServiceConnection a;
  private gs b;
  private gt c;
  private Context d;
  private hM e;
  
  public gq(Context paramContext, gs paramgs, gt paramgt)
  {
    d = paramContext;
    if (paramgs == null) {
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    }
    b = paramgs;
    if (paramgt == null) {
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    }
    c = paramgt;
  }
  
  private hM f()
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
      gf.a("clear hits failed: " + localRemoteException);
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
      gf.a("sendHit failed: " + paramMap);
    }
  }
  
  public void b()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
    localIntent.putExtra("app_package_name", d.getPackageName());
    if (a != null) {
      gf.a("Calling connect() while still connected, missing disconnect().");
    }
    boolean bool;
    do
    {
      return;
      a = new gr(this);
      bool = d.bindService(localIntent, a, 129);
      gf.c("connect: bindService returned " + bool + " for " + localIntent);
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
 * Qualified Name:     gq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */