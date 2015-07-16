import android.os.IInterface;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public abstract interface ld
  extends IInterface
{
  public abstract StreetViewPanoramaOrientation a(hw paramhw);
  
  public abstract hw a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation);
  
  public abstract void a(LatLng paramLatLng);
  
  public abstract void a(LatLng paramLatLng, int paramInt);
  
  public abstract void a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, long paramLong);
  
  public abstract void a(String paramString);
  
  public abstract void a(mp parammp);
  
  public abstract void a(ms paramms);
  
  public abstract void a(mv parammv);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract boolean a();
  
  public abstract void b(boolean paramBoolean);
  
  public abstract boolean b();
  
  public abstract void c(boolean paramBoolean);
  
  public abstract boolean c();
  
  public abstract void d(boolean paramBoolean);
  
  public abstract boolean d();
  
  public abstract StreetViewPanoramaCamera e();
  
  public abstract StreetViewPanoramaLocation f();
}

/* Location:
 * Qualified Name:     ld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */