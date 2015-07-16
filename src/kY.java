import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ky
  implements lq
{
  private final ViewGroup a;
  private final lj b;
  private View c;
  
  public ky(ViewGroup paramViewGroup, lj paramlj)
  {
    b = ((lj)iB.a(paramlj));
    a = ((ViewGroup)iB.a(paramViewGroup));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
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
    throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
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
  
  public void a(kt paramkt)
  {
    try
    {
      b.a(new kz(this, paramkt));
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
    throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
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
 * Qualified Name:     ky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */