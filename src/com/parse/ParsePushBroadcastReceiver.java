package com.parse;

import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

public class ParsePushBroadcastReceiver
  extends BroadcastReceiver
{
  public static final String ACTION_PUSH_DELETE = "com.parse.push.intent.DELETE";
  public static final String ACTION_PUSH_OPEN = "com.parse.push.intent.OPEN";
  public static final String ACTION_PUSH_RECEIVE = "com.parse.push.intent.RECEIVE";
  public static final String KEY_PUSH_CHANNEL = "com.parse.Channel";
  public static final String KEY_PUSH_DATA = "com.parse.Data";
  public static final String PROPERTY_PUSH_ICON = "com.parse.push.notification_icon";
  protected static final int SMALL_NOTIFICATION_MAX_CHARACTER_LIMIT = 38;
  private static final String TAG = "com.parse.ParsePushReceiver";
  
  private JSONObject getPushData(Intent paramIntent)
  {
    try
    {
      paramIntent = new JSONObject(paramIntent.getStringExtra("com.parse.Data"));
      return paramIntent;
    }
    catch (JSONException paramIntent)
    {
      Parse.logE("com.parse.ParsePushReceiver", "Unexpected JSONException when receiving push data: ", paramIntent);
    }
    return null;
  }
  
  protected Class<? extends Activity> getActivity(Context paramContext, Intent paramIntent)
  {
    paramContext = Parse.applicationContext.getPackageName();
    paramContext = Parse.applicationContext.getPackageManager().getLaunchIntentForPackage(paramContext);
    if (paramContext == null) {
      return null;
    }
    paramContext = paramContext.getComponent().getClassName();
    try
    {
      paramContext = Class.forName(paramContext);
      return paramContext;
    }
    catch (ClassNotFoundException paramContext) {}
    return null;
  }
  
  protected Bitmap getLargeIcon(Context paramContext, Intent paramIntent)
  {
    return null;
  }
  
  protected Notification getNotification(Context paramContext, Intent paramIntent)
  {
    Object localObject1 = getPushData(paramIntent);
    if ((localObject1 == null) || ((!((JSONObject)localObject1).has("alert")) && (!((JSONObject)localObject1).has("title")))) {
      return null;
    }
    String str = ((JSONObject)localObject1).optString("alert", "Notification received.");
    localObject1 = ((JSONObject)localObject1).optString("title", ManifestInfo.getDisplayName());
    Object localObject2 = paramIntent.getExtras();
    Object localObject3 = new Random();
    int i = ((Random)localObject3).nextInt();
    int j = ((Random)localObject3).nextInt();
    Object localObject4 = paramContext.getPackageName();
    Intent localIntent = new Intent("com.parse.push.intent.OPEN");
    localIntent.putExtras((Bundle)localObject2);
    localIntent.setPackage((String)localObject4);
    localObject3 = new Intent("com.parse.push.intent.DELETE");
    ((Intent)localObject3).putExtras((Bundle)localObject2);
    ((Intent)localObject3).setPackage((String)localObject4);
    localObject2 = PendingIntent.getBroadcast(paramContext, i, localIntent, 134217728);
    localObject3 = PendingIntent.getBroadcast(paramContext, j, (Intent)localObject3, 134217728);
    localObject4 = new NotificationCompat.Builder(paramContext);
    ((NotificationCompat.Builder)localObject4).setContentTitle((CharSequence)localObject1).setContentText(str).setSmallIcon(getSmallIconId(paramContext, paramIntent)).setLargeIcon(getLargeIcon(paramContext, paramIntent)).setContentIntent((PendingIntent)localObject2).setDeleteIntent((PendingIntent)localObject3).setAutoCancel(true).setDefaults(-1);
    if ((str != null) && (str.length() > 38)) {
      ((NotificationCompat.Builder)localObject4).setStyle(new NotificationCompat.Builder.BigTextStyle().bigText(str));
    }
    return ((NotificationCompat.Builder)localObject4).build();
  }
  
  protected int getSmallIconId(Context paramContext, Intent paramIntent)
  {
    paramContext = ManifestInfo.getApplicationMetadata();
    int i = 0;
    if (paramContext != null) {
      i = paramContext.getInt("com.parse.push.notification_icon");
    }
    if (i != 0) {
      return i;
    }
    return ManifestInfo.getIconId();
  }
  
  protected void onPushDismiss(Context paramContext, Intent paramIntent) {}
  
  public void onPushOpen(Context paramContext, Intent paramIntent)
  {
    ParseAnalytics.trackAppOpened(paramIntent);
    Object localObject1 = null;
    try
    {
      localObject2 = new JSONObject(paramIntent.getStringExtra("com.parse.Data")).optString("uri");
      localObject1 = localObject2;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Object localObject2;
        Parse.logE("com.parse.ParsePushReceiver", "Unexpected JSONException when receiving push data: ", localJSONException);
        continue;
        localObject1 = new Intent(paramContext, localJSONException);
      }
      label108:
      ((Intent)localObject1).addFlags(268435456);
      ((Intent)localObject1).addFlags(67108864);
      paramContext.startActivity((Intent)localObject1);
    }
    localObject2 = getActivity(paramContext, paramIntent);
    if (localObject1 != null)
    {
      localObject1 = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject1));
      ((Intent)localObject1).putExtras(paramIntent.getExtras());
      if (Build.VERSION.SDK_INT < 16) {
        break label108;
      }
      TaskStackBuilderHelper.startActivities(paramContext, (Class)localObject2, (Intent)localObject1);
    }
  }
  
  protected void onPushReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      Object localObject1 = new JSONObject(paramIntent.getStringExtra("com.parse.Data"));
      if (localObject1 != null)
      {
        localObject1 = ((JSONObject)localObject1).optString("action", null);
        if (localObject1 != null)
        {
          Bundle localBundle = paramIntent.getExtras();
          Intent localIntent = new Intent();
          localIntent.putExtras(localBundle);
          localIntent.setAction((String)localObject1);
          localIntent.setPackage(paramContext.getPackageName());
          paramContext.sendBroadcast(localIntent);
        }
        paramIntent = getNotification(paramContext, paramIntent);
        if (paramIntent != null) {
          ParseNotificationManager.getInstance().showNotification(paramContext, paramIntent);
        }
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Parse.logE("com.parse.ParsePushReceiver", "Unexpected JSONException when receiving push data: ", localJSONException);
        Object localObject2 = null;
        continue;
        localObject2 = null;
      }
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.parse.push.intent.RECEIVE".equals(str)) {
      onPushReceive(paramContext, paramIntent);
    }
    do
    {
      return;
      if ("com.parse.push.intent.DELETE".equals(str))
      {
        onPushDismiss(paramContext, paramIntent);
        return;
      }
    } while (!"com.parse.push.intent.OPEN".equals(str));
    onPushOpen(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePushBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */