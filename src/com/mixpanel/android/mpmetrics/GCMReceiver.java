package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build.VERSION;
import sG;
import sK;
import st;
import su;
import sv;
import tb;
import td;

public class GCMReceiver
  extends BroadcastReceiver
{
  @TargetApi(9)
  private Notification a(Context paramContext, PendingIntent paramPendingIntent, sv paramsv)
  {
    Notification localNotification = new Notification(a, c, System.currentTimeMillis());
    flags |= 0x10;
    localNotification.setLatestEventInfo(paramContext, b, c, paramPendingIntent);
    return localNotification;
  }
  
  private Intent a(Context paramContext, String paramString)
  {
    if (paramString != null) {}
    for (paramString = Uri.parse(paramString);; paramString = null)
    {
      if (paramString == null) {
        return a(paramContext);
      }
      return new Intent("android.intent.action.VIEW", paramString);
    }
  }
  
  private void a(Context paramContext, Intent paramIntent)
  {
    String str = sG.a(paramContext).q();
    Object localObject = str;
    if (str == null) {
      localObject = paramContext.getPackageName();
    }
    localObject = new td((String)localObject, paramContext);
    paramIntent = b(paramContext.getApplicationContext(), paramIntent, (tb)localObject);
    if (paramIntent != null) {
      ((NotificationManager)paramContext.getSystemService("notification")).notify(0, paramIntent);
    }
  }
  
  private void a(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("registration_id");
    if (paramIntent.getStringExtra("error") != null) {
      new StringBuilder().append("Error when registering for GCM: ").append(paramIntent.getStringExtra("error")).toString();
    }
    do
    {
      return;
      if (str != null)
      {
        if (sG.a) {
          new StringBuilder().append("Registering GCM ID: ").append(str).toString();
        }
        sK.a(new st(this, str));
        return;
      }
    } while (paramIntent.getStringExtra("unregistered") == null);
    boolean bool = sG.a;
    sK.a(new su(this));
  }
  
  @TargetApi(11)
  private Notification b(Context paramContext, PendingIntent paramPendingIntent, sv paramsv)
  {
    paramContext = new Notification.Builder(paramContext).setSmallIcon(a).setTicker(c).setWhen(System.currentTimeMillis()).setContentTitle(b).setContentText(c).setContentIntent(paramPendingIntent).getNotification();
    flags |= 0x10;
    return paramContext;
  }
  
  private Notification b(Context paramContext, Intent paramIntent, tb paramtb)
  {
    paramIntent = a(paramContext, paramIntent, paramtb);
    if (paramIntent == null) {
      return null;
    }
    if (sG.a) {
      new StringBuilder().append("MP GCM notification received: ").append(c).toString();
    }
    paramtb = PendingIntent.getActivity(paramContext, 0, d, 134217728);
    if (Build.VERSION.SDK_INT >= 16) {
      return c(paramContext, paramtb, paramIntent);
    }
    if (Build.VERSION.SDK_INT >= 11) {
      return b(paramContext, paramtb, paramIntent);
    }
    return a(paramContext, paramtb, paramIntent);
  }
  
  @SuppressLint({"NewApi"})
  @TargetApi(16)
  private Notification c(Context paramContext, PendingIntent paramPendingIntent, sv paramsv)
  {
    paramContext = new Notification.Builder(paramContext).setSmallIcon(a).setTicker(c).setWhen(System.currentTimeMillis()).setContentTitle(b).setContentText(c).setContentIntent(paramPendingIntent).setStyle(new Notification.BigTextStyle().bigText(c)).build();
    flags |= 0x10;
    return paramContext;
  }
  
  Intent a(Context paramContext)
  {
    return paramContext.getPackageManager().getLaunchIntentForPackage(paramContext.getPackageName());
  }
  
  sv a(Context paramContext, Intent paramIntent, tb paramtb)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str2 = paramIntent.getStringExtra("mp_message");
    String str4 = paramIntent.getStringExtra("mp_icnm");
    String str3 = paramIntent.getStringExtra("mp_cta");
    String str1 = paramIntent.getStringExtra("mp_title");
    if (str2 == null) {
      return null;
    }
    if ((str4 != null) && (paramtb.a(str4))) {}
    for (int j = paramtb.b(str4);; j = -1) {
      try
      {
        paramtb = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 0);
        int i = j;
        if (j == -1)
        {
          i = j;
          if (paramtb != null) {
            i = icon;
          }
        }
        j = i;
        if (i == -1) {
          j = 17301651;
        }
        paramIntent = str1;
        if (str1 == null)
        {
          paramIntent = str1;
          if (paramtb != null) {
            paramIntent = localPackageManager.getApplicationLabel(paramtb);
          }
        }
        paramtb = paramIntent;
        if (paramIntent == null) {
          paramtb = "A message for you";
        }
        return new sv(j, paramtb, str2, a(paramContext, str3), null);
      }
      catch (PackageManager.NameNotFoundException paramIntent)
      {
        for (;;)
        {
          paramtb = null;
        }
      }
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.google.android.c2dm.intent.REGISTRATION".equals(str)) {
      a(paramIntent);
    }
    while (!"com.google.android.c2dm.intent.RECEIVE".equals(str)) {
      return;
    }
    a(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.mpmetrics.GCMReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */