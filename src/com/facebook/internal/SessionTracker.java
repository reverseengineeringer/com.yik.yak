package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.Session;
import com.facebook.Session.StatusCallback;

public class SessionTracker
{
  private final LocalBroadcastManager broadcastManager;
  private final Session.StatusCallback callback;
  private boolean isTracking = false;
  private final BroadcastReceiver receiver;
  private Session session;
  
  public SessionTracker(Context paramContext, Session.StatusCallback paramStatusCallback)
  {
    this(paramContext, paramStatusCallback, null);
  }
  
  SessionTracker(Context paramContext, Session.StatusCallback paramStatusCallback, Session paramSession)
  {
    this(paramContext, paramStatusCallback, paramSession, true);
  }
  
  public SessionTracker(Context paramContext, Session.StatusCallback paramStatusCallback, Session paramSession, boolean paramBoolean)
  {
    callback = new SessionTracker.CallbackWrapper(this, paramStatusCallback);
    session = paramSession;
    receiver = new SessionTracker.ActiveSessionBroadcastReceiver(this, null);
    broadcastManager = LocalBroadcastManager.getInstance(paramContext);
    if (paramBoolean) {
      startTracking();
    }
  }
  
  private void addBroadcastReceiver()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_SET");
    localIntentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
    broadcastManager.registerReceiver(receiver, localIntentFilter);
  }
  
  public Session getOpenSession()
  {
    Session localSession = getSession();
    if ((localSession != null) && (localSession.isOpened())) {
      return localSession;
    }
    return null;
  }
  
  public Session getSession()
  {
    if (session == null) {
      return Session.getActiveSession();
    }
    return session;
  }
  
  public boolean isTracking()
  {
    return isTracking;
  }
  
  public boolean isTrackingActiveSession()
  {
    return session == null;
  }
  
  public void setSession(Session paramSession)
  {
    if (paramSession == null)
    {
      if (session != null)
      {
        session.removeCallback(callback);
        session = null;
        addBroadcastReceiver();
        if (getSession() != null) {
          getSession().addCallback(callback);
        }
      }
      return;
    }
    if (session == null)
    {
      Session localSession = Session.getActiveSession();
      if (localSession != null) {
        localSession.removeCallback(callback);
      }
      broadcastManager.unregisterReceiver(receiver);
    }
    for (;;)
    {
      session = paramSession;
      session.addCallback(callback);
      return;
      session.removeCallback(callback);
    }
  }
  
  public void startTracking()
  {
    if (isTracking) {
      return;
    }
    if (session == null) {
      addBroadcastReceiver();
    }
    if (getSession() != null) {
      getSession().addCallback(callback);
    }
    isTracking = true;
  }
  
  public void stopTracking()
  {
    if (!isTracking) {
      return;
    }
    Session localSession = getSession();
    if (localSession != null) {
      localSession.removeCallback(callback);
    }
    broadcastManager.unregisterReceiver(receiver);
    isTracking = false;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.SessionTracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */