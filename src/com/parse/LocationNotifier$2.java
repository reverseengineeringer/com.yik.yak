package com.parse;

import ad;
import android.location.LocationListener;
import android.location.LocationManager;

final class LocationNotifier$2
  implements Runnable
{
  LocationNotifier$2(ad paramad, LocationManager paramLocationManager, LocationListener paramLocationListener) {}
  
  public void run()
  {
    val$tcs.a(new ParseException(124, "location fetch timed out"));
    val$manager.removeUpdates(val$listener);
  }
}

/* Location:
 * Qualified Name:     com.parse.LocationNotifier.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */