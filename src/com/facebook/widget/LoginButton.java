package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.facebook.FacebookException;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionDefaultAudience;
import com.facebook.SessionLoginBehavior;
import com.facebook.android.R.color;
import com.facebook.android.R.dimen;
import com.facebook.android.R.drawable;
import com.facebook.android.R.string;
import com.facebook.android.R.styleable;
import com.facebook.internal.SessionTracker;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.FetchedAppSettings;
import com.facebook.model.GraphUser;
import java.util.Arrays;
import java.util.List;

public class LoginButton
  extends Button
{
  private static final String TAG = LoginButton.class.getName();
  private String applicationId = null;
  private boolean confirmLogout;
  private boolean fetchUserInfo;
  private View.OnClickListener listenerCallback;
  private String loginLogoutEventName = "fb_login_view_usage";
  private String loginText;
  private String logoutText;
  private boolean nuxChecked;
  private long nuxDisplayTime = 6000L;
  private LoginButton.ToolTipMode nuxMode = LoginButton.ToolTipMode.DEFAULT;
  private ToolTipPopup nuxPopup;
  private ToolTipPopup.Style nuxStyle = ToolTipPopup.Style.BLUE;
  private Fragment parentFragment;
  private LoginButton.LoginButtonProperties properties = new LoginButton.LoginButtonProperties();
  private SessionTracker sessionTracker;
  private GraphUser user = null;
  private LoginButton.UserInfoChangedCallback userInfoChangedCallback;
  private Session userInfoSession = null;
  
  public LoginButton(Context paramContext)
  {
    super(paramContext);
    initializeActiveSessionWithCachedToken(paramContext);
    finishInit();
  }
  
  public LoginButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (paramAttributeSet.getStyleAttribute() == 0)
    {
      setGravity(17);
      setTextColor(getResources().getColor(R.color.com_facebook_loginview_text_color));
      setTextSize(0, getResources().getDimension(R.dimen.com_facebook_loginview_text_size));
      setTypeface(Typeface.DEFAULT_BOLD);
      if (!isInEditMode()) {
        break label156;
      }
      setBackgroundColor(getResources().getColor(R.color.com_facebook_blue));
      loginText = "Log in with Facebook";
    }
    for (;;)
    {
      parseAttributes(paramAttributeSet);
      if (!isInEditMode()) {
        initializeActiveSessionWithCachedToken(paramContext);
      }
      return;
      label156:
      setBackgroundResource(R.drawable.com_facebook_button_blue);
      setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_inverse_icon, 0, 0, 0);
      setCompoundDrawablePadding(getResources().getDimensionPixelSize(R.dimen.com_facebook_loginview_compound_drawable_padding));
      setPadding(getResources().getDimensionPixelSize(R.dimen.com_facebook_loginview_padding_left), getResources().getDimensionPixelSize(R.dimen.com_facebook_loginview_padding_top), getResources().getDimensionPixelSize(R.dimen.com_facebook_loginview_padding_right), getResources().getDimensionPixelSize(R.dimen.com_facebook_loginview_padding_bottom));
    }
  }
  
  public LoginButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    parseAttributes(paramAttributeSet);
    initializeActiveSessionWithCachedToken(paramContext);
  }
  
  private void checkNuxSettings()
  {
    if (nuxMode == LoginButton.ToolTipMode.DISPLAY_ALWAYS)
    {
      displayNux(getResources().getString(R.string.com_facebook_tooltip_default));
      return;
    }
    new LoginButton.1(this, Utility.getMetadataApplicationId(getContext())).execute((Void[])null);
  }
  
  private void displayNux(String paramString)
  {
    nuxPopup = new ToolTipPopup(paramString, this);
    nuxPopup.setStyle(nuxStyle);
    nuxPopup.setNuxDisplayTime(nuxDisplayTime);
    nuxPopup.show();
  }
  
  private void fetchUserInfo()
  {
    if (fetchUserInfo)
    {
      Session localSession = sessionTracker.getOpenSession();
      if (localSession == null) {
        break label57;
      }
      if (localSession != userInfoSession)
      {
        Request.executeBatchAsync(new Request[] { Request.newMeRequest(localSession, new LoginButton.2(this, localSession)) });
        userInfoSession = localSession;
      }
    }
    label57:
    do
    {
      return;
      user = null;
    } while (userInfoChangedCallback == null);
    userInfoChangedCallback.onUserInfoFetched(user);
  }
  
  private void finishInit()
  {
    super.setOnClickListener(new LoginButton.LoginClickListener(this, null));
    setButtonText();
    if (!isInEditMode())
    {
      sessionTracker = new SessionTracker(getContext(), new LoginButton.LoginButtonCallback(this, null), null, false);
      fetchUserInfo();
    }
  }
  
  private boolean initializeActiveSessionWithCachedToken(Context paramContext)
  {
    if (paramContext == null) {}
    do
    {
      return false;
      Session localSession = Session.getActiveSession();
      if (localSession != null) {
        return localSession.isOpened();
      }
    } while ((Utility.getMetadataApplicationId(paramContext) == null) || (Session.openActiveSessionFromCache(paramContext) == null));
    return true;
  }
  
  private void parseAttributes(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.com_facebook_login_view);
    confirmLogout = paramAttributeSet.getBoolean(R.styleable.com_facebook_login_view_confirm_logout, true);
    fetchUserInfo = paramAttributeSet.getBoolean(R.styleable.com_facebook_login_view_fetch_user_info, true);
    loginText = paramAttributeSet.getString(R.styleable.com_facebook_login_view_login_text);
    logoutText = paramAttributeSet.getString(R.styleable.com_facebook_login_view_logout_text);
    paramAttributeSet.recycle();
  }
  
  private void setButtonText()
  {
    if ((sessionTracker != null) && (sessionTracker.getOpenSession() != null))
    {
      if (logoutText != null) {}
      for (str = logoutText;; str = getResources().getString(R.string.com_facebook_loginview_log_out_button))
      {
        setText(str);
        return;
      }
    }
    if (loginText != null) {}
    for (String str = loginText;; str = getResources().getString(R.string.com_facebook_loginview_log_in_button))
    {
      setText(str);
      return;
    }
  }
  
  private void showNuxPerSettings(Utility.FetchedAppSettings paramFetchedAppSettings)
  {
    if ((paramFetchedAppSettings != null) && (paramFetchedAppSettings.getNuxEnabled()) && (getVisibility() == 0)) {
      displayNux(paramFetchedAppSettings.getNuxContent());
    }
  }
  
  public void clearPermissions()
  {
    properties.clearPermissions();
  }
  
  public void dismissToolTip()
  {
    if (nuxPopup != null)
    {
      nuxPopup.dismiss();
      nuxPopup = null;
    }
  }
  
  public SessionDefaultAudience getDefaultAudience()
  {
    return properties.getDefaultAudience();
  }
  
  public SessionLoginBehavior getLoginBehavior()
  {
    return properties.getLoginBehavior();
  }
  
  public LoginButton.OnErrorListener getOnErrorListener()
  {
    return properties.getOnErrorListener();
  }
  
  List<String> getPermissions()
  {
    return properties.getPermissions();
  }
  
  public Session.StatusCallback getSessionStatusCallback()
  {
    return properties.getSessionStatusCallback();
  }
  
  public long getToolTipDisplayTime()
  {
    return nuxDisplayTime;
  }
  
  public LoginButton.ToolTipMode getToolTipMode()
  {
    return nuxMode;
  }
  
  public LoginButton.UserInfoChangedCallback getUserInfoChangedCallback()
  {
    return userInfoChangedCallback;
  }
  
  void handleError(Exception paramException)
  {
    if (LoginButton.LoginButtonProperties.access$2000(properties) != null)
    {
      if ((paramException instanceof FacebookException)) {
        LoginButton.LoginButtonProperties.access$2000(properties).onError((FacebookException)paramException);
      }
    }
    else {
      return;
    }
    LoginButton.LoginButtonProperties.access$2000(properties).onError(new FacebookException(paramException));
  }
  
  public boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Session localSession = sessionTracker.getSession();
    if (localSession != null) {
      return localSession.onActivityResult((Activity)getContext(), paramInt1, paramInt2, paramIntent);
    }
    return false;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((sessionTracker != null) && (!sessionTracker.isTracking()))
    {
      sessionTracker.startTracking();
      fetchUserInfo();
      setButtonText();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (sessionTracker != null) {
      sessionTracker.stopTracking();
    }
    dismissToolTip();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((!nuxChecked) && (nuxMode != LoginButton.ToolTipMode.NEVER_DISPLAY) && (!isInEditMode()))
    {
      nuxChecked = true;
      checkNuxSettings();
    }
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    finishInit();
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (paramInt != 0) {
      dismissToolTip();
    }
  }
  
  public void setApplicationId(String paramString)
  {
    applicationId = paramString;
  }
  
  public void setDefaultAudience(SessionDefaultAudience paramSessionDefaultAudience)
  {
    properties.setDefaultAudience(paramSessionDefaultAudience);
  }
  
  public void setFragment(Fragment paramFragment)
  {
    parentFragment = paramFragment;
  }
  
  public void setLoginBehavior(SessionLoginBehavior paramSessionLoginBehavior)
  {
    properties.setLoginBehavior(paramSessionLoginBehavior);
  }
  
  void setLoginLogoutEventName(String paramString)
  {
    loginLogoutEventName = paramString;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    listenerCallback = paramOnClickListener;
  }
  
  public void setOnErrorListener(LoginButton.OnErrorListener paramOnErrorListener)
  {
    properties.setOnErrorListener(paramOnErrorListener);
  }
  
  void setProperties(LoginButton.LoginButtonProperties paramLoginButtonProperties)
  {
    properties = paramLoginButtonProperties;
  }
  
  public void setPublishPermissions(List<String> paramList)
  {
    properties.setPublishPermissions(paramList, sessionTracker.getSession());
  }
  
  public void setPublishPermissions(String... paramVarArgs)
  {
    properties.setPublishPermissions(Arrays.asList(paramVarArgs), sessionTracker.getSession());
  }
  
  public void setReadPermissions(List<String> paramList)
  {
    properties.setReadPermissions(paramList, sessionTracker.getSession());
  }
  
  public void setReadPermissions(String... paramVarArgs)
  {
    properties.setReadPermissions(Arrays.asList(paramVarArgs), sessionTracker.getSession());
  }
  
  public void setSession(Session paramSession)
  {
    sessionTracker.setSession(paramSession);
    fetchUserInfo();
    setButtonText();
  }
  
  public void setSessionStatusCallback(Session.StatusCallback paramStatusCallback)
  {
    properties.setSessionStatusCallback(paramStatusCallback);
  }
  
  public void setToolTipDisplayTime(long paramLong)
  {
    nuxDisplayTime = paramLong;
  }
  
  public void setToolTipMode(LoginButton.ToolTipMode paramToolTipMode)
  {
    nuxMode = paramToolTipMode;
  }
  
  public void setToolTipStyle(ToolTipPopup.Style paramStyle)
  {
    nuxStyle = paramStyle;
  }
  
  public void setUserInfoChangedCallback(LoginButton.UserInfoChangedCallback paramUserInfoChangedCallback)
  {
    userInfoChangedCallback = paramUserInfoChangedCallback;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.LoginButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */