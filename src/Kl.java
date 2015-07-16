import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.GoogleMapOptions;

public class kl
  implements lp
{
  private final Fragment a;
  private final kU b;
  
  public kl(Fragment paramFragment, kU paramkU)
  {
    b = ((kU)iB.a(paramkU));
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
    paramBundle1 = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
    try
    {
      b.a(hz.a(paramActivity), paramBundle1, paramBundle2);
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
      if ((paramBundle != null) && (paramBundle.containsKey("MapOptions"))) {
        mE.a(localBundle, "MapOptions", paramBundle.getParcelable("MapOptions"));
      }
      b.a(localBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new mL(paramBundle);
    }
  }
  
  public void a(ks paramks)
  {
    try
    {
      b.a(new km(this, paramks));
      return;
    }
    catch (RemoteException paramks)
    {
      throw new mL(paramks);
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
  
  public kU f()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     kl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */