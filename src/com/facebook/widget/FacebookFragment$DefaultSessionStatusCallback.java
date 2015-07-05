package com.facebook.widget;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class FacebookFragment$DefaultSessionStatusCallback
  implements Session.StatusCallback
{
  private FacebookFragment$DefaultSessionStatusCallback(FacebookFragment paramFacebookFragment) {}
  
  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    this$0.onSessionStateChange(paramSessionState, paramException);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookFragment.DefaultSessionStatusCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */