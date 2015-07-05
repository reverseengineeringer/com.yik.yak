package com.parse.oauth;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;

class OAuth1FlowDialog$OAuth1WebViewClient
  extends WebViewClient
{
  private OAuth1FlowDialog$OAuth1WebViewClient(OAuth1FlowDialog paramOAuth1FlowDialog) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    try
    {
      OAuth1FlowDialog.access$400(this$0).dismiss();
      OAuth1FlowDialog.access$500(this$0).setBackgroundColor(0);
      OAuth1FlowDialog.access$600(this$0).setVisibility(0);
      OAuth1FlowDialog.access$700(this$0).setVisibility(0);
      return;
    }
    catch (IllegalArgumentException paramWebView)
    {
      for (;;) {}
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    OAuth1FlowDialog.access$400(this$0).show();
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    this$0.dismiss();
    OAuth1FlowDialog.access$000(this$0).onError(paramInt, paramString1, paramString2);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith(OAuth1FlowDialog.access$200(this$0)))
    {
      this$0.dismiss();
      OAuth1FlowDialog.access$000(this$0).onComplete(paramString);
      return true;
    }
    if (paramString.contains(OAuth1FlowDialog.access$300(this$0))) {
      return false;
    }
    this$0.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.parse.oauth.OAuth1FlowDialog.OAuth1WebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */