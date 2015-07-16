package com.yik.yak.ui.activity;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import com.amplitude.api.Amplitude;
import com.amplitude.api.AmplitudeClient;

public class BaseYikYakActivity
  extends Activity
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
    Amplitude.getInstance().endSession();
  }
  
  protected void onResume()
  {
    super.onResume();
    Amplitude.getInstance().startSession();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.BaseYikYakActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */