package com.yik.yak.managers;

import AA;
import GF;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat.Builder;
import com.parse.ParsePushBroadcastReceiver;
import com.yik.yak.YikYak;
import com.yik.yak.ui.activity.SplashScreen;
import org.json.JSONException;
import org.json.JSONObject;
import zQ;

public class NotificationReceiver
  extends ParsePushBroadcastReceiver
{
  private void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Object localObject = zQ.y();
    boolean bool1 = ((SharedPreferences)localObject).getBoolean("pushNotificationsEnabled", true);
    boolean bool2 = ((SharedPreferences)localObject).getBoolean("audibleNotifications", true);
    if ((bool1) && (!paramString3.equals("reset_pin")) && (!paramString3.equals("set_token"))) {}
    for (;;)
    {
      try
      {
        i = YikYak.c();
        localObject = new Intent(paramContext, SplashScreen.class);
        ((Intent)localObject).setFlags(335544320);
        ((Intent)localObject).putExtra("action", 4000);
        ((Intent)localObject).putExtra("yakId", paramString1);
        ((Intent)localObject).putExtra("count", i);
        ((Intent)localObject).putExtra("key", paramString3);
        localObject = PendingIntent.getActivity(paramContext, 4004, (Intent)localObject, 134217728);
        if (YikYak.b() != 1) {
          continue;
        }
        paramString1 = paramString2;
        NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(paramContext);
        localBuilder.setSmallIcon(2130837770);
        localBuilder.setContentTitle("Yik Yak");
        localBuilder.setContentText(paramString1);
        localBuilder.setNumber(i);
        localBuilder.setAutoCancel(true);
        localBuilder.setContentIntent((PendingIntent)localObject);
        if (bool2) {
          localBuilder.setDefaults(7);
        }
        localNotificationManager.notify(1, localBuilder.build());
      }
      catch (Exception paramString1)
      {
        int i;
        continue;
      }
      if (paramString3.equals("reset_pin")) {}
      try
      {
        paramString1 = new Intent(paramContext, SplashScreen.class);
        paramString1.setFlags(335544320);
        paramString1.putExtra("action", 6005);
        paramString1 = PendingIntent.getActivity(paramContext, 4005, paramString1, 1073741824);
        paramContext = new NotificationCompat.Builder(paramContext);
        paramContext.setSmallIcon(2130837770);
        paramContext.setContentTitle("Yik Yak");
        paramContext.setContentText(paramString2);
        paramContext.setNumber(1);
        paramContext.setAutoCancel(true);
        paramContext.setContentIntent(paramString1);
        if (bool2) {
          paramContext.setDefaults(7);
        }
        localNotificationManager.notify(1, paramContext.build());
      }
      catch (Exception paramContext)
      {
        continue;
      }
      if (paramString3.equals("set_token")) {}
      try
      {
        zQ.f(paramString2);
        return;
      }
      catch (Exception paramContext)
      {
        return;
      }
      paramString1 = "You have " + String.valueOf(i) + " pending notifications.";
    }
  }
  
  public void onPushOpen(Context paramContext, Intent paramIntent)
  {
    GF.a(this, new Object[] { "onPushOpen" });
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramIntent = new JSONObject(paramIntent.getExtras().getString("com.parse.Data"));
      a(paramContext, paramIntent.getString("id"), paramIntent.getString("alert"), paramIntent.getString("key"));
      boolean bool = AA.b();
      if (bool) {}
      try
      {
        paramContext.sendBroadcast(new Intent("IN_APP_NOTIFY"));
        return;
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      return;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.managers.NotificationReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */