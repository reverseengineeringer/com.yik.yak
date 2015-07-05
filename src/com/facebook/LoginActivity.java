package com.facebook;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.facebook.android.R.id;
import com.facebook.android.R.layout;

public class LoginActivity
  extends Activity
{
  private static final String EXTRA_REQUEST = "request";
  private static final String NULL_CALLING_PKG_ERROR_MSG = "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance.";
  static final String RESULT_KEY = "com.facebook.LoginActivity:Result";
  private static final String SAVED_AUTH_CLIENT = "authorizationClient";
  private static final String SAVED_CALLING_PKG_KEY = "callingPackage";
  private static final String TAG = LoginActivity.class.getName();
  private AuthorizationClient authorizationClient;
  private String callingPackage;
  private AuthorizationClient.AuthorizationRequest request;
  
  private void onAuthClientCompleted(AuthorizationClient.Result paramResult)
  {
    request = null;
    if (code == AuthorizationClient.Result.Code.CANCEL) {}
    for (int i = 0;; i = -1)
    {
      Bundle localBundle = new Bundle();
      localBundle.putSerializable("com.facebook.LoginActivity:Result", paramResult);
      paramResult = new Intent();
      paramResult.putExtras(localBundle);
      setResult(i, paramResult);
      finish();
      return;
    }
  }
  
  static Bundle populateIntentExtras(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("request", paramAuthorizationRequest);
    return localBundle;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    authorizationClient.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.com_facebook_login_activity_layout);
    if (paramBundle != null)
    {
      callingPackage = paramBundle.getString("callingPackage");
      authorizationClient = ((AuthorizationClient)paramBundle.getSerializable("authorizationClient"));
    }
    for (;;)
    {
      authorizationClient.setContext(this);
      authorizationClient.setOnCompletedListener(new LoginActivity.1(this));
      authorizationClient.setBackgroundProcessingListener(new LoginActivity.2(this));
      return;
      callingPackage = getCallingPackage();
      authorizationClient = new AuthorizationClient();
      request = ((AuthorizationClient.AuthorizationRequest)getIntent().getSerializableExtra("request"));
    }
  }
  
  public void onPause()
  {
    super.onPause();
    authorizationClient.cancelCurrentHandler();
    findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
  }
  
  public void onResume()
  {
    super.onResume();
    if (callingPackage == null)
    {
      finish();
      return;
    }
    authorizationClient.startOrContinueAuth(request);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("callingPackage", callingPackage);
    paramBundle.putSerializable("authorizationClient", authorizationClient);
  }
}

/* Location:
 * Qualified Name:     com.facebook.LoginActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */