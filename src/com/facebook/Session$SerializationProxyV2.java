package com.facebook;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

class Session$SerializationProxyV2
  implements Serializable
{
  private static final long serialVersionUID = 7663436173185080064L;
  private final String applicationId;
  private final Date lastAttemptedTokenExtendDate;
  private final Session.AuthorizationRequest pendingAuthorizationRequest;
  private final Set<String> requestedPermissions;
  private final boolean shouldAutoPublish;
  private final SessionState state;
  private final AccessToken tokenInfo;
  
  Session$SerializationProxyV2(String paramString, SessionState paramSessionState, AccessToken paramAccessToken, Date paramDate, boolean paramBoolean, Session.AuthorizationRequest paramAuthorizationRequest, Set<String> paramSet)
  {
    applicationId = paramString;
    state = paramSessionState;
    tokenInfo = paramAccessToken;
    lastAttemptedTokenExtendDate = paramDate;
    shouldAutoPublish = paramBoolean;
    pendingAuthorizationRequest = paramAuthorizationRequest;
    requestedPermissions = paramSet;
  }
  
  private Object readResolve()
  {
    return new Session(applicationId, state, tokenInfo, lastAttemptedTokenExtendDate, shouldAutoPublish, pendingAuthorizationRequest, requestedPermissions, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.SerializationProxyV2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */