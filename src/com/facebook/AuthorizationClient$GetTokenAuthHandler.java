package com.facebook;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

class AuthorizationClient$GetTokenAuthHandler
  extends AuthorizationClient.AuthHandler
{
  private static final long serialVersionUID = 1L;
  private transient GetTokenClient getTokenClient;
  
  AuthorizationClient$GetTokenAuthHandler(AuthorizationClient paramAuthorizationClient)
  {
    super(paramAuthorizationClient);
  }
  
  void cancel()
  {
    if (getTokenClient != null)
    {
      getTokenClient.cancel();
      getTokenClient = null;
    }
  }
  
  String getNameForLogging()
  {
    return "get_token";
  }
  
  void getTokenCompleted(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest, Bundle paramBundle)
  {
    getTokenClient = null;
    AuthorizationClient.access$000(this$0);
    if (paramBundle != null)
    {
      ArrayList localArrayList = paramBundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
      Object localObject = paramAuthorizationRequest.getPermissions();
      if ((localArrayList != null) && ((localObject == null) || (localArrayList.containsAll((Collection)localObject))))
      {
        paramAuthorizationRequest = AccessToken.createFromNativeLogin(paramBundle, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE);
        paramAuthorizationRequest = AuthorizationClient.Result.createTokenResult(this$0.pendingRequest, paramAuthorizationRequest);
        this$0.completeAndValidate(paramAuthorizationRequest);
        return;
      }
      paramBundle = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (!localArrayList.contains(str)) {
          paramBundle.add(str);
        }
      }
      if (!paramBundle.isEmpty()) {
        addLoggingExtra("new_permissions", TextUtils.join(",", paramBundle));
      }
      paramAuthorizationRequest.setPermissions(paramBundle);
    }
    this$0.tryNextHandler();
  }
  
  boolean needsRestart()
  {
    return getTokenClient == null;
  }
  
  boolean tryAuthorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest)
  {
    getTokenClient = new GetTokenClient(this$0.context, paramAuthorizationRequest.getApplicationId());
    if (!getTokenClient.start()) {
      return false;
    }
    AuthorizationClient.access$300(this$0);
    paramAuthorizationRequest = new AuthorizationClient.GetTokenAuthHandler.1(this, paramAuthorizationRequest);
    getTokenClient.setCompletedListener(paramAuthorizationRequest);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.GetTokenAuthHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */