package com.facebook;

import android.os.Bundle;
import com.facebook.internal.PlatformServiceClient.CompletedListener;

class AuthorizationClient$GetTokenAuthHandler$1
  implements PlatformServiceClient.CompletedListener
{
  AuthorizationClient$GetTokenAuthHandler$1(AuthorizationClient.GetTokenAuthHandler paramGetTokenAuthHandler, AuthorizationClient.AuthorizationRequest paramAuthorizationRequest) {}
  
  public void completed(Bundle paramBundle)
  {
    this$1.getTokenCompleted(val$request, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.GetTokenAuthHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */