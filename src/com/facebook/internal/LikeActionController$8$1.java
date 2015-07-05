package com.facebook.internal;

import com.facebook.LoggingBehavior;
import com.facebook.RequestBatch;
import com.facebook.RequestBatch.Callback;

class LikeActionController$8$1
  implements RequestBatch.Callback
{
  LikeActionController$8$1(LikeActionController.8 param8, LikeActionController.GetOGObjectLikesRequestWrapper paramGetOGObjectLikesRequestWrapper, LikeActionController.GetEngagementRequestWrapper paramGetEngagementRequestWrapper) {}
  
  public void onBatchCompleted(RequestBatch paramRequestBatch)
  {
    if ((val$objectLikesRequest.error != null) || (val$engagementRequest.error != null))
    {
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Unable to refresh like state for id: '%s'", new Object[] { LikeActionController.access$2400(this$1.this$0) });
      return;
    }
    LikeActionController.access$1500(this$1.this$0, val$objectLikesRequest.objectIsLiked, val$engagementRequest.likeCountStringWithLike, val$engagementRequest.likeCountStringWithoutLike, val$engagementRequest.socialSentenceStringWithLike, val$engagementRequest.socialSentenceStringWithoutLike, val$objectLikesRequest.unlikeToken);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.8.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */