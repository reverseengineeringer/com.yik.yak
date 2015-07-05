package com.parse;

import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;

class ParseWakeLock
{
  private static final String TAG = "com.parse.ParseWakeLock";
  private static volatile boolean hasWakeLockPermission = true;
  private final PowerManager.WakeLock wakeLock;
  
  private ParseWakeLock(PowerManager.WakeLock paramWakeLock)
  {
    wakeLock = paramWakeLock;
  }
  
  public static ParseWakeLock acquireNewWakeLock(Context paramContext, int paramInt, String paramString, long paramLong)
  {
    localObject2 = null;
    localObject1 = localObject2;
    if (hasWakeLockPermission) {}
    for (;;)
    {
      try
      {
        paramContext = (PowerManager)paramContext.getApplicationContext().getSystemService("power");
        if (paramContext == null) {
          continue;
        }
        paramString = paramContext.newWakeLock(paramInt, paramString);
        paramContext = paramString;
        if (paramString != null)
        {
          paramString.setReferenceCounted(false);
          if (paramLong != 0L) {
            continue;
          }
          paramString.acquire();
          paramContext = paramString;
        }
      }
      catch (SecurityException paramContext)
      {
        Parse.logE("com.parse.ParseWakeLock", "Failed to acquire a PowerManager.WakeLock. This isnecessary for reliable handling of pushes. Please add this to your Manifest.xml: <uses-permission android:name=\"android.permission.WAKE_LOCK\" /> ");
        hasWakeLockPermission = false;
        localObject1 = localObject2;
        continue;
        paramContext = null;
        continue;
      }
      localObject1 = paramContext;
      return new ParseWakeLock((PowerManager.WakeLock)localObject1);
      paramString.acquire(paramLong);
      paramContext = paramString;
    }
  }
  
  public void release()
  {
    if (wakeLock != null) {
      wakeLock.release();
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseWakeLock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */