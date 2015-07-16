import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public class ja
  extends ia<jk>
{
  protected final jt<jk> d = new jb(this);
  private final String e;
  
  public ja(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
    e = paramString;
  }
  
  protected String a()
  {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }
  
  protected void a(ir paramir, id paramid)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("client_name", e);
    paramir.e(paramid, 6587000, d().getPackageName(), localBundle);
  }
  
  protected String b()
  {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }
  
  protected jk c(IBinder paramIBinder)
  {
    return jl.a(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     ja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */