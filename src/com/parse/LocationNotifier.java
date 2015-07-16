package com.parse;

import L;
import N;
import Z;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

class LocationNotifier
{
  private static Location fakeLocation = null;
  public static final String testProviderName = "Test";
  
  static N<ParseGeoPoint> getCurrentLocationAsync(long paramLong, Criteria paramCriteria)
  {
    Parse.checkContext();
    Z localZ = N.a();
    L localL = new L();
    LocationManager localLocationManager = (LocationManager)Parse.applicationContext.getSystemService("location");
    LocationNotifier.1 local1 = new LocationNotifier.1(localL, localZ, localLocationManager);
    localL.a(Parse.getScheduledExecutor().schedule(new LocationNotifier.2(localZ, localLocationManager, local1), paramLong, TimeUnit.MILLISECONDS));
    paramCriteria = localLocationManager.getBestProvider(paramCriteria, true);
    if (paramCriteria != null) {
      localLocationManager.requestLocationUpdates(paramCriteria, 0L, 0.0F, local1);
    }
    if (fakeLocation != null) {
      local1.onLocationChanged(fakeLocation);
    }
    return localZ.a();
  }
  
  static void setFakeLocation(Location paramLocation)
  {
    fakeLocation = paramLocation;
  }
}

/* Location:
 * Qualified Name:     com.parse.LocationNotifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */