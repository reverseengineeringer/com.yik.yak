package com.parse;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.Bundle;
import android.util.SparseIntArray;
import java.util.concurrent.atomic.AtomicInteger;

class ParseNotificationManager
{
  public static final String TAG = "com.parse.ParseNotificationManager";
  private SparseIntArray iconIds = new SparseIntArray();
  private final Object lock = new Object();
  private final AtomicInteger notificationCount = new AtomicInteger(0);
  private volatile boolean shouldShowNotifications = true;
  
  public static ParseNotificationManager getInstance()
  {
    return ParseNotificationManager.Singleton.access$000();
  }
  
  public Notification createNotification(Context paramContext, String paramString1, String paramString2, Class<? extends Activity> paramClass, int paramInt, Bundle paramBundle)
  {
    int i = paramInt;
    if (!isValidIconId(paramContext, paramInt))
    {
      Parse.logE("com.parse.ParseNotificationManager", "Icon id " + paramInt + " is not a valid drawable. Trying to fall back to default app icon.");
      i = ManifestInfo.getIconId();
    }
    if (i == 0)
    {
      Parse.logE("com.parse.ParseNotificationManager", "Could not find a valid icon id for this app. This is required to create a Notification object to show in the status bar. Make sure that the <application> in in your Manifest.xml has a valid android:icon attribute.");
      return null;
    }
    if ((paramContext == null) || (paramString1 == null) || (paramString2 == null) || (paramClass == null) || (i == 0))
    {
      Parse.logE("com.parse.ParseNotificationManager", "Must specify non-null context, title, body, and activity class to show notification.");
      return null;
    }
    long l = System.currentTimeMillis();
    paramClass = new ComponentName(paramContext, paramClass);
    Intent localIntent = new Intent();
    localIntent.setComponent(paramClass);
    localIntent.setFlags(268435456);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    paramClass = PendingIntent.getActivity(paramContext, (int)l, localIntent, 0);
    paramBundle = new Notification(i, paramString2, l);
    flags |= 0x10;
    defaults |= 0xFFFFFFFF;
    paramBundle.setLatestEventInfo(paramContext, paramString1, paramString2, paramClass);
    return paramBundle;
  }
  
  public int getNotificationCount()
  {
    return notificationCount.get();
  }
  
  public boolean getShouldShowNotifications()
  {
    return shouldShowNotifications;
  }
  
  public boolean isValidIconId(Context paramContext, int paramInt)
  {
    for (;;)
    {
      synchronized (lock)
      {
        int j = iconIds.get(paramInt, -1);
        i = j;
        if (j == -1)
        {
          ??? = paramContext.getResources();
          paramContext = null;
        }
        try
        {
          ??? = ((Resources)???).getDrawable(paramInt);
          paramContext = (Context)???;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          continue;
        }
        ??? = lock;
        if (paramContext == null) {
          i = 0;
        }
      }
      int i = 1;
    }
    return false;
  }
  
  public void setShouldShowNotifications(boolean paramBoolean)
  {
    shouldShowNotifications = paramBoolean;
  }
  
  public void showNotification(Context paramContext, Notification paramNotification)
  {
    int i;
    if ((paramContext != null) && (paramNotification != null))
    {
      notificationCount.incrementAndGet();
      if ((shouldShowNotifications) && (paramContext != null) && (paramNotification != null))
      {
        paramContext = (NotificationManager)paramContext.getSystemService("notification");
        i = (int)System.currentTimeMillis();
      }
    }
    try
    {
      paramContext.notify(i, paramNotification);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      defaults = 5;
      paramContext.notify(i, paramNotification);
    }
  }
  
  public void showNotification(Context paramContext, String paramString1, String paramString2, Class<? extends Activity> paramClass, int paramInt, Bundle paramBundle)
  {
    showNotification(paramContext, createNotification(paramContext, paramString1, paramString2, paramClass, paramInt, paramBundle));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseNotificationManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */