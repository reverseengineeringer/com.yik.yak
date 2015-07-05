package com.facebook.widget;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionDefaultAudience;
import com.facebook.SessionLoginBehavior;
import com.facebook.internal.SessionAuthorizationType;
import com.facebook.internal.Utility;
import java.util.Collections;
import java.util.List;

class LoginButton$LoginButtonProperties
{
  private SessionAuthorizationType authorizationType = null;
  private SessionDefaultAudience defaultAudience = SessionDefaultAudience.FRIENDS;
  private SessionLoginBehavior loginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
  private LoginButton.OnErrorListener onErrorListener;
  private List<String> permissions = Collections.emptyList();
  private Session.StatusCallback sessionStatusCallback;
  
  private boolean validatePermissions(List<String> paramList, SessionAuthorizationType paramSessionAuthorizationType, Session paramSession)
  {
    if ((SessionAuthorizationType.PUBLISH.equals(paramSessionAuthorizationType)) && (Utility.isNullOrEmpty(paramList))) {
      throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
    }
    if ((paramSession != null) && (paramSession.isOpened()) && (!Utility.isSubset(paramList, paramSession.getPermissions())))
    {
      LoginButton.access$000();
      return false;
    }
    return true;
  }
  
  public void clearPermissions()
  {
    permissions = null;
    authorizationType = null;
  }
  
  public SessionDefaultAudience getDefaultAudience()
  {
    return defaultAudience;
  }
  
  public SessionLoginBehavior getLoginBehavior()
  {
    return loginBehavior;
  }
  
  public LoginButton.OnErrorListener getOnErrorListener()
  {
    return onErrorListener;
  }
  
  List<String> getPermissions()
  {
    return permissions;
  }
  
  public Session.StatusCallback getSessionStatusCallback()
  {
    return sessionStatusCallback;
  }
  
  public void setDefaultAudience(SessionDefaultAudience paramSessionDefaultAudience)
  {
    defaultAudience = paramSessionDefaultAudience;
  }
  
  public void setLoginBehavior(SessionLoginBehavior paramSessionLoginBehavior)
  {
    loginBehavior = paramSessionLoginBehavior;
  }
  
  public void setOnErrorListener(LoginButton.OnErrorListener paramOnErrorListener)
  {
    onErrorListener = paramOnErrorListener;
  }
  
  public void setPublishPermissions(List<String> paramList, Session paramSession)
  {
    if (SessionAuthorizationType.READ.equals(authorizationType)) {
      throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
    }
    if (validatePermissions(paramList, SessionAuthorizationType.PUBLISH, paramSession))
    {
      permissions = paramList;
      authorizationType = SessionAuthorizationType.PUBLISH;
    }
  }
  
  public void setReadPermissions(List<String> paramList, Session paramSession)
  {
    if (SessionAuthorizationType.PUBLISH.equals(authorizationType)) {
      throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
    }
    if (validatePermissions(paramList, SessionAuthorizationType.READ, paramSession))
    {
      permissions = paramList;
      authorizationType = SessionAuthorizationType.READ;
    }
  }
  
  public void setSessionStatusCallback(Session.StatusCallback paramStatusCallback)
  {
    sessionStatusCallback = paramStatusCallback;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.LoginButton.LoginButtonProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */