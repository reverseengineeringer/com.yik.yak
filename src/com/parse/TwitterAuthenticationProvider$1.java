package com.parse;

import com.parse.internal.AsyncCallback;
import com.parse.twitter.Twitter;
import org.json.JSONException;
import org.json.JSONObject;

class TwitterAuthenticationProvider$1
  implements AsyncCallback
{
  TwitterAuthenticationProvider$1(TwitterAuthenticationProvider paramTwitterAuthenticationProvider, ParseAuthenticationProvider.ParseAuthenticationCallback paramParseAuthenticationCallback) {}
  
  public void onCancel()
  {
    TwitterAuthenticationProvider.access$000(this$0, val$callback);
  }
  
  public void onFailure(Throwable paramThrowable)
  {
    if (TwitterAuthenticationProvider.access$100(this$0) != val$callback) {
      return;
    }
    try
    {
      val$callback.onError(paramThrowable);
      return;
    }
    finally
    {
      TwitterAuthenticationProvider.access$102(this$0, null);
    }
  }
  
  public void onSuccess(Object paramObject)
  {
    if (TwitterAuthenticationProvider.access$100(this$0) != val$callback) {
      return;
    }
    try
    {
      paramObject = this$0.getAuthData(TwitterAuthenticationProvider.access$200(this$0).getUserId(), TwitterAuthenticationProvider.access$200(this$0).getScreenName(), TwitterAuthenticationProvider.access$200(this$0).getAuthToken(), TwitterAuthenticationProvider.access$200(this$0).getAuthTokenSecret());
      val$callback.onSuccess((JSONObject)paramObject);
      return;
    }
    catch (JSONException paramObject)
    {
      val$callback.onError((Throwable)paramObject);
      return;
    }
    finally
    {
      TwitterAuthenticationProvider.access$102(this$0, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.TwitterAuthenticationProvider.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */