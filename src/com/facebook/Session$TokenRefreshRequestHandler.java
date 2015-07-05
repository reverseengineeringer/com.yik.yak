package com.facebook;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class Session$TokenRefreshRequestHandler
  extends Handler
{
  private WeakReference<Session.TokenRefreshRequest> refreshRequestWeakReference;
  private WeakReference<Session> sessionWeakReference;
  
  Session$TokenRefreshRequestHandler(Session paramSession, Session.TokenRefreshRequest paramTokenRefreshRequest)
  {
    super(Looper.getMainLooper());
    sessionWeakReference = new WeakReference(paramSession);
    refreshRequestWeakReference = new WeakReference(paramTokenRefreshRequest);
  }
  
  public void handleMessage(Message paramMessage)
  {
    String str = paramMessage.getData().getString("access_token");
    Session localSession = (Session)sessionWeakReference.get();
    if ((localSession != null) && (str != null)) {
      localSession.extendTokenCompleted(paramMessage.getData());
    }
    paramMessage = (Session.TokenRefreshRequest)refreshRequestWeakReference.get();
    if (paramMessage != null)
    {
      Session.access$1500().unbindService(paramMessage);
      Session.TokenRefreshRequest.access$1700(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.TokenRefreshRequestHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */