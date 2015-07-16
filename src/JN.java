import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class jn
{
  private final jt<jk> a;
  private final Context b;
  private ContentProviderClient c = null;
  private boolean d = false;
  private HashMap<jW, jp> e = new HashMap();
  
  public jn(Context paramContext, jt<jk> paramjt)
  {
    b = paramContext;
    a = paramjt;
  }
  
  private jp a(jW paramjW, Looper paramLooper)
  {
    if (paramLooper == null) {
      iB.a(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
    }
    synchronized (e)
    {
      jp localjp2 = (jp)e.get(paramjW);
      jp localjp1 = localjp2;
      if (localjp2 == null) {
        localjp1 = new jp(paramjW, paramLooper);
      }
      e.put(paramjW, localjp1);
      return localjp1;
    }
  }
  
  public Location a()
  {
    a.a();
    try
    {
      Location localLocation = ((jk)a.c()).a(b.getPackageName());
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void a(LocationRequest paramLocationRequest, jW paramjW, Looper paramLooper)
  {
    a.a();
    paramjW = a(paramjW, paramLooper);
    ((jk)a.c()).a(paramLocationRequest, paramjW);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a();
    ((jk)a.c()).a(paramBoolean);
    d = paramBoolean;
  }
  
  public void b()
  {
    try
    {
      synchronized (e)
      {
        Iterator localIterator = e.values().iterator();
        while (localIterator.hasNext())
        {
          jp localjp = (jp)localIterator.next();
          if (localjp != null) {
            ((jk)a.c()).a(localjp);
          }
        }
      }
      e.clear();
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void c()
  {
    if (d) {}
    try
    {
      a(false);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     jn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */