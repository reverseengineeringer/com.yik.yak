package com.facebook.widget;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.internal.Utility;

class WebDialog$DialogWebViewClient
  extends WebViewClient
{
  private WebDialog$DialogWebViewClient(WebDialog paramWebDialog) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (!WebDialog.access$200(this$0)) {
      WebDialog.access$300(this$0).dismiss();
    }
    WebDialog.access$400(this$0).setBackgroundColor(0);
    WebDialog.access$500(this$0).setVisibility(0);
    WebDialog.access$600(this$0).setVisibility(0);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Utility.logd("FacebookSDK.WebDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if (!WebDialog.access$200(this$0)) {
      WebDialog.access$300(this$0).show();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    this$0.sendErrorToListener(new FacebookDialogException(paramString1, paramInt, paramString2));
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    paramSslErrorHandler.cancel();
    this$0.sendErrorToListener(new FacebookDialogException(null, -11, null));
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Utility.logd("FacebookSDK.WebDialog", "Redirect URL: " + paramString);
    Bundle localBundle;
    String str;
    if (paramString.startsWith(WebDialog.access$100(this$0)))
    {
      localBundle = this$0.parseResponseUri(paramString);
      paramString = localBundle.getString("error");
      paramWebView = paramString;
      if (paramString == null) {
        paramWebView = localBundle.getString("error_type");
      }
      str = localBundle.getString("error_msg");
      paramString = str;
      if (str == null) {
        paramString = localBundle.getString("error_description");
      }
      str = localBundle.getString("error_code");
      if (Utility.isNullOrEmpty(str)) {
        break label288;
      }
    }
    for (;;)
    {
      try
      {
        i = Integer.parseInt(str);
        if ((Utility.isNullOrEmpty(paramWebView)) && (Utility.isNullOrEmpty(paramString)) && (i == -1))
        {
          this$0.sendSuccessToListener(localBundle);
          return true;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        i = -1;
        continue;
        if ((paramWebView != null) && ((paramWebView.equals("access_denied")) || (paramWebView.equals("OAuthAccessDeniedException"))))
        {
          this$0.sendCancelToListener();
          continue;
        }
        if (i == 4201)
        {
          this$0.sendCancelToListener();
          continue;
        }
        paramWebView = new FacebookRequestError(i, paramWebView, paramString);
        this$0.sendErrorToListener(new FacebookServiceException(paramWebView, paramString));
        continue;
      }
      if (paramString.startsWith("fbconnect://cancel"))
      {
        this$0.sendCancelToListener();
        return true;
      }
      if (paramString.contains("touch")) {
        return false;
      }
      this$0.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      return true;
      label288:
      int i = -1;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.WebDialog.DialogWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */