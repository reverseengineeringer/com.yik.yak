package com.adjust.sdk;

import android.content.Context;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class Reflection
{
  public static Object createDefaultInstance(Class paramClass)
  {
    try
    {
      paramClass = paramClass.newInstance();
      return paramClass;
    }
    catch (Throwable paramClass) {}
    return null;
  }
  
  public static Object createDefaultInstance(String paramString)
  {
    return createDefaultInstance(forName(paramString));
  }
  
  public static Object createInstance(String paramString, Class[] paramArrayOfClass, Object... paramVarArgs)
  {
    try
    {
      paramString = Class.forName(paramString).getConstructor(paramArrayOfClass).newInstance(paramVarArgs);
      return paramString;
    }
    catch (Throwable paramString) {}
    return null;
  }
  
  public static Class forName(String paramString)
  {
    try
    {
      paramString = Class.forName(paramString);
      return paramString;
    }
    catch (Throwable paramString) {}
    return null;
  }
  
  private static Object getAdvertisingInfoObject(Context paramContext)
  {
    return invokeStaticMethod("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class }, new Object[] { paramContext });
  }
  
  public static String getAndroidId(Context paramContext)
  {
    try
    {
      paramContext = (String)invokeStaticMethod("com.adjust.sdk.plugin.AndroidIdUtil", "getAndroidId", new Class[] { Context.class }, new Object[] { paramContext });
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public static String getMacAddress(Context paramContext)
  {
    try
    {
      paramContext = (String)invokeStaticMethod("com.adjust.sdk.plugin.MacAddressUtil", "getMacAddress", new Class[] { Context.class }, new Object[] { paramContext });
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public static String getPlayAdId(Context paramContext)
  {
    try
    {
      paramContext = (String)invokeInstanceMethod(getAdvertisingInfoObject(paramContext), "getId", null, new Object[0]);
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public static String getSha1EmailAddress(Context paramContext, String paramString)
  {
    try
    {
      paramContext = (String)invokeStaticMethod("com.adjust.sdk.plugin.EmailUtil", "getSha1EmailAddress", new Class[] { Context.class, String.class }, new Object[] { paramContext, paramString });
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public static Object invokeInstanceMethod(Object paramObject, String paramString, Class[] paramArrayOfClass, Object... paramVarArgs)
  {
    return invokeMethod(paramObject.getClass(), paramString, paramObject, paramArrayOfClass, paramVarArgs);
  }
  
  public static Object invokeMethod(Class paramClass, String paramString, Object paramObject, Class[] paramArrayOfClass, Object... paramVarArgs)
  {
    return paramClass.getMethod(paramString, paramArrayOfClass).invoke(paramObject, paramVarArgs);
  }
  
  public static Object invokeStaticMethod(String paramString1, String paramString2, Class[] paramArrayOfClass, Object... paramVarArgs)
  {
    return invokeMethod(Class.forName(paramString1), paramString2, null, paramArrayOfClass, paramVarArgs);
  }
  
  private static boolean isConnectionResultSuccess(Integer paramInteger)
  {
    if (paramInteger == null) {}
    for (;;)
    {
      return false;
      try
      {
        int i = Class.forName("com.google.android.gms.common.ConnectionResult").getField("SUCCESS").getInt(null);
        int j = paramInteger.intValue();
        if (i == j) {
          return true;
        }
      }
      catch (Throwable paramInteger) {}
    }
    return false;
  }
  
  public static boolean isGooglePlayServicesAvailable(Context paramContext)
  {
    try
    {
      boolean bool = Boolean.valueOf(isConnectionResultSuccess((Integer)invokeStaticMethod("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class }, new Object[] { paramContext }))).booleanValue();
      return bool;
    }
    catch (Throwable paramContext) {}
    return false;
  }
  
  public static Boolean isPlayTrackingEnabled(Context paramContext)
  {
    try
    {
      if (!((Boolean)invokeInstanceMethod(getAdvertisingInfoObject(paramContext), "isLimitAdTrackingEnabled", null, new Object[0])).booleanValue()) {}
      for (boolean bool = true;; bool = false) {
        return Boolean.valueOf(bool);
      }
      return null;
    }
    catch (Throwable paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.Reflection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */