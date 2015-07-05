package com.facebook;

import android.app.Activity;
import android.content.Intent;

class AuthorizationClient$2
  implements AuthorizationClient.StartActivityDelegate
{
  AuthorizationClient$2(AuthorizationClient paramAuthorizationClient) {}
  
  public Activity getActivityContext()
  {
    return this$0.pendingRequest.getStartActivityDelegate().getActivityContext();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    this$0.pendingRequest.getStartActivityDelegate().startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */