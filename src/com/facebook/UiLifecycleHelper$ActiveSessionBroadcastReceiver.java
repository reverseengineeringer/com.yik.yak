package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class UiLifecycleHelper$ActiveSessionBroadcastReceiver
  extends BroadcastReceiver
{
  private UiLifecycleHelper$ActiveSessionBroadcastReceiver(UiLifecycleHelper paramUiLifecycleHelper) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.facebook.sdk.ACTIVE_SESSION_SET".equals(paramIntent.getAction()))
    {
      paramContext = Session.getActiveSession();
      if ((paramContext != null) && (UiLifecycleHelper.access$100(this$0) != null)) {
        paramContext.addCallback(UiLifecycleHelper.access$100(this$0));
      }
    }
    do
    {
      do
      {
        return;
      } while (!"com.facebook.sdk.ACTIVE_SESSION_UNSET".equals(paramIntent.getAction()));
      paramContext = Session.getActiveSession();
    } while ((paramContext == null) || (UiLifecycleHelper.access$100(this$0) == null));
    paramContext.removeCallback(UiLifecycleHelper.access$100(this$0));
  }
}

/* Location:
 * Qualified Name:     com.facebook.UiLifecycleHelper.ActiveSessionBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */