import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

public final class kh
{
  private static kL a;
  
  private static kL a()
  {
    return (kL)iB.a(a, "CameraUpdateFactory is not initialized");
  }
  
  public static kg a(LatLng paramLatLng, float paramFloat)
  {
    try
    {
      paramLatLng = new kg(a().a(paramLatLng, paramFloat));
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      throw new mL(paramLatLng);
    }
  }
  
  public static void a(kL paramkL)
  {
    a = (kL)iB.a(paramkL);
  }
}

/* Location:
 * Qualified Name:     kh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */