package com.facebook;

import java.io.Serializable;
import java.util.List;

class Session$AuthorizationRequest$AuthRequestSerializationProxyV1
  implements Serializable
{
  private static final long serialVersionUID = -8748347685113614927L;
  private final String applicationId;
  private final String defaultAudience;
  private boolean isLegacy;
  private final SessionLoginBehavior loginBehavior;
  private final List<String> permissions;
  private final int requestCode;
  private final String validateSameFbidAsToken;
  
  private Session$AuthorizationRequest$AuthRequestSerializationProxyV1(SessionLoginBehavior paramSessionLoginBehavior, int paramInt, List<String> paramList, String paramString1, boolean paramBoolean, String paramString2, String paramString3)
  {
    loginBehavior = paramSessionLoginBehavior;
    requestCode = paramInt;
    permissions = paramList;
    defaultAudience = paramString1;
    isLegacy = paramBoolean;
    applicationId = paramString2;
    validateSameFbidAsToken = paramString3;
  }
  
  private Object readResolve()
  {
    return new Session.AuthorizationRequest(loginBehavior, requestCode, permissions, defaultAudience, isLegacy, applicationId, validateSameFbidAsToken, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.AuthorizationRequest.AuthRequestSerializationProxyV1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */