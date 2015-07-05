package com.facebook.widget;

import android.os.AsyncTask;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.FetchedAppSettings;

class LoginButton$1
  extends AsyncTask<Void, Void, Utility.FetchedAppSettings>
{
  LoginButton$1(LoginButton paramLoginButton, String paramString) {}
  
  protected Utility.FetchedAppSettings doInBackground(Void... paramVarArgs)
  {
    return Utility.queryAppSettings(val$appId, false);
  }
  
  protected void onPostExecute(Utility.FetchedAppSettings paramFetchedAppSettings)
  {
    LoginButton.access$300(this$0, paramFetchedAppSettings);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.LoginButton.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */