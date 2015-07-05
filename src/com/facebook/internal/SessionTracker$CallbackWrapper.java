package com.facebook.internal;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class SessionTracker$CallbackWrapper
  implements Session.StatusCallback
{
  private final Session.StatusCallback wrapped;
  
  public SessionTracker$CallbackWrapper(SessionTracker paramSessionTracker, Session.StatusCallback paramStatusCallback)
  {
    wrapped = paramStatusCallback;
  }
  
  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    if ((wrapped != null) && (this$0.isTracking())) {
      wrapped.call(paramSession, paramSessionState, paramException);
    }
    if ((paramSession == SessionTracker.access$200(this$0)) && (paramSessionState.isClosed())) {
      this$0.setSession(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.SessionTracker.CallbackWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */