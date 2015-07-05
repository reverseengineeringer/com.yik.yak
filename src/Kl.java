import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.MarkerOptions;

public final class kl
{
  private final kL a;
  private kE b;
  
  public kl(kL paramkL)
  {
    a = ((kL)iE.a(paramkL));
  }
  
  public kL a()
  {
    return a;
  }
  
  public final mH a(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = a.a(paramMarkerOptions);
      if (paramMarkerOptions != null)
      {
        paramMarkerOptions = new mH(paramMarkerOptions);
        return paramMarkerOptions;
      }
      return null;
    }
    catch (RemoteException paramMarkerOptions)
    {
      throw new mI(paramMarkerOptions);
    }
  }
  
  public final void a(kj paramkj)
  {
    try
    {
      a.a(paramkj.a());
      return;
    }
    catch (RemoteException paramkj)
    {
      throw new mI(paramkj);
    }
  }
  
  public final void a(kn paramkn)
  {
    if (paramkn == null) {}
    try
    {
      a.a(null);
      return;
    }
    catch (RemoteException paramkn)
    {
      throw new mI(paramkn);
    }
    a.a(new km(this, paramkn));
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
      throw new mI(localRemoteException);
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
      throw new mI(localRemoteException);
    }
  }
  
  public final kE d()
  {
    try
    {
      if (b == null) {
        b = new kE(a.k());
      }
      kE localkE = b;
      return localkE;
    }
    catch (RemoteException localRemoteException)
    {
      throw new mI(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     kl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */