import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ko
  implements lp
{
  private final ViewGroup a;
  private final kX b;
  private View c;
  
  public ko(ViewGroup paramViewGroup, kX paramkX)
  {
    b = ((kX)iB.a(paramkX));
    a = ((ViewGroup)iB.a(paramViewGroup));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
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
    throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
  }
  
  public void a(Bundle paramBundle)
  {
    try
    {
      b.a(paramBundle);
      c = ((View)hz.a(b.f()));
      a.removeAllViews();
      a.addView(c);
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
      b.a(new kp(this, paramks));
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
    throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
  }
  
  public void d()
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
  
  public void e()
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
}

/* Location:
 * Qualified Name:     ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */