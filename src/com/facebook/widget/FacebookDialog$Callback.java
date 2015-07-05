package com.facebook.widget;

import android.os.Bundle;

public abstract interface FacebookDialog$Callback
{
  public abstract void onComplete(FacebookDialog.PendingCall paramPendingCall, Bundle paramBundle);
  
  public abstract void onError(FacebookDialog.PendingCall paramPendingCall, Exception paramException, Bundle paramBundle);
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.Callback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */