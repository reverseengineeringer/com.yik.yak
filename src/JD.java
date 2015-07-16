import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;

public class jd
  implements jU
{
  public Location a(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient = jX.a(paramGoogleApiClient);
    try
    {
      paramGoogleApiClient = paramGoogleApiClient.g();
      return paramGoogleApiClient;
    }
    catch (Exception paramGoogleApiClient) {}
    return null;
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, jW paramjW)
  {
    return paramGoogleApiClient.b(new je(this, paramGoogleApiClient, paramLocationRequest, paramjW));
  }
}

/* Location:
 * Qualified Name:     jd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */