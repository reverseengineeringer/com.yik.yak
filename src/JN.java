import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.nl;
import com.google.android.gms.internal.nn;
import com.google.android.gms.internal.nq;
import com.google.android.gms.internal.ns;
import com.google.android.gms.internal.nu;
import com.google.android.gms.internal.nw;
import com.google.android.gms.internal.ny;
import com.google.android.gms.internal.oc;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.oh;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.e;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;

public abstract interface jn
  extends IInterface
{
  public abstract Location a();
  
  public abstract Location a(String paramString);
  
  public abstract void a(long paramLong, boolean paramBoolean, PendingIntent paramPendingIntent);
  
  public abstract void a(PendingIntent paramPendingIntent);
  
  public abstract void a(PendingIntent paramPendingIntent, jk paramjk, String paramString);
  
  public abstract void a(Location paramLocation);
  
  public abstract void a(Location paramLocation, int paramInt);
  
  public abstract void a(nl paramnl, PendingIntent paramPendingIntent);
  
  public abstract void a(nl paramnl, ke paramke);
  
  public abstract void a(ns paramns, oh paramoh, PendingIntent paramPendingIntent);
  
  public abstract void a(nu paramnu, oh paramoh, jF paramjF);
  
  public abstract void a(nw paramnw, oh paramoh);
  
  public abstract void a(ny paramny, oh paramoh, PendingIntent paramPendingIntent);
  
  public abstract void a(oc paramoc, oh paramoh, jF paramjF);
  
  public abstract void a(oe paramoe, LatLngBounds paramLatLngBounds, List<String> paramList, oh paramoh, jF paramjF);
  
  public abstract void a(oh paramoh, PendingIntent paramPendingIntent);
  
  public abstract void a(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, jk paramjk);
  
  public abstract void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent);
  
  public abstract void a(LocationRequest paramLocationRequest, ke paramke);
  
  public abstract void a(LocationRequest paramLocationRequest, ke paramke, String paramString);
  
  public abstract void a(LatLng paramLatLng, nu paramnu, oh paramoh, jF paramjF);
  
  public abstract void a(LatLngBounds paramLatLngBounds, int paramInt, nu paramnu, oh paramoh, jF paramjF);
  
  public abstract void a(LatLngBounds paramLatLngBounds, int paramInt, String paramString, nu paramnu, oh paramoh, jF paramjF);
  
  public abstract void a(String paramString, oh paramoh, jF paramjF);
  
  public abstract void a(String paramString, LatLngBounds paramLatLngBounds, nq paramnq, oh paramoh, jF paramjF);
  
  public abstract void a(List<nn> paramList, PendingIntent paramPendingIntent, jk paramjk, String paramString);
  
  public abstract void a(List<String> paramList, oh paramoh, jF paramjF);
  
  public abstract void a(jk paramjk, String paramString);
  
  public abstract void a(ke paramke);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract void a(String[] paramArrayOfString, jk paramjk, String paramString);
  
  public abstract IBinder b();
  
  public abstract e b(String paramString);
  
  public abstract void b(PendingIntent paramPendingIntent);
  
  public abstract void b(oh paramoh, PendingIntent paramPendingIntent);
  
  public abstract void b(String paramString, oh paramoh, jF paramjF);
  
  public abstract IBinder c();
}

/* Location:
 * Qualified Name:     jn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */