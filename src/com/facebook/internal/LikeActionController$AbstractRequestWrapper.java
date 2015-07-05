package com.facebook.internal;

import com.facebook.FacebookRequestError;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.RequestBatch;
import com.facebook.Response;

abstract class LikeActionController$AbstractRequestWrapper
{
  FacebookRequestError error;
  protected String objectId;
  private Request request;
  
  protected LikeActionController$AbstractRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    objectId = paramString;
  }
  
  void addToBatch(RequestBatch paramRequestBatch)
  {
    paramRequestBatch.add(request);
  }
  
  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error running request for object '%s' : %s", new Object[] { objectId, paramFacebookRequestError });
  }
  
  protected abstract void processSuccess(Response paramResponse);
  
  protected void setRequest(Request paramRequest)
  {
    request = paramRequest;
    paramRequest.setVersion("v2.2");
    paramRequest.setCallback(new LikeActionController.AbstractRequestWrapper.1(this));
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.AbstractRequestWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */