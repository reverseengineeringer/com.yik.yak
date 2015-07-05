package com.parse;

import R;
import ad;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

class GcmRegistrar$Request
{
  private static final int BACKOFF_INTERVAL_MS = 3000;
  private static final int MAX_RETRIES = 5;
  private static final String RETRY_ACTION = "com.parse.RetryGcmRegistration";
  private final PendingIntent appIntent;
  private final Context context;
  private final int identifier;
  private final Random random;
  private final PendingIntent retryIntent;
  private final BroadcastReceiver retryReceiver;
  private final String senderId;
  private final R<String>.ad tcs;
  private final AtomicInteger tries;
  
  private GcmRegistrar$Request(Context paramContext, String paramString)
  {
    context = paramContext;
    senderId = paramString;
    random = new Random();
    identifier = random.nextInt();
    tcs = R.a();
    appIntent = PendingIntent.getBroadcast(context, identifier, new Intent(), 0);
    tries = new AtomicInteger(0);
    paramString = context.getPackageName();
    Object localObject = new Intent("com.parse.RetryGcmRegistration").setPackage(paramString);
    ((Intent)localObject).addCategory(paramString);
    ((Intent)localObject).putExtra("random", identifier);
    retryIntent = PendingIntent.getBroadcast(context, identifier, (Intent)localObject, 0);
    retryReceiver = new GcmRegistrar.Request.1(this);
    localObject = new IntentFilter();
    ((IntentFilter)localObject).addAction("com.parse.RetryGcmRegistration");
    ((IntentFilter)localObject).addCategory(paramString);
    paramContext.registerReceiver(retryReceiver, (IntentFilter)localObject);
  }
  
  public static Request createAndSend(Context paramContext, String paramString)
  {
    paramContext = new Request(paramContext, paramString);
    paramContext.send();
    return paramContext;
  }
  
  private void finish(String paramString1, String paramString2)
  {
    if (paramString1 != null) {}
    for (boolean bool = tcs.a(paramString1);; bool = tcs.a(new Exception("GCM registration error: " + paramString2)))
    {
      if (bool)
      {
        appIntent.cancel();
        retryIntent.cancel();
        context.unregisterReceiver(retryReceiver);
      }
      return;
    }
  }
  
  private void send()
  {
    Object localObject1 = new Intent("com.google.android.c2dm.intent.REGISTER");
    ((Intent)localObject1).setPackage("com.google.android.gsf");
    ((Intent)localObject1).putExtra("sender", senderId);
    ((Intent)localObject1).putExtra("app", appIntent);
    try
    {
      localObject1 = context.startService((Intent)localObject1);
      if (localObject1 == null) {
        finish(null, "GSF_PACKAGE_NOT_AVAILABLE");
      }
      tries.incrementAndGet();
      Parse.logV("com.parse.GcmRegistrar", "Sending GCM registration intent");
      return;
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
  }
  
  public R<String> getTask()
  {
    return tcs.a();
  }
  
  public void onReceiveResponseIntent(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("registration_id");
    paramIntent = paramIntent.getStringExtra("error");
    if ((str == null) && (paramIntent == null))
    {
      Parse.logE("com.parse.GcmRegistrar", "Got no registration info in GCM onReceiveResponseIntent");
      return;
    }
    if (("SERVICE_NOT_AVAILABLE".equals(paramIntent)) && (tries.get() < 5))
    {
      ((AlarmManager)context.getSystemService("alarm")).set(2, (1 << tries.get()) * 3000 + random.nextInt(3000) + SystemClock.elapsedRealtime(), retryIntent);
      return;
    }
    finish(str, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.parse.GcmRegistrar.Request
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */