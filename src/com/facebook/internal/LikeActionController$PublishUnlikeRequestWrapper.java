package com.facebook.internal;

import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;

class LikeActionController$PublishUnlikeRequestWrapper
  extends LikeActionController.AbstractRequestWrapper
{
  private String unlikeToken;
  
  LikeActionController$PublishUnlikeRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    super(paramLikeActionController, null);
    unlikeToken = paramString;
    setRequest(new Request(LikeActionController.access$2700(paramLikeActionController), paramString, null, HttpMethod.DELETE));
  }
  
  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error unliking object with unlike token '%s' : %s", new Object[] { unlikeToken, paramFacebookRequestError });
    LikeActionController.access$2600(this$0, "publish_unlike", paramFacebookRequestError);
  }
  
  protected void processSuccess(Response paramResponse) {}
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.PublishUnlikeRequestWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */