import android.app.Activity;
import android.app.Fragment;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class kn
  extends ho<kl>
{
  protected hA<kl> a;
  private final Fragment b;
  private Activity c;
  private final List<ks> d = new ArrayList();
  
  public kn(Fragment paramFragment)
  {
    b = paramFragment;
  }
  
  private void a(Activity paramActivity)
  {
    c = paramActivity;
    g();
  }
  
  protected void a(hA<kl> paramhA)
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
      Object localObject = mF.a(c).b(hz.a(c));
      a.a(new kl(b, (kU)localObject));
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext())
      {
        ks localks = (ks)((Iterator)localObject).next();
        ((kl)a()).a(localks);
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
 * Qualified Name:     kn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */