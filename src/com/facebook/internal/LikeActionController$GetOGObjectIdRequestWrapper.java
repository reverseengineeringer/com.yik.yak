package com.facebook.internal;

import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;
import org.json.JSONObject;

class LikeActionController$GetOGObjectIdRequestWrapper
  extends LikeActionController.AbstractRequestWrapper
{
  String verifiedObjectId;
  
  LikeActionController$GetOGObjectIdRequestWrapper(LikeActionController paramLikeActionController, String paramString)
  {
    super(paramLikeActionController, paramString);
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "og_object.fields(id)");
    localBundle.putString("ids", paramString);
    setRequest(new Request(LikeActionController.access$2700(paramLikeActionController), "", localBundle, HttpMethod.GET));
  }
  
  protected void processError(FacebookRequestError paramFacebookRequestError)
  {
    if (paramFacebookRequestError.getErrorMessage().contains("og_object"))
    {
      error = null;
      return;
    }
    Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1600(), "Error getting the FB id for object '%s' : %s", new Object[] { objectId, paramFacebookRequestError });
  }
  
  protected void processSuccess(Response paramResponse)
  {
    paramResponse = Utility.tryGetJSONObjectFromResponse(paramResponse.getGraphObject(), objectId);
    if (paramResponse != null)
    {
      paramResponse = paramResponse.optJSONObject("og_object");
      if (paramResponse != null) {
        verifiedObjectId = paramResponse.optString("id");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.GetOGObjectIdRequestWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */