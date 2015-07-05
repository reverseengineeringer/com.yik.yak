package com.amplitude.api;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

public class DeviceInfo
{
  public static final String TAG = "com.amplitude.api.DeviceInfo";
  private String advertisingId;
  private Context context;
  private String country;
  private boolean locationListening = true;
  
  public DeviceInfo(Context paramContext)
  {
    context = paramContext;
  }
  
  private String getCountryFromLocale()
  {
    return Locale.getDefault().getCountry();
  }
  
  private String getCountryFromLocation()
  {
    if (!isLocationListening()) {
      return null;
    }
    Object localObject = getMostRecentLocation();
    if (localObject != null) {
      try
      {
        localObject = getGeocoder().getFromLocation(((Location)localObject).getLatitude(), ((Location)localObject).getLongitude(), 1);
        if (localObject != null)
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            Address localAddress = (Address)((Iterator)localObject).next();
            if (localAddress != null)
            {
              localObject = localAddress.getCountryCode();
              return (String)localObject;
            }
          }
        }
      }
      catch (IOException localIOException) {}
    }
    return null;
  }
  
  private String getCountryFromNetwork()
  {
    Object localObject = (TelephonyManager)context.getSystemService("phone");
    if (((TelephonyManager)localObject).getPhoneType() != 2)
    {
      localObject = ((TelephonyManager)localObject).getNetworkCountryIso();
      if (localObject != null) {
        return ((String)localObject).toUpperCase(Locale.US);
      }
    }
    return null;
  }
  
  private String getCountryUncached()
  {
    Object localObject = getCountryFromLocation();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {}
    String str;
    do
    {
      return (String)localObject;
      str = getCountryFromNetwork();
      localObject = str;
    } while (!TextUtils.isEmpty(str));
    return getCountryFromLocale();
  }
  
  public String generateUUID()
  {
    return UUID.randomUUID().toString();
  }
  
  public String getAdvertisingId()
  {
    if (advertisingId == null) {}
    try
    {
      Object localObject = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", new Class[] { Context.class }).invoke(null, new Object[] { context });
      if (((Boolean)localObject.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(localObject, new Object[0])).booleanValue()) {
        return null;
      }
      advertisingId = ((String)localObject.getClass().getMethod("getId", new Class[0]).invoke(localObject, new Object[0]));
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;) {}
    }
    return advertisingId;
  }
  
  public String getBrand()
  {
    return Build.BRAND;
  }
  
  public String getCarrier()
  {
    return ((TelephonyManager)context.getSystemService("phone")).getNetworkOperatorName();
  }
  
  public String getCountry()
  {
    if (country == null) {
      country = getCountryUncached();
    }
    return country;
  }
  
  protected Geocoder getGeocoder()
  {
    return new Geocoder(context, Locale.ENGLISH);
  }
  
  public String getLanguage()
  {
    return Locale.getDefault().getLanguage();
  }
  
  public String getManufacturer()
  {
    return Build.MANUFACTURER;
  }
  
  public String getModel()
  {
    return Build.MODEL;
  }
  
  public Location getMostRecentLocation()
  {
    if (!isLocationListening()) {}
    do
    {
      do
      {
        return null;
        localObject1 = (LocationManager)context.getSystemService("location");
      } while (localObject1 == null);
      localObject3 = ((LocationManager)localObject1).getProviders(true);
    } while (localObject3 == null);
    Object localObject2 = new ArrayList();
    Object localObject3 = ((List)localObject3).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      Location localLocation = ((LocationManager)localObject1).getLastKnownLocation((String)((Iterator)localObject3).next());
      if (localLocation != null) {
        ((List)localObject2).add(localLocation);
      }
    }
    localObject3 = ((List)localObject2).iterator();
    long l = -1L;
    Object localObject1 = null;
    if (((Iterator)localObject3).hasNext())
    {
      localObject2 = (Location)((Iterator)localObject3).next();
      if (((Location)localObject2).getTime() <= l) {
        break label161;
      }
      l = ((Location)localObject2).getTime();
      localObject1 = localObject2;
    }
    label161:
    for (;;)
    {
      break;
      return (Location)localObject1;
    }
  }
  
  public String getOSName()
  {
    return "android";
  }
  
  public String getOSVersion()
  {
    return Build.VERSION.RELEASE;
  }
  
  public String getVersionName()
  {
    try
    {
      String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  public boolean isLocationListening()
  {
    return locationListening;
  }
  
  public void setLocationListening(boolean paramBoolean)
  {
    locationListening = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.DeviceInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */