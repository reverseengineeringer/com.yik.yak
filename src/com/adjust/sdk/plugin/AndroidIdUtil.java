package com.adjust.sdk.plugin;

import android.content.Context;
import android.provider.Settings.Secure;

public class AndroidIdUtil
{
  public static String getAndroidId(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.plugin.AndroidIdUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */