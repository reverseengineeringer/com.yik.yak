import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;

public class jg
  implements jX
{
  public Location a(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient = ka.a(paramGoogleApiClient);
    try
    {
      paramGoogleApiClient = paramGoogleApiClient.g();
      return paramGoogleApiClient;
    }
    catch (Exception paramGoogleApiClient) {}
    return null;
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, jZ paramjZ)
  {
    return paramGoogleApiClient.b(new jh(this, paramGoogleApiClient, paramLocationRequest, paramjZ));
  }
}

/* Location:
 * Qualified Name:     jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */