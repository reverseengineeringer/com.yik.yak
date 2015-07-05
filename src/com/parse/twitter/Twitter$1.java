package com.parse.twitter;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.webkit.CookieSyncManager;
import com.parse.internal.AsyncCallback;
import com.parse.oauth.OAuth1FlowDialog;
import com.parse.signpost.OAuthConsumer;
import com.parse.signpost.OAuthProvider;

class Twitter$1
  extends AsyncTask<Void, Void, String>
{
  private Throwable error;
  
  Twitter$1(Twitter paramTwitter, AsyncCallback paramAsyncCallback, Context paramContext, OAuthProvider paramOAuthProvider, OAuthConsumer paramOAuthConsumer, ProgressDialog paramProgressDialog) {}
  
  protected String doInBackground(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = val$provider.retrieveRequestToken(val$consumer, "twitter-oauth://complete");
      return paramVarArgs;
    }
    catch (Throwable paramVarArgs)
    {
      error = paramVarArgs;
    }
    return null;
  }
  
  protected void onPostExecute(String paramString)
  {
    super.onPostExecute(paramString);
    try
    {
      if (error != null)
      {
        val$callback.onFailure(error);
        return;
      }
      CookieSyncManager.createInstance(val$context);
      new OAuth1FlowDialog(val$context, paramString, "twitter-oauth://complete", "api.twitter", new Twitter.1.1(this)).show();
      return;
    }
    finally
    {
      val$progress.dismiss();
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    val$progress.show();
  }
}

/* Location:
 * Qualified Name:     com.parse.twitter.Twitter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */