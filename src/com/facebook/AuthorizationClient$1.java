package com.facebook;

import android.app.Activity;
import android.content.Intent;

class AuthorizationClient$1
  implements AuthorizationClient.StartActivityDelegate
{
  AuthorizationClient$1(AuthorizationClient paramAuthorizationClient, Activity paramActivity) {}
  
  public Activity getActivityContext()
  {
    return val$activity;
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    val$activity.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */