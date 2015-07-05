package com.facebook;

import android.app.Activity;
import android.content.Intent;

class Session$AuthorizationRequest$4
  implements AuthorizationClient.StartActivityDelegate
{
  Session$AuthorizationRequest$4(Session.AuthorizationRequest paramAuthorizationRequest) {}
  
  public Activity getActivityContext()
  {
    return Session.AuthorizationRequest.access$1800(this$0).getActivityContext();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    Session.AuthorizationRequest.access$1800(this$0).startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.AuthorizationRequest.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */