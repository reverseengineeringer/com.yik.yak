import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.GoogleMapOptions;

public class ko
  implements lm
{
  private final Fragment a;
  private final kR b;
  
  public ko(Fragment paramFragment, kR paramkR)
  {
    b = ((kR)iE.a(paramkR));
    a = ((Fragment)iE.a(paramFragment));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = b.a(hC.a(paramLayoutInflater), hC.a(paramViewGroup), paramBundle);
      return (View)hC.a(paramLayoutInflater);
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new mI(paramLayoutInflater);
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
      throw new mI(localRemoteException);
    }
  }
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    paramBundle1 = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
    try
    {
      b.a(hC.a(paramActivity), paramBundle1, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new mI(paramActivity);
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
        mB.a(localBundle, "MapOptions", paramBundle.getParcelable("MapOptions"));
      }
      b.a(localBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new mI(paramBundle);
    }
  }
  
  public void a(kv paramkv)
  {
    try
    {
      b.a(new kp(this, paramkv));
      return;
    }
    catch (RemoteException paramkv)
    {
      throw new mI(paramkv);
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
      throw new mI(localRemoteException);
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
      throw new mI(paramBundle);
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
      throw new mI(localRemoteException);
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
      throw new mI(localRemoteException);
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
      throw new mI(localRemoteException);
    }
  }
  
  public kR f()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */