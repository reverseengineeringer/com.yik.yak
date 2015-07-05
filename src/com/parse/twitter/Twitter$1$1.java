package com.parse.twitter;

import android.net.Uri;
import android.os.AsyncTask;
import android.webkit.CookieSyncManager;
import com.parse.internal.AsyncCallback;
import com.parse.oauth.OAuth1FlowDialog.FlowResultHandler;
import com.parse.oauth.OAuth1FlowException;

class Twitter$1$1
  implements OAuth1FlowDialog.FlowResultHandler
{
  Twitter$1$1(Twitter.1 param1) {}
  
  public void onCancel()
  {
    this$1.val$callback.onCancel();
  }
  
  public void onComplete(String paramString)
  {
    CookieSyncManager.getInstance().sync();
    paramString = Uri.parse(paramString).getQueryParameter("oauth_verifier");
    if (paramString == null)
    {
      this$1.val$callback.onCancel();
      return;
    }
    new Twitter.1.1.1(this, paramString).execute(new Void[0]);
  }
  
  public void onError(int paramInt, String paramString1, String paramString2)
  {
    this$1.val$callback.onFailure(new OAuth1FlowException(paramInt, paramString1, paramString2));
  }
}

/* Location:
 * Qualified Name:     com.parse.twitter.Twitter.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */