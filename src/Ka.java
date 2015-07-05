import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;

public class ka
{
  public static final Api<Api.ApiOptions.NoOptions> a = new Api(e, d, new Scope[0]);
  public static jX b = new jg();
  public static jY c = new jj();
  private static final Api.c<jt> d = new Api.c();
  private static final Api.b<jt, Api.ApiOptions.NoOptions> e = new kb();
  
  public static jt a(GoogleApiClient paramGoogleApiClient)
  {
    boolean bool2 = true;
    if (paramGoogleApiClient != null)
    {
      bool1 = true;
      iE.b(bool1, "GoogleApiClient parameter is required.");
      paramGoogleApiClient = (jt)paramGoogleApiClient.a(d);
      if (paramGoogleApiClient == null) {
        break label46;
      }
    }
    label46:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      iE.a(bool1, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
      return paramGoogleApiClient;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     ka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */