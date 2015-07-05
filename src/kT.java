import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.maps.GoogleMapOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class kt
  extends hr<kr>
{
  protected hD<kr> a;
  private final ViewGroup b;
  private final Context c;
  private final GoogleMapOptions d;
  private final List<kv> e = new ArrayList();
  
  public kt(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    b = paramViewGroup;
    c = paramContext;
    d = paramGoogleMapOptions;
  }
  
  protected void a(hD<kr> paramhD)
  {
    a = paramhD;
    g();
  }
  
  public void g()
  {
    if ((a != null) && (a() == null)) {}
    try
    {
      Object localObject = mC.a(c).a(hC.a(c), d);
      a.a(new kr(b, (kU)localObject));
      localObject = e.iterator();
      while (((Iterator)localObject).hasNext())
      {
        kv localkv = (kv)((Iterator)localObject).next();
        ((kr)a()).a(localkv);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mI(localRemoteException);
      e.clear();
      return;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */