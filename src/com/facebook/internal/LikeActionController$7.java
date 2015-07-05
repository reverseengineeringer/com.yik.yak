package com.facebook.internal;

import android.os.Bundle;
import com.facebook.AppEventsLogger;
import com.facebook.RequestBatch;
import com.facebook.RequestBatch.Callback;

class LikeActionController$7
  implements RequestBatch.Callback
{
  LikeActionController$7(LikeActionController paramLikeActionController, LikeActionController.PublishUnlikeRequestWrapper paramPublishUnlikeRequestWrapper, Bundle paramBundle) {}
  
  public void onBatchCompleted(RequestBatch paramRequestBatch)
  {
    LikeActionController.access$2002(this$0, false);
    if (val$unlikeRequest.error != null)
    {
      LikeActionController.access$2100(this$0, true);
      return;
    }
    LikeActionController.access$1302(this$0, null);
    LikeActionController.access$2202(this$0, false);
    LikeActionController.access$1400(this$0).logSdkEvent("fb_like_control_did_unlike", null, val$analyticsParameters);
    LikeActionController.access$2300(this$0, val$analyticsParameters);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */