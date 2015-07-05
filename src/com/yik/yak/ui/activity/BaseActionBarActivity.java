package com.yik.yak.ui.activity;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import com.amplitude.api.Amplitude;
import com.facebook.AppEventsLogger;

public class BaseActionBarActivity
  extends ActionBarActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getResources().getBoolean(2131361801)) {
      setRequestedOrientation(1);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    Amplitude.endSession();
  }
  
  protected void onResume()
  {
    super.onResume();
    AppEventsLogger.activateApp(this, "1488368971408413");
    Amplitude.startSession();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.BaseActionBarActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */