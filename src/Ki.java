import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.MarkerOptions;

public final class ki
{
  private final kO a;
  private kH b;
  
  public ki(kO paramkO)
  {
    a = ((kO)iB.a(paramkO));
  }
  
  public kO a()
  {
    return a;
  }
  
  public final mK a(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = a.a(paramMarkerOptions);
      if (paramMarkerOptions != null)
      {
        paramMarkerOptions = new mK(paramMarkerOptions);
        return paramMarkerOptions;
      }
      return null;
    }
    catch (RemoteException paramMarkerOptions)
    {
      throw new mL(paramMarkerOptions);
    }
  }
  
  public final void a(kg paramkg)
  {
    try
    {
      a.a(paramkg.a());
      return;
    }
    catch (RemoteException paramkg)
    {
      throw new mL(paramkg);
    }
  }
  
  public final void a(kk paramkk)
  {
    if (paramkk == null) {}
    try
    {
      a.a(null);
      return;
    }
    catch (RemoteException paramkk)
    {
      throw new mL(paramkk);
    }
    a.a(new kj(this, paramkk));
  }
  
  public final CameraPosition b()
  {
    try
    {
      CameraPosition localCameraPosition = a.a();
      return localCameraPosition;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
    }
  }
  
  public final void c()
  {
    try
    {
      a.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
    }
  }
  
  public final kH d()
  {
    try
    {
      if (b == null) {
        b = new kH(a.k());
      }
      kH localkH = b;
      return localkH;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mL(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     ki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */