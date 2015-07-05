package com.facebook.widget;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class LoginButton$LoginButtonCallback
  implements Session.StatusCallback
{
  private LoginButton$LoginButtonCallback(LoginButton paramLoginButton) {}
  
  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    LoginButton.access$1700(this$0);
    LoginButton.access$1800(this$0);
    if (LoginButton.LoginButtonProperties.access$1900(LoginButton.access$1000(this$0)) != null) {
      LoginButton.LoginButtonProperties.access$1900(LoginButton.access$1000(this$0)).call(paramSession, paramSessionState, paramException);
    }
    while (paramException == null) {
      return;
    }
    this$0.handleError(paramException);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.LoginButton.LoginButtonCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */