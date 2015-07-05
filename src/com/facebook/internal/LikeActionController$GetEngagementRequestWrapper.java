package com.facebook.internal;

import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;
import org.json.JSONObject;

class LikeActionController$GetEngagementRequestWrapper
  extends LikeActionController.AbstractRequestWrapper
{
  String likeCountStringWithLike = LikeActionController.access$900(this$0);
  String likeCountStringWithoutLike = LikeActionController.access$1000(this$0);
  String socialSentenceStringWithLike = LikeActionController.access$1100(this$0);
  String socialSentenceStringWithoutLike = LikeActionController.access$1200(this$0);
  
  LikeActionController$GetEngagementRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    super(paramLikeActionController, paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
    setRequest(new Request(LikeActionController.access$2700(paramLikeActionController), paramString, localBundle, HttpMethod.GET));
  }
  
  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error fetching engagement for object '%s' : %s", new Object[] { objectId, paramFacebookRequestError });
    LikeActionController.access$2600(this$0, "get_engagement", paramFacebookRequestError);
  }
  
  protected void processSuccess(Response paramResponse)
  {
    paramResponse = Utility.tryGetJSONObjectFromResponse(paramResponse.getGraphObject(), "engagement");
    if (paramResponse != null)
    {
      likeCountStringWithLike = paramResponse.optString("count_string_with_like", likeCountStringWithLike);
      likeCountStringWithoutLike = paramResponse.optString("count_string_without_like", likeCountStringWithoutLike);
      socialSentenceStringWithLike = paramResponse.optString("social_sentence_with_like", socialSentenceStringWithLike);
      socialSentenceStringWithoutLike = paramResponse.optString("social_sentence_without_like", socialSentenceStringWithoutLike);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.GetEngagementRequestWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */