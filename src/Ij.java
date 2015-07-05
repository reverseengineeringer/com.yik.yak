import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import java.util.ArrayList;
import java.util.Iterator;

public final class ij
{
  final ArrayList<GoogleApiClient.ConnectionCallbacks> a = new ArrayList();
  private final il b;
  private final ArrayList<GoogleApiClient.ConnectionCallbacks> c = new ArrayList();
  private boolean d = false;
  private final ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> e = new ArrayList();
  private final Handler f;
  
  public ij(Context paramContext, Looper paramLooper, il paramil)
  {
    b = paramil;
    f = new ik(this, paramLooper);
  }
  
  protected void a()
  {
    synchronized (c)
    {
      a(b.fX());
      return;
    }
  }
  
  public void a(int paramInt)
  {
    f.removeMessages(1);
    synchronized (c)
    {
      d = true;
      Iterator localIterator = new ArrayList(c).iterator();
      GoogleApiClient.ConnectionCallbacks localConnectionCallbacks;
      do
      {
        if (localIterator.hasNext())
        {
          localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator.next();
          if (b.gN()) {}
        }
        else
        {
          d = false;
          return;
        }
      } while (!c.contains(localConnectionCallbacks));
      localConnectionCallbacks.onConnectionSuspended(paramInt);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (c)
      {
        if (!d)
        {
          bool1 = true;
          iE.a(bool1);
          f.removeMessages(1);
          d = true;
          if (a.size() != 0) {
            break label165;
          }
          bool1 = bool2;
          iE.a(bool1);
          Iterator localIterator = new ArrayList(c).iterator();
          GoogleApiClient.ConnectionCallbacks localConnectionCallbacks;
          if (localIterator.hasNext())
          {
            localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator.next();
            if ((b.gN()) && (b.isConnected())) {}
          }
          else
          {
            a.clear();
            d = false;
            return;
          }
          if (a.contains(localConnectionCallbacks)) {
            continue;
          }
          localConnectionCallbacks.onConnected(paramBundle);
        }
      }
      boolean bool1 = false;
      continue;
      label165:
      bool1 = false;
    }
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    f.removeMessages(1);
    synchronized (e)
    {
      Iterator localIterator = new ArrayList(e).iterator();
      while (localIterator.hasNext())
      {
        GooglePlayServicesClient.OnConnectionFailedListener localOnConnectionFailedListener = (GooglePlayServicesClient.OnConnectionFailedListener)localIterator.next();
        if (!b.gN()) {
          return;
        }
        if (e.contains(localOnConnectionFailedListener)) {
          localOnConnectionFailedListener.onConnectionFailed(paramConnectionResult);
        }
      }
    }
  }
  
  public void a(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    iE.a(paramOnConnectionFailedListener);
    synchronized (e)
    {
      if (e.contains(paramOnConnectionFailedListener))
      {
        new StringBuilder().append("registerConnectionFailedListener(): listener ").append(paramOnConnectionFailedListener).append(" is already registered").toString();
        return;
      }
      e.add(paramOnConnectionFailedListener);
    }
  }
  
  public void a(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    iE.a(paramConnectionCallbacks);
    synchronized (c)
    {
      if (c.contains(paramConnectionCallbacks))
      {
        new StringBuilder().append("registerConnectionCallbacks(): listener ").append(paramConnectionCallbacks).append(" is already registered").toString();
        if (b.isConnected()) {
          f.sendMessage(f.obtainMessage(1, paramConnectionCallbacks));
        }
        return;
      }
      c.add(paramConnectionCallbacks);
    }
  }
  
  public boolean b(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    iE.a(paramOnConnectionFailedListener);
    synchronized (e)
    {
      boolean bool = e.contains(paramOnConnectionFailedListener);
      return bool;
    }
  }
  
  public boolean b(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    iE.a(paramConnectionCallbacks);
    synchronized (c)
    {
      boolean bool = c.contains(paramConnectionCallbacks);
      return bool;
    }
  }
  
  public void c(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    iE.a(paramOnConnectionFailedListener);
    synchronized (e)
    {
      if ((e != null) && (!e.remove(paramOnConnectionFailedListener))) {
        new StringBuilder().append("unregisterConnectionFailedListener(): listener ").append(paramOnConnectionFailedListener).append(" not found").toString();
      }
      return;
    }
  }
  
  public void c(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    iE.a(paramConnectionCallbacks);
    synchronized (c)
    {
      if (c != null)
      {
        if (c.remove(paramConnectionCallbacks)) {
          break label58;
        }
        new StringBuilder().append("unregisterConnectionCallbacks(): listener ").append(paramConnectionCallbacks).append(" not found").toString();
      }
      label58:
      while (!d) {
        return;
      }
      a.add(paramConnectionCallbacks);
    }
  }
}

/* Location:
 * Qualified Name:     ij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */