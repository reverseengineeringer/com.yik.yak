import android.app.Activity;
import android.app.Fragment;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class kq
  extends hr<ko>
{
  protected hD<ko> a;
  private final Fragment b;
  private Activity c;
  private final List<kv> d = new ArrayList();
  
  public kq(Fragment paramFragment)
  {
    b = paramFragment;
  }
  
  private void a(Activity paramActivity)
  {
    c = paramActivity;
    g();
  }
  
  protected void a(hD<ko> paramhD)
  {
    a = paramhD;
    g();
  }
  
  public void g()
  {
    if ((c != null) && (a != null) && (a() == null)) {}
    try
    {
      ku.a(c);
      Object localObject = mC.a(c).b(hC.a(c));
      a.a(new ko(b, (kR)localObject));
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext())
      {
        kv localkv = (kv)((Iterator)localObject).next();
        ((ko)a()).a(localkv);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mI(localRemoteException);
      d.clear();
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