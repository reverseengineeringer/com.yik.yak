package com.facebook.internal;

import android.os.Bundle;
import com.facebook.AppEventsLogger;
import com.facebook.LoggingBehavior;
import com.facebook.widget.FacebookDialog.Callback;
import com.facebook.widget.FacebookDialog.PendingCall;
import java.util.UUID;

class LikeActionController$5
  implements FacebookDialog.Callback
{
  LikeActionController$5(LikeActionController paramLikeActionController, Bundle paramBundle) {}
  
  public void onComplete(FacebookDialog.PendingCall paramPendingCall, Bundle paramBundle)
  {
    if ((paramBundle == null) || (!paramBundle.containsKey("object_is_liked"))) {
      return;
    }
    boolean bool = paramBundle.getBoolean("object_is_liked");
    Object localObject1 = LikeActionController.access$900(this$0);
    String str1 = LikeActionController.access$1000(this$0);
    if (paramBundle.containsKey("like_count_string"))
    {
      str1 = paramBundle.getString("like_count_string");
      localObject1 = str1;
    }
    Object localObject2 = LikeActionController.access$1100(this$0);
    String str2 = LikeActionController.access$1200(this$0);
    if (paramBundle.containsKey("social_sentence"))
    {
      str2 = paramBundle.getString("social_sentence");
      localObject2 = str2;
    }
    if (paramBundle.containsKey("object_is_liked"))
    {
      paramBundle = paramBundle.getString("unlike_token");
      if (val$analyticsParameters != null) {
        break label189;
      }
    }
    label189:
    for (Bundle localBundle = new Bundle();; localBundle = val$analyticsParameters)
    {
      localBundle.putString("call_id", paramPendingCall.getCallId().toString());
      LikeActionController.access$1400(this$0).logSdkEvent("fb_like_control_dialog_did_succeed", null, localBundle);
      LikeActionController.access$1500(this$0, bool, (String)localObject1, str1, (String)localObject2, str2, paramBundle);
      return;
      paramBundle = LikeActionController.access$1300(this$0);
      break;
    }
  }
  
  public void onError(FacebookDialog.PendingCall paramPendingCall, Exception paramException, Bundle paramBundle)
  {
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Like Dialog failed with error : %s", new Object[] { paramException });
    if (val$analyticsParameters == null) {}
    for (paramException = new Bundle();; paramException = val$analyticsParameters)
    {
      paramException.putString("call_id", paramPendingCall.getCallId().toString());
      LikeActionController.access$1700(this$0, "present_dialog", paramException);
      LikeActionController.access$1800(this$0, "com.facebook.sdk.LikeActionController.DID_ERROR", paramBundle);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */