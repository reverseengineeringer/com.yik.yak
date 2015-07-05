package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;
import java.util.Map;

public class Adjust
{
  private static ActivityHandler activityHandler;
  
  public static void appDidLaunch(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    activityHandler = new ActivityHandler(paramContext, paramString1, paramString2, paramString3, paramBoolean);
  }
  
  public static void appWillOpenUrl(Uri paramUri)
  {
    try
    {
      activityHandler.readOpenUrl(paramUri);
      return;
    }
    catch (NullPointerException paramUri)
    {
      getLogger().error("No activity handler found", new Object[0]);
    }
  }
  
  private static Logger getLogger()
  {
    return AdjustFactory.getLogger();
  }
  
  public static Boolean isEnabled()
  {
    try
    {
      Boolean localBoolean = activityHandler.isEnabled();
      return localBoolean;
    }
    catch (NullPointerException localNullPointerException)
    {
      getLogger().error("No activity handler found", new Object[0]);
    }
    return Boolean.valueOf(false);
  }
  
  public static void onPause()
  {
    try
    {
      getLogger().debug("onPause", new Object[0]);
      activityHandler.trackSubsessionEnd();
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      getLogger().error("No activity handler found", new Object[0]);
    }
  }
  
  public static void onResume(Context paramContext)
  {
    if (activityHandler == null) {
      activityHandler = new ActivityHandler(paramContext);
    }
    activityHandler.trackSubsessionStart();
  }
  
  public static void setEnabled(Boolean paramBoolean)
  {
    try
    {
      activityHandler.setEnabled(paramBoolean);
      return;
    }
    catch (NullPointerException paramBoolean)
    {
      getLogger().error("No activity handler found", new Object[0]);
    }
  }
  
  public static void setOnFinishedListener(OnFinishedListener paramOnFinishedListener)
  {
    try
    {
      activityHandler.setOnFinishedListener(paramOnFinishedListener);
      return;
    }
    catch (NullPointerException paramOnFinishedListener)
    {
      getLogger().error("No activity handler found", new Object[0]);
    }
  }
  
  public static void setSdkPrefix(String paramString)
  {
    activityHandler.setSdkPrefix(paramString);
  }
  
  public static void trackEvent(String paramString)
  {
    trackEvent(paramString, null);
  }
  
  public static void trackEvent(String paramString, Map<String, String> paramMap)
  {
    try
    {
      activityHandler.trackEvent(paramString, paramMap);
      return;
    }
    catch (NullPointerException paramString)
    {
      getLogger().error("No activity handler found", new Object[0]);
    }
  }
  
  public static void trackRevenue(double paramDouble)
  {
    trackRevenue(paramDouble, null);
  }
  
  public static void trackRevenue(double paramDouble, String paramString)
  {
    trackRevenue(paramDouble, paramString, null);
  }
  
  public static void trackRevenue(double paramDouble, String paramString, Map<String, String> paramMap)
  {
    try
    {
      activityHandler.trackRevenue(paramDouble, paramString, paramMap);
      return;
    }
    catch (NullPointerException paramString)
    {
      getLogger().error("No activity handler found", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.Adjust
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */