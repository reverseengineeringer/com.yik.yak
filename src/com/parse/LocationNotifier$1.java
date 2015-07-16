package com.parse;

import L;
import Z;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import java.util.concurrent.ScheduledFuture;

final class LocationNotifier$1
  implements LocationListener
{
  LocationNotifier$1(L paramL, Z paramZ, LocationManager paramLocationManager) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    ((ScheduledFuture)val$timeoutFuture.a()).cancel(true);
    ParseGeoPoint localParseGeoPoint = null;
    if (paramLocation != null) {
      localParseGeoPoint = new ParseGeoPoint(paramLocation.getLatitude(), paramLocation.getLongitude());
    }
    val$tcs.a(localParseGeoPoint);
    val$manager.removeUpdates(this);
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.parse.LocationNotifier.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */