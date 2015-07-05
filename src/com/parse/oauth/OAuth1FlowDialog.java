package com.parse.oauth;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class OAuth1FlowDialog
  extends Dialog
{
  private static final FrameLayout.LayoutParams FILL = new FrameLayout.LayoutParams(-1, -1);
  private final String callbackUrl;
  private ImageView closeImage;
  private FrameLayout content;
  private final OAuth1FlowDialog.FlowResultHandler handler;
  private ProgressDialog progressDialog;
  private final String requestUrl;
  private final String serviceUrlIdentifier;
  private WebView webView;
  
  public OAuth1FlowDialog(Context paramContext, String paramString1, String paramString2, String paramString3, OAuth1FlowDialog.FlowResultHandler paramFlowResultHandler)
  {
    super(paramContext, 16973840);
    requestUrl = paramString1;
    callbackUrl = paramString2;
    serviceUrlIdentifier = paramString3;
    handler = paramFlowResultHandler;
    setOnCancelListener(new OAuth1FlowDialog.1(this));
  }
  
  private void createCloseImage()
  {
    closeImage = new ImageView(getContext());
    closeImage.setOnClickListener(new OAuth1FlowDialog.2(this));
    Drawable localDrawable = getContext().getResources().getDrawable(17301527);
    closeImage.setImageDrawable(localDrawable);
    closeImage.setVisibility(4);
  }
  
  private void setUpWebView(int paramInt)
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    webView = new WebView(getContext());
    webView.setVerticalScrollBarEnabled(false);
    webView.setHorizontalScrollBarEnabled(false);
    webView.setWebViewClient(new OAuth1FlowDialog.OAuth1WebViewClient(this, null));
    webView.getSettings().setJavaScriptEnabled(true);
    webView.loadUrl(requestUrl);
    webView.setLayoutParams(FILL);
    webView.setVisibility(4);
    localLinearLayout.setPadding(paramInt, paramInt, paramInt, paramInt);
    localLinearLayout.addView(webView);
    content.addView(localLinearLayout);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    progressDialog = new ProgressDialog(getContext());
    progressDialog.requestWindowFeature(1);
    progressDialog.setMessage("Loading...");
    requestWindowFeature(1);
    content = new FrameLayout(getContext());
    createCloseImage();
    setUpWebView(closeImage.getDrawable().getIntrinsicWidth() / 2);
    content.addView(closeImage, new ViewGroup.LayoutParams(-2, -2));
    addContentView(content, new ViewGroup.LayoutParams(-1, -1));
  }
}

/* Location:
 * Qualified Name:     com.parse.oauth.OAuth1FlowDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */