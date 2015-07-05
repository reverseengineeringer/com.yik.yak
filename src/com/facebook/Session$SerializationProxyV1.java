package com.facebook;

import java.io.Serializable;
import java.util.Date;

class Session$SerializationProxyV1
  implements Serializable
{
  private static final long serialVersionUID = 7663436173185080063L;
  private final String applicationId;
  private final Date lastAttemptedTokenExtendDate;
  private final Session.AuthorizationRequest pendingAuthorizationRequest;
  private final boolean shouldAutoPublish;
  private final SessionState state;
  private final AccessToken tokenInfo;
  
  Session$SerializationProxyV1(String paramString, SessionState paramSessionState, AccessToken paramAccessToken, Date paramDate, boolean paramBoolean, Session.AuthorizationRequest paramAuthorizationRequest)
  {
    applicationId = paramString;
    state = paramSessionState;
    tokenInfo = paramAccessToken;
    lastAttemptedTokenExtendDate = paramDate;
    shouldAutoPublish = paramBoolean;
    pendingAuthorizationRequest = paramAuthorizationRequest;
  }
  
  private Object readResolve()
  {
    return new Session(applicationId, state, tokenInfo, lastAttemptedTokenExtendDate, shouldAutoPublish, pendingAuthorizationRequest, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.SerializationProxyV1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */