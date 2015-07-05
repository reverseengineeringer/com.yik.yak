package com.parse;

import R;
import android.location.Criteria;

public class ParseGeoPoint
{
  static double EARTH_MEAN_RADIUS_KM = 6371.0D;
  static double EARTH_MEAN_RADIUS_MILE = 3958.8D;
  private double latitude = 0.0D;
  private double longitude = 0.0D;
  
  public ParseGeoPoint() {}
  
  public ParseGeoPoint(double paramDouble1, double paramDouble2)
  {
    setLatitude(paramDouble1);
    setLongitude(paramDouble2);
  }
  
  public static R<ParseGeoPoint> getCurrentLocationInBackground(long paramLong)
  {
    Criteria localCriteria = new Criteria();
    localCriteria.setAccuracy(0);
    localCriteria.setPowerRequirement(0);
    return LocationNotifier.getCurrentLocationAsync(paramLong, localCriteria);
  }
  
  public static R<ParseGeoPoint> getCurrentLocationInBackground(long paramLong, Criteria paramCriteria)
  {
    return LocationNotifier.getCurrentLocationAsync(paramLong, paramCriteria);
  }
  
  public static void getCurrentLocationInBackground(long paramLong, Criteria paramCriteria, LocationCallback paramLocationCallback)
  {
    Parse.callbackOnMainThreadAsync(getCurrentLocationInBackground(paramLong, paramCriteria), paramLocationCallback);
  }
  
  public static void getCurrentLocationInBackground(long paramLong, LocationCallback paramLocationCallback)
  {
    Parse.callbackOnMainThreadAsync(getCurrentLocationInBackground(paramLong), paramLocationCallback);
  }
  
  public double distanceInKilometersTo(ParseGeoPoint paramParseGeoPoint)
  {
    return distanceInRadiansTo(paramParseGeoPoint) * EARTH_MEAN_RADIUS_KM;
  }
  
  public double distanceInMilesTo(ParseGeoPoint paramParseGeoPoint)
  {
    return distanceInRadiansTo(paramParseGeoPoint) * EARTH_MEAN_RADIUS_MILE;
  }
  
  public double distanceInRadiansTo(ParseGeoPoint paramParseGeoPoint)
  {
    double d1 = latitude * 0.017453292519943295D;
    double d4 = longitude;
    double d2 = paramParseGeoPoint.getLatitude() * 0.017453292519943295D;
    double d5 = paramParseGeoPoint.getLongitude();
    double d3 = Math.sin((d1 - d2) / 2.0D);
    d4 = Math.sin((d4 * 0.017453292519943295D - 0.017453292519943295D * d5) / 2.0D);
    return Math.asin(Math.sqrt(Math.min(1.0D, d4 * (Math.cos(d1) * Math.cos(d2) * d4) + d3 * d3))) * 2.0D;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public void setLatitude(double paramDouble)
  {
    if ((paramDouble > 90.0D) || (paramDouble < -90.0D)) {
      throw new IllegalArgumentException("Latitude must be within the range (-90.0, 90.0).");
    }
    latitude = paramDouble;
  }
  
  public void setLongitude(double paramDouble)
  {
    if ((paramDouble > 180.0D) || (paramDouble < -180.0D)) {
      throw new IllegalArgumentException("Longitude must be within the range (-180.0, 180.0).");
    }
    longitude = paramDouble;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseGeoPoint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */