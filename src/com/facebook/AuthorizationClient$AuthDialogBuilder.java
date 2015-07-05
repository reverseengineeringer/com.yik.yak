package com.facebook;

import android.content.Context;
import android.os.Bundle;
import com.facebook.widget.WebDialog;
import com.facebook.widget.WebDialog.Builder;

class AuthorizationClient$AuthDialogBuilder
  extends WebDialog.Builder
{
  private static final String OAUTH_DIALOG = "oauth";
  static final String REDIRECT_URI = "fbconnect://success";
  private String e2e;
  private boolean isRerequest;
  
  public AuthorizationClient$AuthDialogBuilder(Context paramContext, String paramString, Bundle paramBundle)
  {
    super(paramContext, paramString, "oauth", paramBundle);
  }
  
  public WebDialog build()
  {
    Bundle localBundle = getParameters();
    localBundle.putString("redirect_uri", "fbconnect://success");
    localBundle.putString("client_id", getApplicationId());
    localBundle.putString("e2e", e2e);
    localBundle.putString("response_type", "token");
    localBundle.putString("return_scopes", "true");
    if ((isRerequest) && (!Settings.getPlatformCompatibilityEnabled())) {
      localBundle.putString("auth_type", "rerequest");
    }
    return new WebDialog(getContext(), "oauth", localBundle, getTheme(), getListener());
  }
  
  public AuthDialogBuilder setE2E(String paramString)
  {
    e2e = paramString;
    return this;
  }
  
  public AuthDialogBuilder setIsRerequest(boolean paramBoolean)
  {
    isRerequest = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.AuthorizationClient.AuthDialogBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */