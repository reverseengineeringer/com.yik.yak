import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.Api.a;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.util.ArrayList;

public abstract class id<T extends IInterface>
  implements Api.a, il
{
  public static final String[] c = { "service_esmobile", "service_googleme" };
  final Handler a;
  boolean b = false;
  private final Context d;
  private final Looper e;
  private final Object f = new Object();
  private T g;
  private final ArrayList<id<T>.if<?>> h = new ArrayList();
  private id<T>.ih i;
  private int j = 1;
  private final String[] k;
  private final ij l;
  
  protected id(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String... paramVarArgs)
  {
    d = ((Context)iE.a(paramContext));
    e = ((Looper)iE.a(paramLooper, "Looper must not be null"));
    l = new ij(paramContext, paramLooper, this);
    a = new ie(this, paramLooper);
    k = paramVarArgs;
    a((GoogleApiClient.ConnectionCallbacks)iE.a(paramConnectionCallbacks));
    a((GoogleApiClient.OnConnectionFailedListener)iE.a(paramOnConnectionFailedListener));
  }
  
  private void a(int paramInt, T paramT)
  {
    boolean bool = true;
    int m;
    int n;
    if (paramInt == 3)
    {
      m = 1;
      if (paramT == null) {
        break label62;
      }
      n = 1;
      label17:
      if (m != n) {
        break label68;
      }
    }
    for (;;)
    {
      iE.b(bool);
      synchronized (f)
      {
        j = paramInt;
        g = paramT;
        return;
      }
      m = 0;
      break;
      label62:
      n = 0;
      break label17;
      label68:
      bool = false;
    }
  }
  
  private boolean a(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (f)
    {
      if (j != paramInt1) {
        return false;
      }
      a(paramInt2, paramT);
      return true;
    }
  }
  
  protected abstract T a(IBinder paramIBinder);
  
  protected abstract String a();
  
  public void a(int paramInt)
  {
    a.sendMessage(a.obtainMessage(4, Integer.valueOf(paramInt)));
  }
  
  protected void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    a.sendMessage(a.obtainMessage(1, new ii(this, paramInt, paramIBinder, paramBundle)));
  }
  
  public void a(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    l.a(paramConnectionCallbacks);
  }
  
  public void a(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    l.a(paramOnConnectionFailedListener);
  }
  
  protected abstract void a(iu paramiu, ig paramig);
  
  protected abstract String b();
  
  protected final void b(IBinder paramIBinder)
  {
    try
    {
      a(iv.a(paramIBinder), new ig(this));
      return;
    }
    catch (DeadObjectException paramIBinder)
    {
      a(1);
      return;
    }
    catch (RemoteException paramIBinder) {}
  }
  
  public boolean c()
  {
    for (;;)
    {
      synchronized (f)
      {
        if (j == 2)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void connect()
  {
    b = true;
    a(2, null);
    int m = GooglePlayServicesUtil.isGooglePlayServicesAvailable(d);
    if (m != 0)
    {
      a(1, null);
      a.sendMessage(a.obtainMessage(3, Integer.valueOf(m)));
    }
    do
    {
      return;
      if (i != null)
      {
        new StringBuilder().append("Calling connect() while still connected, missing disconnect() for ").append(a()).toString();
        im.a(d).b(a(), i);
      }
      i = new ih(this);
    } while (im.a(d).a(a(), i));
    new StringBuilder().append("unable to connect to service: ").append(a()).toString();
    a.sendMessage(a.obtainMessage(3, Integer.valueOf(9)));
  }
  
  public final Context d()
  {
    return d;
  }
  
  public void disconnect()
  {
    b = false;
    synchronized (h)
    {
      int n = h.size();
      int m = 0;
      while (m < n)
      {
        ((if)h.get(m)).c();
        m += 1;
      }
      h.clear();
      a(1, null);
      if (i != null)
      {
        im.a(d).b(a(), i);
        i = null;
      }
      return;
    }
  }
  
  protected final void e()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public final T f()
  {
    synchronized (f)
    {
      if (j == 4) {
        throw new DeadObjectException();
      }
    }
    e();
    if (g != null) {}
    for (boolean bool = true;; bool = false)
    {
      iE.a(bool, "Client is connected but service is null");
      IInterface localIInterface = g;
      return localIInterface;
    }
  }
  
  public Bundle fX()
  {
    return null;
  }
  
  public boolean gN()
  {
    return b;
  }
  
  public boolean isConnected()
  {
    for (;;)
    {
      synchronized (f)
      {
        if (j == 3)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     id
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */