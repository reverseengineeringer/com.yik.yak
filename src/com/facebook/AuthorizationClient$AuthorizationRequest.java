package com.facebook;

import java.io.Serializable;
import java.util.List;

class AuthorizationClient$AuthorizationRequest
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final String applicationId;
  private final String authId;
  private final SessionDefaultAudience defaultAudience;
  private boolean isLegacy = false;
  private boolean isRerequest = false;
  private final SessionLoginBehavior loginBehavior;
  private List<String> permissions;
  private final String previousAccessToken;
  private final int requestCode;
  private final transient AuthorizationClient.StartActivityDelegate startActivityDelegate;
  
  AuthorizationClient$AuthorizationRequest(SessionLoginBehavior paramSessionLoginBehavior, int paramInt, boolean paramBoolean, List<String> paramList, SessionDefaultAudience paramSessionDefaultAudience, String paramString1, String paramString2, AuthorizationClient.StartActivityDelegate paramStartActivityDelegate, String paramString3)
  {
    loginBehavior = paramSessionLoginBehavior;
    requestCode = paramInt;
    isLegacy = paramBoolean;
    permissions = paramList;
    defaultAudience = paramSessionDefaultAudience;
    applicationId = paramString1;
    previousAccessToken = paramString2;
    startActivityDelegate = paramStartActivityDelegate;
    authId = paramString3;
  }
  
  String getApplicationId()
  {
    return applicationId;
  }
  
  String getAuthId()
  {
    return authId;
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
  
  String getPreviousAccessToken()
  {
    return previousAccessToken;
  }
  
  int getRequestCode()
  {
    return requestCode;
  }
  
  AuthorizationClient.StartActivityDelegate getStartActivityDelegate()
  {
    return startActivityDelegate;
  }
  
  boolean isLegacy()
  {
    return isLegacy;
  }
  
  boolean isRerequest()
  {
    return isRerequest;
  }
  
  boolean needsNewTokenValidation()
  {
    return (previousAccessToken != null) && (!isLegacy);
  }
  
  void setIsLegacy(boolean paramBoolean)
  {
    isLegacy = paramBoolean;
  }
  
  void setPermissions(List<String> paramList)
  {
    permissions = paramList;
  }
  
  void setRerequest(boolean paramBoolean)
  {
    isRerequest = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.AuthorizationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */