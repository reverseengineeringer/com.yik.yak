package com.facebook;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;

class Session$AuthorizationRequest$2
  implements Session.StartActivityDelegate
{
  Session$AuthorizationRequest$2(Session.AuthorizationRequest paramAuthorizationRequest, Fragment paramFragment) {}
  
  public Activity getActivityContext()
  {
    return val$fragment.getActivity();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    val$fragment.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.AuthorizationRequest.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */