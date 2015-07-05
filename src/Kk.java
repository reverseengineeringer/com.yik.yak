import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

public final class kk
{
  private static kI a;
  
  private static kI a()
  {
    return (kI)iE.a(a, "CameraUpdateFactory is not initialized");
  }
  
  public static kj a(LatLng paramLatLng, float paramFloat)
  {
    try
    {
      paramLatLng = new kj(a().a(paramLatLng, paramFloat));
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      throw new mI(paramLatLng);
    }
  }
  
  public static void a(kI paramkI)
  {
    a = (kI)iE.a(paramkI);
  }
}

/* Location:
 * Qualified Name:     kk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */