package com.yik.yak.managers;

import AN;
import Aa;
import Hi;
import Hm;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat.Builder;
import com.parse.ParsePushBroadcastReceiver;
import com.yik.yak.YikYak;
import com.yik.yak.ui.activity.SplashScreen;
import org.json.JSONException;
import org.json.JSONObject;

public class NotificationReceiver
  extends ParsePushBroadcastReceiver
{
  private void a(Context paramContext, int paramInt, Bundle paramBundle, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      boolean bool = Aa.a("audibleNotifications", true);
      paramString2 = (NotificationManager)paramContext.getSystemService("notification");
      int i = YikYak.c();
      paramString3 = new Intent(paramContext, SplashScreen.class);
      paramString3.setFlags(335544320);
      paramString3.putExtra("action", paramInt);
      paramString3.putExtra("count", i);
      if (paramBundle != null) {
        paramString3.putExtras(paramBundle);
      }
      paramBundle = PendingIntent.getActivity(paramContext, 4004, paramString3, 134217728);
      if (YikYak.b() == 1) {}
      for (;;)
      {
        paramContext = new NotificationCompat.Builder(paramContext);
        paramContext.setSmallIcon(2130837778);
        paramContext.setContentTitle("Yik Yak");
        paramContext.setContentText(paramString1);
        paramContext.setNumber(i);
        paramContext.setAutoCancel(true);
        paramContext.setContentIntent(paramBundle);
        if (bool) {
          paramContext.setDefaults(7);
        }
        paramString2.notify(1, paramContext.build());
        return;
        paramString1 = "You have " + String.valueOf(i) + " pending notifications.";
      }
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    boolean bool = Aa.a("pushNotificationsEnabled", true);
    if (paramString3.equals("reset_pin")) {}
    do
    {
      try
      {
        Aa.k(false);
        a(paramContext, 6005, null, paramString2, paramString3, paramString1);
        return;
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      if (paramString3.equals("set_token")) {
        try
        {
          Aa.g(paramString2);
          return;
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
      }
      if (paramString3.equals("rp")) {
        try
        {
          Aa.h(true);
          return;
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
      }
    } while (!bool);
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("action", 4000);
      localBundle.putString("yakId", paramString1);
      if (!Hi.a(paramString4)) {
        localBundle.putString("replyId", paramString4);
      }
      localBundle.putString("key", paramString3);
      a(paramContext, 4000, localBundle, paramString2, paramString3, paramString1);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public void onPushOpen(Context paramContext, Intent paramIntent)
  {
    Hm.a(this, new Object[] { "onPushOpen" });
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    for (;;)
    {
      try
      {
        localObject = new JSONObject(paramIntent.getExtras().getString("com.parse.Data"));
        if (((JSONObject)localObject).has("id"))
        {
          paramIntent = ((JSONObject)localObject).getString("id");
          if (!((JSONObject)localObject).has("alert")) {
            break label145;
          }
          str1 = ((JSONObject)localObject).getString("alert");
          if (!((JSONObject)localObject).has("key")) {
            break label152;
          }
          str2 = ((JSONObject)localObject).getString("key");
          if (!((JSONObject)localObject).has("replyId")) {
            break label159;
          }
          localObject = ((JSONObject)localObject).getString("replyId");
          a(paramContext, paramIntent, str1, str2, (String)localObject);
          boolean bool = AN.b();
          if (!bool) {}
        }
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
        paramIntent = "";
        continue;
        String str1 = "";
      }
      catch (JSONException paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      label145:
      continue;
      label152:
      String str2 = "";
      continue;
      label159:
      Object localObject = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.managers.NotificationReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */