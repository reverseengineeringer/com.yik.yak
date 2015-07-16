import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class kv
  implements lq
{
  private final Fragment a;
  private final lg b;
  
  public kv(Fragment paramFragment, lg paramlg)
  {
    b = ((lg)iB.a(paramlg));
    a = ((Fragment)iB.a(paramFragment));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = b.a(hz.a(paramLayoutInflater), hz.a(paramViewGroup), paramBundle);
      return (View)hz.a(paramLayoutInflater);
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new mL(paramLayoutInflater);
    }
  }
  
  public void a()
  {
    try
    {
      b.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
    }
  }
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    try
    {
      b.a(hz.a(paramActivity), null, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new mL(paramActivity);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = new Bundle();
      paramBundle = a.getArguments();
      if ((paramBundle != null) && (paramBundle.containsKey("StreetViewPanoramaOptions"))) {
        mE.a(localBundle, "StreetViewPanoramaOptions", paramBundle.getParcelable("StreetViewPanoramaOptions"));
      }
      b.a(localBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new mL(paramBundle);
    }
  }
  
  public void a(kt paramkt)
  {
    try
    {
      b.a(new kw(this, paramkt));
      return;
    }
    catch (RemoteException paramkt)
    {
      throw new mL(paramkt);
    }
  }
  
  public void b()
  {
    try
    {
      b.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
    }
  }
  
  public void b(Bundle paramBundle)
  {
    try
    {
      b.b(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new mL(paramBundle);
    }
  }
  
  public void c()
  {
    try
    {
      b.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
    }
  }
  
  public void d()
  {
    try
    {
      b.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
    }
  }
  
  public void e()
  {
    try
    {
      b.f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     kv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */