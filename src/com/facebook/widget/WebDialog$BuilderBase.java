package com.facebook.widget;

import android.content.Context;
import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.Session;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;

public class WebDialog$BuilderBase<CONCRETE extends BuilderBase<?>>
{
  private String action;
  private String applicationId;
  private Context context;
  private WebDialog.OnCompleteListener listener;
  private Bundle parameters;
  private Session session;
  private int theme = 16973840;
  
  protected WebDialog$BuilderBase(Context paramContext, Session paramSession, String paramString, Bundle paramBundle)
  {
    Validate.notNull(paramSession, "session");
    if (!paramSession.isOpened()) {
      throw new FacebookException("Attempted to use a Session that was not open.");
    }
    session = paramSession;
    finishInit(paramContext, paramString, paramBundle);
  }
  
  protected WebDialog$BuilderBase(Context paramContext, String paramString)
  {
    Object localObject = Session.getActiveSession();
    if ((localObject != null) && (((Session)localObject).isOpened())) {
      session = ((Session)localObject);
    }
    for (;;)
    {
      finishInit(paramContext, paramString, null);
      return;
      localObject = Utility.getMetadataApplicationId(paramContext);
      if (localObject == null) {
        break;
      }
      applicationId = ((String)localObject);
    }
    throw new FacebookException("Attempted to create a builder without an open Active Session or a valid default Application ID.");
  }
  
  protected WebDialog$BuilderBase(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = Utility.getMetadataApplicationId(paramContext);
    }
    Validate.notNullOrEmpty(str, "applicationId");
    applicationId = str;
    finishInit(paramContext, paramString2, paramBundle);
  }
  
  private void finishInit(Context paramContext, String paramString, Bundle paramBundle)
  {
    context = paramContext;
    action = paramString;
    if (paramBundle != null)
    {
      parameters = paramBundle;
      return;
    }
    parameters = new Bundle();
  }
  
  public WebDialog build()
  {
    if ((session != null) && (session.isOpened()))
    {
      parameters.putString("app_id", session.getApplicationId());
      parameters.putString("access_token", session.getAccessToken());
    }
    for (;;)
    {
      return new WebDialog(context, action, parameters, theme, listener);
      parameters.putString("app_id", applicationId);
    }
  }
  
  public String getApplicationId()
  {
    return applicationId;
  }
  
  public Context getContext()
  {
    return context;
  }
  
  public WebDialog.OnCompleteListener getListener()
  {
    return listener;
  }
  
  public Bundle getParameters()
  {
    return parameters;
  }
  
  public int getTheme()
  {
    return theme;
  }
  
  public CONCRETE setOnCompleteListener(WebDialog.OnCompleteListener paramOnCompleteListener)
  {
    listener = paramOnCompleteListener;
    return this;
  }
  
  public CONCRETE setTheme(int paramInt)
  {
    theme = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.WebDialog.BuilderBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */