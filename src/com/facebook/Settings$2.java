package com.facebook;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

final class Settings$2
  implements Runnable
{
  Settings$2(Context paramContext, String paramString, Request.Callback paramCallback) {}
  
  public void run()
  {
    Response localResponse = Settings.publishInstallAndWaitForResponse(val$applicationContext, val$applicationId);
    if (val$callback != null) {
      new Handler(Looper.getMainLooper()).post(new Settings.2.1(this, localResponse));
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Settings.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */