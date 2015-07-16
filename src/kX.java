import android.app.Activity;
import android.app.Fragment;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class kx
  extends ho<kv>
{
  protected hA<kv> a;
  private final Fragment b;
  private Activity c;
  private final List<kt> d = new ArrayList();
  
  public kx(Fragment paramFragment)
  {
    b = paramFragment;
  }
  
  private void a(Activity paramActivity)
  {
    c = paramActivity;
    g();
  }
  
  protected void a(hA<kv> paramhA)
  {
    a = paramhA;
    g();
  }
  
  public void g()
  {
    if ((c != null) && (a != null) && (a() == null)) {}
    try
    {
      kr.a(c);
      Object localObject = mF.a(c).c(hz.a(c));
      a.a(new kv(b, (lg)localObject));
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext())
      {
        kt localkt = (kt)((Iterator)localObject).next();
        ((kv)a()).a(localkt);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
      d.clear();
      return;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     kx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */