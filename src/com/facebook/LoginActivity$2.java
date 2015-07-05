package com.facebook;

import android.view.View;
import com.facebook.android.R.id;

class LoginActivity$2
  implements AuthorizationClient.BackgroundProcessingListener
{
  LoginActivity$2(LoginActivity paramLoginActivity) {}
  
  public void onBackgroundProcessingStarted()
  {
    this$0.findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(0);
  }
  
  public void onBackgroundProcessingStopped()
  {
    this$0.findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.facebook.LoginActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */