package com.facebook;

import android.os.Bundle;
import com.facebook.widget.WebDialog.OnCompleteListener;

class AuthorizationClient$WebViewAuthHandler$1
  implements WebDialog.OnCompleteListener
{
  AuthorizationClient$WebViewAuthHandler$1(AuthorizationClient.WebViewAuthHandler paramWebViewAuthHandler, AuthorizationClient.AuthorizationRequest paramAuthorizationRequest) {}
  
  public void onComplete(Bundle paramBundle, FacebookException paramFacebookException)
  {
    this$1.onWebDialogComplete(val$request, paramBundle, paramFacebookException);
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.WebViewAuthHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */