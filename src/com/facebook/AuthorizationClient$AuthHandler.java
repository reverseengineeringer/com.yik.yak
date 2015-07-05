package com.facebook;

import android.content.Intent;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

abstract class AuthorizationClient$AuthHandler
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  Map<String, String> methodLoggingExtras;
  
  AuthorizationClient$AuthHandler(AuthorizationClient paramAuthorizationClient) {}
  
  protected void addLoggingExtra(String paramString, Object paramObject)
  {
    if (methodLoggingExtras == null) {
      methodLoggingExtras = new HashMap();
    }
    Map localMap = methodLoggingExtras;
    if (paramObject == null) {}
    for (paramObject = null;; paramObject = paramObject.toString())
    {
      localMap.put(paramString, paramObject);
      return;
    }
  }
  
  void cancel() {}
  
  abstract String getNameForLogging();
  
  boolean needsInternetPermission()
  {
    return false;
  }
  
  boolean needsRestart()
  {
    return false;
  }
  
  boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    return false;
  }
  
  abstract boolean tryAuthorize(AuthorizationClient.AuthorizationRequest paramAuthorizationRequest);
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.AuthHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */