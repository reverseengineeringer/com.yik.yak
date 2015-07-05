package com.facebook.internal;

import com.facebook.LoggingBehavior;
import com.facebook.RequestBatch;
import com.facebook.RequestBatch.Callback;

class LikeActionController$10
  implements RequestBatch.Callback
{
  LikeActionController$10(LikeActionController paramLikeActionController, LikeActionController.GetOGObjectIdRequestWrapper paramGetOGObjectIdRequestWrapper, LikeActionController.GetPageIdRequestWrapper paramGetPageIdRequestWrapper, LikeActionController.RequestCompletionCallback paramRequestCompletionCallback) {}
  
  public void onBatchCompleted(RequestBatch paramRequestBatch)
  {
    LikeActionController.access$1902(this$0, val$objectIdRequest.verifiedObjectId);
    if (Utility.isNullOrEmpty(LikeActionController.access$1900(this$0)))
    {
      LikeActionController.access$1902(this$0, val$pageIdRequest.verifiedObjectId);
      LikeActionController.access$2502(this$0, val$pageIdRequest.objectIsPage);
    }
    LikeActionController localLikeActionController;
    if (Utility.isNullOrEmpty(LikeActionController.access$1900(this$0)))
    {
      Logger.log(LoggingBehavior.DEVELOPER_ERRORS, LikeActionController.access$1600(), "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", new Object[] { LikeActionController.access$2400(this$0) });
      localLikeActionController = this$0;
      if (val$pageIdRequest.error == null) {
        break label143;
      }
    }
    label143:
    for (paramRequestBatch = val$pageIdRequest.error;; paramRequestBatch = val$objectIdRequest.error)
    {
      LikeActionController.access$2600(localLikeActionController, "get_verified_id", paramRequestBatch);
      if (val$completionHandler != null) {
        val$completionHandler.onComplete();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */