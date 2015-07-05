package com.parse.twitter;

import android.app.ProgressDialog;
import android.content.Context;
import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import com.parse.internal.AsyncCallback;
import com.parse.signpost.OAuthConsumer;
import com.parse.signpost.commonshttp.CommonsHttpOAuthConsumer;
import com.parse.signpost.commonshttp.CommonsHttpOAuthProvider;
import org.apache.http.client.methods.HttpUriRequest;

public class Twitter
{
  private static final String ACCESS_TOKEN_URL = "https://api.twitter.com/oauth/access_token";
  private static final String AUTHORIZE_URL = "https://api.twitter.com/oauth/authorize";
  private static final String CALLBACK_URL = "twitter-oauth://complete";
  private static final String REQUEST_TOKEN_URL = "https://api.twitter.com/oauth/request_token";
  private static final String SCREEN_NAME_PARAM = "screen_name";
  private static final String USER_AGENT = "Parse Android SDK";
  private static final String USER_ID_PARAM = "user_id";
  private static final String VERIFIER_PARAM = "oauth_verifier";
  private String authToken;
  private String authTokenSecret;
  private String consumerKey;
  private String consumerSecret;
  private String screenName;
  private String userId;
  
  public Twitter(String paramString1, String paramString2)
  {
    consumerKey = paramString1;
    consumerSecret = paramString2;
  }
  
  public void authorize(Context paramContext, AsyncCallback paramAsyncCallback)
  {
    if ((getConsumerKey() == null) || (getConsumerKey().length() == 0) || (getConsumerSecret() == null) || (getConsumerSecret().length() == 0)) {
      throw new IllegalStateException("Twitter must be initialized with a consumer key and secret before authorization.");
    }
    CommonsHttpOAuthProvider localCommonsHttpOAuthProvider = new CommonsHttpOAuthProvider("https://api.twitter.com/oauth/request_token", "https://api.twitter.com/oauth/access_token", "https://api.twitter.com/oauth/authorize", AndroidHttpClient.newInstance("Parse Android SDK", paramContext));
    CommonsHttpOAuthConsumer localCommonsHttpOAuthConsumer = new CommonsHttpOAuthConsumer(getConsumerKey(), getConsumerSecret());
    ProgressDialog localProgressDialog = new ProgressDialog(paramContext);
    localProgressDialog.setMessage("Loading...");
    new Twitter.1(this, paramAsyncCallback, paramContext, localCommonsHttpOAuthProvider, localCommonsHttpOAuthConsumer, localProgressDialog).execute(new Void[0]);
  }
  
  public String getAuthToken()
  {
    return authToken;
  }
  
  public String getAuthTokenSecret()
  {
    return authTokenSecret;
  }
  
  public String getConsumerKey()
  {
    return consumerKey;
  }
  
  public String getConsumerSecret()
  {
    return consumerSecret;
  }
  
  public String getScreenName()
  {
    return screenName;
  }
  
  public String getUserId()
  {
    return userId;
  }
  
  public void setAuthToken(String paramString)
  {
    authToken = paramString;
  }
  
  public void setAuthTokenSecret(String paramString)
  {
    authTokenSecret = paramString;
  }
  
  public void setConsumerKey(String paramString)
  {
    consumerKey = paramString;
  }
  
  public void setConsumerSecret(String paramString)
  {
    consumerSecret = paramString;
  }
  
  public void setScreenName(String paramString)
  {
    screenName = paramString;
  }
  
  public void setUserId(String paramString)
  {
    userId = paramString;
  }
  
  public void signRequest(HttpUriRequest paramHttpUriRequest)
  {
    CommonsHttpOAuthConsumer localCommonsHttpOAuthConsumer = new CommonsHttpOAuthConsumer(getConsumerKey(), getConsumerSecret());
    localCommonsHttpOAuthConsumer.setTokenWithSecret(getAuthToken(), getAuthTokenSecret());
    try
    {
      localCommonsHttpOAuthConsumer.sign(paramHttpUriRequest);
      return;
    }
    catch (Exception paramHttpUriRequest)
    {
      throw new RuntimeException(paramHttpUriRequest);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.twitter.Twitter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */