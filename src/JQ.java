import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class jq
{
  private final jw<jn> a;
  private final Context b;
  private ContentProviderClient c = null;
  private boolean d = false;
  private HashMap<jZ, js> e = new HashMap();
  
  public jq(Context paramContext, jw<jn> paramjw)
  {
    b = paramContext;
    a = paramjw;
  }
  
  private js a(jZ paramjZ, Looper paramLooper)
  {
    if (paramLooper == null) {
      iE.a(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
    }
    synchronized (e)
    {
      js localjs2 = (js)e.get(paramjZ);
      js localjs1 = localjs2;
      if (localjs2 == null) {
        localjs1 = new js(paramjZ, paramLooper);
      }
      e.put(paramjZ, localjs1);
      return localjs1;
    }
  }
  
  public Location a()
  {
    a.a();
    try
    {
      Location localLocation = ((jn)a.c()).a(b.getPackageName());
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void a(LocationRequest paramLocationRequest, jZ paramjZ, Looper paramLooper)
  {
    a.a();
    paramjZ = a(paramjZ, paramLooper);
    ((jn)a.c()).a(paramLocationRequest, paramjZ);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a();
    ((jn)a.c()).a(paramBoolean);
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
          js localjs = (js)localIterator.next();
          if (localjs != null) {
            ((jn)a.c()).a(localjs);
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
 * Qualified Name:     jq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */