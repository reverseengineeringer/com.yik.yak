package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.internal.LikeActionController;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PendingCallStore;
import com.facebook.widget.FacebookDialog;
import com.facebook.widget.FacebookDialog.Callback;
import com.facebook.widget.FacebookDialog.PendingCall;
import java.util.UUID;

public class UiLifecycleHelper
{
  private static final String ACTIVITY_NULL_MESSAGE = "activity cannot be null";
  private static final String DIALOG_CALL_ID_SAVE_KEY = "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey";
  private final Activity activity;
  private AppEventsLogger appEventsLogger;
  private final LocalBroadcastManager broadcastManager;
  private final Session.StatusCallback callback;
  private UUID pendingFacebookDialogCallId;
  private PendingCallStore pendingFacebookDialogCallStore;
  private final BroadcastReceiver receiver;
  
  public UiLifecycleHelper(Activity paramActivity, Session.StatusCallback paramStatusCallback)
  {
    if (paramActivity == null) {
      throw new IllegalArgumentException("activity cannot be null");
    }
    activity = paramActivity;
    callback = paramStatusCallback;
    receiver = new UiLifecycleHelper.ActiveSessionBroadcastReceiver(this, null);
    broadcastManager = LocalBroadcastManager.getInstance(paramActivity);
    pendingFacebookDialogCallStore = PendingCallStore.getInstance();
    Settings.sdkInitialize(paramActivity);
  }
  
  private void cancelPendingAppCall(FacebookDialog.Callback paramCallback)
  {
    if (pendingFacebookDialogCallId == null) {}
    FacebookDialog.PendingCall localPendingCall;
    do
    {
      return;
      localPendingCall = pendingFacebookDialogCallStore.getPendingCallById(pendingFacebookDialogCallId);
    } while (localPendingCall == null);
    if (paramCallback != null)
    {
      Intent localIntent1 = localPendingCall.getRequestIntent();
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("com.facebook.platform.protocol.CALL_ID", localIntent1.getStringExtra("com.facebook.platform.protocol.CALL_ID"));
      localIntent2.putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", localIntent1.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION"));
      localIntent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", localIntent1.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0));
      localIntent2.putExtra("com.facebook.platform.status.ERROR_TYPE", "UnknownError");
      FacebookDialog.handleActivityResult(activity, localPendingCall, localPendingCall.getRequestCode(), localIntent2, paramCallback);
    }
    stopTrackingPendingAppCall();
  }
  
  private boolean handleFacebookDialogActivityResult(int paramInt1, int paramInt2, Intent paramIntent, FacebookDialog.Callback paramCallback)
  {
    if (pendingFacebookDialogCallId == null) {}
    FacebookDialog.PendingCall localPendingCall;
    do
    {
      return false;
      localPendingCall = pendingFacebookDialogCallStore.getPendingCallById(pendingFacebookDialogCallId);
    } while ((localPendingCall == null) || (localPendingCall.getRequestCode() != paramInt1));
    if (paramIntent == null)
    {
      cancelPendingAppCall(paramCallback);
      return true;
    }
    UUID localUUID = NativeProtocol.getCallIdFromIntent(paramIntent);
    if ((localUUID != null) && (pendingFacebookDialogCallId.equals(localUUID))) {
      FacebookDialog.handleActivityResult(activity, localPendingCall, paramInt1, paramIntent, paramCallback);
    }
    for (;;)
    {
      stopTrackingPendingAppCall();
      return true;
      cancelPendingAppCall(paramCallback);
    }
  }
  
  private void stopTrackingPendingAppCall()
  {
    pendingFacebookDialogCallStore.stopTrackingPendingCall(pendingFacebookDialogCallId);
    pendingFacebookDialogCallId = null;
  }
  
  public AppEventsLogger getAppEventsLogger()
  {
    Session localSession = Session.getActiveSession();
    if (localSession == null) {
      return null;
    }
    if ((appEventsLogger == null) || (!appEventsLogger.isValidForSession(localSession)))
    {
      if (appEventsLogger != null) {
        AppEventsLogger.onContextStop();
      }
      appEventsLogger = AppEventsLogger.newLogger(activity, localSession);
    }
    return appEventsLogger;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    onActivityResult(paramInt1, paramInt2, paramIntent, null);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent, FacebookDialog.Callback paramCallback)
  {
    Session localSession = Session.getActiveSession();
    if (localSession != null) {
      localSession.onActivityResult(activity, paramInt1, paramInt2, paramIntent);
    }
    if (LikeActionController.handleOnActivityResult(activity, paramInt1, paramInt2, paramIntent)) {
      return;
    }
    handleFacebookDialogActivityResult(paramInt1, paramInt2, paramIntent, paramCallback);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject1 = Session.getActiveSession();
    if (localObject1 == null)
    {
      if (paramBundle != null) {
        localObject1 = Session.restoreSession(activity, null, callback, paramBundle);
      }
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new Session(activity);
      }
      Session.setActiveSession((Session)localObject2);
    }
    if (paramBundle != null)
    {
      localObject1 = paramBundle.getString("com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey");
      if (localObject1 != null) {
        pendingFacebookDialogCallId = UUID.fromString((String)localObject1);
      }
      pendingFacebookDialogCallStore.restoreFromSavedInstanceState(paramBundle);
    }
  }
  
  public void onDestroy() {}
  
  public void onPause()
  {
    broadcastManager.unregisterReceiver(receiver);
    if (callback != null)
    {
      Session localSession = Session.getActiveSession();
      if (localSession != null) {
        localSession.removeCallback(callback);
      }
    }
  }
  
  public void onResume()
  {
    Object localObject = Session.getActiveSession();
    if (localObject != null)
    {
      if (callback != null) {
        ((Session)localObject).addCallback(callback);
      }
      if (SessionState.CREATED_TOKEN_LOADED.equals(((Session)localObject).getState())) {
        ((Session)localObject).openForRead(null);
      }
    }
    localObject = new IntentFilter();
    ((IntentFilter)localObject).addAction("com.facebook.sdk.ACTIVE_SESSION_SET");
    ((IntentFilter)localObject).addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
    broadcastManager.registerReceiver(receiver, (IntentFilter)localObject);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Session.saveSession(Session.getActiveSession(), paramBundle);
    if (pendingFacebookDialogCallId != null) {
      paramBundle.putString("com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey", pendingFacebookDialogCallId.toString());
    }
    pendingFacebookDialogCallStore.saveInstanceState(paramBundle);
  }
  
  public void onStop() {}
  
  public void trackPendingDialogCall(FacebookDialog.PendingCall paramPendingCall)
  {
    if (pendingFacebookDialogCallId != null) {
      cancelPendingAppCall(null);
    }
    if (paramPendingCall != null)
    {
      pendingFacebookDialogCallId = paramPendingCall.getCallId();
      pendingFacebookDialogCallStore.trackPendingCall(paramPendingCall);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.UiLifecycleHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */