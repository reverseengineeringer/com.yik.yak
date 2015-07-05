package com.facebook.android;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class Facebook$1
  implements Session.StatusCallback
{
  Facebook$1(Facebook paramFacebook, Facebook.DialogListener paramDialogListener) {}
  
  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    Facebook.access$000(this$0, paramSession, paramSessionState, paramException, val$listener);
  }
}

/* Location:
 * Qualified Name:     com.facebook.android.Facebook.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */