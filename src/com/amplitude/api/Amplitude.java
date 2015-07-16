package com.amplitude.api;

import android.content.Context;
import org.json.JSONObject;

public class Amplitude
{
  @Deprecated
  public static void disableLocationListening()
  {
    getInstance().disableLocationListening();
  }
  
  @Deprecated
  public static void enableLocationListening()
  {
    getInstance().enableLocationListening();
  }
  
  @Deprecated
  public static void enableNewDeviceIdPerInstall(boolean paramBoolean)
  {
    getInstance().enableNewDeviceIdPerInstall(paramBoolean);
  }
  
  @Deprecated
  public static void endSession()
  {
    getInstance().endSession();
  }
  
  @Deprecated
  public static String getDeviceId()
  {
    return getInstance().getDeviceId();
  }
  
  public static AmplitudeClient getInstance()
  {
    return AmplitudeClient.getInstance();
  }
  
  @Deprecated
  public static void initialize(Context paramContext, String paramString)
  {
    getInstance().initialize(paramContext, paramString);
  }
  
  @Deprecated
  public static void initialize(Context paramContext, String paramString1, String paramString2)
  {
    getInstance().initialize(paramContext, paramString1, paramString2);
  }
  
  @Deprecated
  public static void logEvent(String paramString)
  {
    getInstance().logEvent(paramString);
  }
  
  @Deprecated
  public static void logEvent(String paramString, JSONObject paramJSONObject)
  {
    getInstance().logEvent(paramString, paramJSONObject);
  }
  
  @Deprecated
  public static void logRevenue(double paramDouble)
  {
    getInstance().logRevenue(paramDouble);
  }
  
  @Deprecated
  public static void logRevenue(String paramString, int paramInt, double paramDouble)
  {
    getInstance().logRevenue(paramString, paramInt, paramDouble);
  }
  
  @Deprecated
  public static void logRevenue(String paramString1, int paramInt, double paramDouble, String paramString2, String paramString3)
  {
    getInstance().logRevenue(paramString1, paramInt, paramDouble, paramString2, paramString3);
  }
  
  @Deprecated
  public static void setOptOut(boolean paramBoolean)
  {
    getInstance().setOptOut(paramBoolean);
  }
  
  @Deprecated
  public static void setSessionTimeoutMillis(long paramLong)
  {
    getInstance().setSessionTimeoutMillis(paramLong);
  }
  
  @Deprecated
  public static void setUserId(String paramString)
  {
    getInstance().setUserId(paramString);
  }
  
  @Deprecated
  public static void setUserProperties(JSONObject paramJSONObject)
  {
    getInstance().setUserProperties(paramJSONObject);
  }
  
  @Deprecated
  public static void setUserProperties(JSONObject paramJSONObject, boolean paramBoolean)
  {
    getInstance().setUserProperties(paramJSONObject, paramBoolean);
  }
  
  @Deprecated
  public static void startSession()
  {
    getInstance().startSession();
  }
  
  @Deprecated
  public static void uploadEvents()
  {
    getInstance().uploadEvents();
  }
  
  @Deprecated
  public static void useAdvertisingIdForDeviceId()
  {
    getInstance().useAdvertisingIdForDeviceId();
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.Amplitude
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */