package com.yik.yak.ui.activity;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.amplitude.api.Amplitude;
import com.facebook.AppEventsLogger;

public class BaseYikYakFragmentActivity
  extends FragmentActivity
{
  public static boolean a = false;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getResources().getBoolean(2131361801)) {
      setRequestedOrientation(1);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    Amplitude.endSession();
  }
  
  public void onResume()
  {
    super.onResume();
    AppEventsLogger.activateApp(this, "1488368971408413");
    Amplitude.startSession();
  }
  
  public void onStart()
  {
    super.onStart();
    a = true;
  }
  
  public void onStop()
  {
    super.onStop();
    a = false;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.BaseYikYakFragmentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */