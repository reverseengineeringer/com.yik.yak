package com.parse;

import android.content.Context;
import com.parse.twitter.Twitter;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

class TwitterAuthenticationProvider
  implements ParseAuthenticationProvider
{
  private static final String AUTH_TOKEN_KEY = "auth_token";
  private static final String AUTH_TOKEN_SECRET_KEY = "auth_token_secret";
  private static final String CONSUMER_KEY_KEY = "consumer_key";
  private static final String CONSUMER_SECRET_KEY = "consumer_secret";
  private static final String ID_KEY = "id";
  private static final String SCREEN_NAME_KEY = "screen_name";
  private WeakReference<Context> baseContext;
  private ParseAuthenticationProvider.ParseAuthenticationCallback currentOperationCallback;
  private final Twitter twitter;
  
  public TwitterAuthenticationProvider(Twitter paramTwitter)
  {
    twitter = paramTwitter;
  }
  
  private void handleCancel(ParseAuthenticationProvider.ParseAuthenticationCallback paramParseAuthenticationCallback)
  {
    if ((currentOperationCallback != paramParseAuthenticationCallback) || (paramParseAuthenticationCallback == null)) {
      return;
    }
    try
    {
      paramParseAuthenticationCallback.onCancel();
      return;
    }
    finally
    {
      currentOperationCallback = null;
    }
  }
  
  public void authenticate(ParseAuthenticationProvider.ParseAuthenticationCallback paramParseAuthenticationCallback)
  {
    if (currentOperationCallback != null) {
      cancel();
    }
    currentOperationCallback = paramParseAuthenticationCallback;
    if (baseContext == null) {}
    for (Context localContext = null; localContext == null; localContext = (Context)baseContext.get()) {
      throw new IllegalStateException("Context must be non-null for Twitter authentication to proceed.");
    }
    twitter.authorize(localContext, new TwitterAuthenticationProvider.1(this, paramParseAuthenticationCallback));
  }
  
  public void cancel()
  {
    handleCancel(currentOperationCallback);
  }
  
  public void deauthenticate()
  {
    twitter.setAuthToken(null);
    twitter.setAuthTokenSecret(null);
    twitter.setScreenName(null);
    twitter.setUserId(null);
  }
  
  public JSONObject getAuthData(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("auth_token", paramString3);
    localJSONObject.put("auth_token_secret", paramString4);
    localJSONObject.put("id", paramString1);
    localJSONObject.put("screen_name", paramString2);
    localJSONObject.put("consumer_key", twitter.getConsumerKey());
    localJSONObject.put("consumer_secret", twitter.getConsumerSecret());
    return localJSONObject;
  }
  
  public String getAuthType()
  {
    return "twitter";
  }
  
  public Twitter getTwitter()
  {
    return twitter;
  }
  
  public boolean restoreAuthentication(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
    {
      twitter.setAuthToken(null);
      twitter.setAuthTokenSecret(null);
      twitter.setScreenName(null);
      twitter.setUserId(null);
      return true;
    }
    try
    {
      twitter.setAuthToken(paramJSONObject.getString("auth_token"));
      twitter.setAuthTokenSecret(paramJSONObject.getString("auth_token_secret"));
      twitter.setUserId(paramJSONObject.getString("id"));
      twitter.setScreenName(paramJSONObject.getString("screen_name"));
      return true;
    }
    catch (Exception paramJSONObject) {}
    return false;
  }
  
  public void setContext(Context paramContext)
  {
    baseContext = new WeakReference(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.parse.TwitterAuthenticationProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */