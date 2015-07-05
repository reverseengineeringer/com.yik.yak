package com.facebook;

import android.app.Activity;
import android.support.v4.app.Fragment;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Session$AuthorizationRequest
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String applicationId;
  private final String authId = UUID.randomUUID().toString();
  private SessionDefaultAudience defaultAudience = SessionDefaultAudience.FRIENDS;
  private boolean isLegacy = false;
  private final Map<String, String> loggingExtras = new HashMap();
  private SessionLoginBehavior loginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
  private List<String> permissions = Collections.emptyList();
  private int requestCode = 64206;
  private final Session.StartActivityDelegate startActivityDelegate;
  private Session.StatusCallback statusCallback;
  private String validateSameFbidAsToken;
  
  Session$AuthorizationRequest(Activity paramActivity)
  {
    startActivityDelegate = new Session.AuthorizationRequest.1(this, paramActivity);
  }
  
  Session$AuthorizationRequest(Fragment paramFragment)
  {
    startActivityDelegate = new Session.AuthorizationRequest.2(this, paramFragment);
  }
  
  private Session$AuthorizationRequest(SessionLoginBehavior paramSessionLoginBehavior, int paramInt, List<String> paramList, String paramString1, boolean paramBoolean, String paramString2, String paramString3)
  {
    startActivityDelegate = new Session.AuthorizationRequest.3(this);
    loginBehavior = paramSessionLoginBehavior;
    requestCode = paramInt;
    permissions = paramList;
    defaultAudience = SessionDefaultAudience.valueOf(paramString1);
    isLegacy = paramBoolean;
    applicationId = paramString2;
    validateSameFbidAsToken = paramString3;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    throw new InvalidObjectException("Cannot readObject, serialization proxy required");
  }
  
  String getApplicationId()
  {
    return applicationId;
  }
  
  String getAuthId()
  {
    return authId;
  }
  
  AuthorizationClient.AuthorizationRequest getAuthorizationClientRequest()
  {
    Session.AuthorizationRequest.4 local4 = new Session.AuthorizationRequest.4(this);
    return new AuthorizationClient.AuthorizationRequest(loginBehavior, requestCode, isLegacy, permissions, defaultAudience, applicationId, validateSameFbidAsToken, local4, authId);
  }
  
  Session.StatusCallback getCallback()
  {
    return statusCallback;
  }
  
  SessionDefaultAudience getDefaultAudience()
  {
    return defaultAudience;
  }
  
  SessionLoginBehavior getLoginBehavior()
  {
    return loginBehavior;
  }
  
  List<String> getPermissions()
  {
    return permissions;
  }
  
  int getRequestCode()
  {
    return requestCode;
  }
  
  Session.StartActivityDelegate getStartActivityDelegate()
  {
    return startActivityDelegate;
  }
  
  String getValidateSameFbidAsToken()
  {
    return validateSameFbidAsToken;
  }
  
  boolean isLegacy()
  {
    return isLegacy;
  }
  
  void setApplicationId(String paramString)
  {
    applicationId = paramString;
  }
  
  AuthorizationRequest setCallback(Session.StatusCallback paramStatusCallback)
  {
    statusCallback = paramStatusCallback;
    return this;
  }
  
  AuthorizationRequest setDefaultAudience(SessionDefaultAudience paramSessionDefaultAudience)
  {
    if (paramSessionDefaultAudience != null) {
      defaultAudience = paramSessionDefaultAudience;
    }
    return this;
  }
  
  public void setIsLegacy(boolean paramBoolean)
  {
    isLegacy = paramBoolean;
  }
  
  AuthorizationRequest setLoginBehavior(SessionLoginBehavior paramSessionLoginBehavior)
  {
    if (paramSessionLoginBehavior != null) {
      loginBehavior = paramSessionLoginBehavior;
    }
    return this;
  }
  
  AuthorizationRequest setPermissions(List<String> paramList)
  {
    if (paramList != null) {
      permissions = paramList;
    }
    return this;
  }
  
  AuthorizationRequest setPermissions(String... paramVarArgs)
  {
    return setPermissions(Arrays.asList(paramVarArgs));
  }
  
  AuthorizationRequest setRequestCode(int paramInt)
  {
    if (paramInt >= 0) {
      requestCode = paramInt;
    }
    return this;
  }
  
  void setValidateSameFbidAsToken(String paramString)
  {
    validateSameFbidAsToken = paramString;
  }
  
  Object writeReplace()
  {
    return new Session.AuthorizationRequest.AuthRequestSerializationProxyV1(loginBehavior, requestCode, permissions, defaultAudience.name(), isLegacy, applicationId, validateSameFbidAsToken, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.AuthorizationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */