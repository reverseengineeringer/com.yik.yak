import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.maps.GoogleMapOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class kq
  extends ho<ko>
{
  protected hA<ko> a;
  private final ViewGroup b;
  private final Context c;
  private final GoogleMapOptions d;
  private final List<ks> e = new ArrayList();
  
  public kq(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    b = paramViewGroup;
    c = paramContext;
    d = paramGoogleMapOptions;
  }
  
  protected void a(hA<ko> paramhA)
  {
    a = paramhA;
    g();
  }
  
  public void g()
  {
    if ((a != null) && (a() == null)) {}
    try
    {
      Object localObject = mF.a(c).a(hz.a(c), d);
      a.a(new ko(b, (kX)localObject));
      localObject = e.iterator();
      while (((Iterator)localObject).hasNext())
      {
        ks localks = (ks)((Iterator)localObject).next();
        ((ko)a()).a(localks);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
      e.clear();
      return;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     kq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */