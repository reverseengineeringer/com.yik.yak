import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.location.LocationRequest;

public class jq
  extends ja
{
  private final jn e = new jn(paramContext, d);
  private final iY f = iY.a(paramContext, paramString3, paramString4, d);
  private final hM g = hM.a(paramContext, d);
  
  public jq(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2, String paramString3)
  {
    this(paramContext, paramLooper, paramString1, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString2, paramString3, null);
  }
  
  public jq(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2, String paramString3, String paramString4)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString2);
  }
  
  public void a(LocationRequest paramLocationRequest, jW paramjW, Looper paramLooper)
  {
    synchronized (e)
    {
      e.a(paramLocationRequest, paramjW, paramLooper);
      return;
    }
  }
  
  public void disconnect()
  {
    synchronized (e)
    {
      boolean bool = isConnected();
      if (!bool) {}
    }
    try
    {
      e.b();
      e.c();
      super.disconnect();
      return;
      localObject = finally;
      throw ((Throwable)localObject);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public Location g()
  {
    return e.a();
  }
}

/* Location:
 * Qualified Name:     jq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */