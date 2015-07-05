package com.facebook.widget;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.android.R.drawable;
import com.facebook.android.R.string;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;

public class WebDialog
  extends Dialog
{
  private static final int API_EC_DIALOG_CANCEL = 4201;
  private static final int BACKGROUND_GRAY = -872415232;
  static final String CANCEL_URI = "fbconnect://cancel";
  public static final int DEFAULT_THEME = 16973840;
  static final boolean DISABLE_SSL_CHECK_FOR_TESTING = false;
  private static final String DISPLAY_TOUCH = "touch";
  private static final String LOG_TAG = "FacebookSDK.WebDialog";
  private static final int MAX_PADDING_SCREEN_HEIGHT = 1280;
  private static final int MAX_PADDING_SCREEN_WIDTH = 800;
  private static final double MIN_SCALE_FACTOR = 0.5D;
  private static final int NO_PADDING_SCREEN_HEIGHT = 800;
  private static final int NO_PADDING_SCREEN_WIDTH = 480;
  static final String REDIRECT_URI = "fbconnect://success";
  private FrameLayout contentFrameLayout;
  private ImageView crossImageView;
  private String expectedRedirectUrl = "fbconnect://success";
  private boolean isDetached = false;
  private boolean isDismissed = false;
  private boolean listenerCalled = false;
  private WebDialog.OnCompleteListener onCompleteListener;
  private ProgressDialog spinner;
  private String url;
  private WebView webView;
  
  public WebDialog(Context paramContext, String paramString)
  {
    this(paramContext, paramString, 16973840);
  }
  
  public WebDialog(Context paramContext, String paramString, int paramInt)
  {
    super(paramContext, paramInt);
    url = paramString;
  }
  
  public WebDialog(Context paramContext, String paramString, Bundle paramBundle, int paramInt, WebDialog.OnCompleteListener paramOnCompleteListener)
  {
    super(paramContext, paramInt);
    paramContext = paramBundle;
    if (paramBundle == null) {
      paramContext = new Bundle();
    }
    paramContext.putString("redirect_uri", "fbconnect://success");
    paramContext.putString("display", "touch");
    url = Utility.buildUri(ServerProtocol.getDialogAuthority(), ServerProtocol.getAPIVersion() + "/" + "dialog/" + paramString, paramContext).toString();
    onCompleteListener = paramOnCompleteListener;
  }
  
  private void calculateSize()
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    int i;
    if (widthPixels < heightPixels)
    {
      i = widthPixels;
      if (widthPixels >= heightPixels) {
        break label140;
      }
    }
    label140:
    for (int j = heightPixels;; j = widthPixels)
    {
      i = Math.min(getScaledSize(i, density, 480, 800), widthPixels);
      j = Math.min(getScaledSize(j, density, 800, 1280), heightPixels);
      getWindow().setLayout(i, j);
      return;
      i = heightPixels;
      break;
    }
  }
  
  private void createCrossImage()
  {
    crossImageView = new ImageView(getContext());
    crossImageView.setOnClickListener(new WebDialog.2(this));
    Drawable localDrawable = getContext().getResources().getDrawable(R.drawable.com_facebook_close);
    crossImageView.setImageDrawable(localDrawable);
    crossImageView.setVisibility(4);
  }
  
  private int getScaledSize(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    double d = 0.5D;
    int i = (int)(paramInt1 / paramFloat);
    if (i <= paramInt2) {
      d = 1.0D;
    }
    for (;;)
    {
      return (int)(d * paramInt1);
      if (i < paramInt3) {
        d = 0.5D + (paramInt3 - i) / (paramInt3 - paramInt2) * 0.5D;
      }
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void setUpWebView(int paramInt)
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    webView = new WebDialog.3(this, getContext());
    webView.setVerticalScrollBarEnabled(false);
    webView.setHorizontalScrollBarEnabled(false);
    webView.setWebViewClient(new WebDialog.DialogWebViewClient(this, null));
    webView.getSettings().setJavaScriptEnabled(true);
    webView.loadUrl(url);
    webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    webView.setVisibility(4);
    webView.getSettings().setSavePassword(false);
    webView.getSettings().setSaveFormData(false);
    localLinearLayout.setPadding(paramInt, paramInt, paramInt, paramInt);
    localLinearLayout.addView(webView);
    localLinearLayout.setBackgroundColor(-872415232);
    contentFrameLayout.addView(localLinearLayout);
  }
  
  public void dismiss()
  {
    if (isDismissed) {}
    do
    {
      return;
      isDismissed = true;
      if (!listenerCalled) {
        sendCancelToListener();
      }
      if (webView != null) {
        webView.stopLoading();
      }
    } while (isDetached);
    if (spinner.isShowing()) {
      spinner.dismiss();
    }
    super.dismiss();
  }
  
  public WebDialog.OnCompleteListener getOnCompleteListener()
  {
    return onCompleteListener;
  }
  
  public WebView getWebView()
  {
    return webView;
  }
  
  public boolean isListenerCalled()
  {
    return listenerCalled;
  }
  
  public void onAttachedToWindow()
  {
    isDetached = false;
    super.onAttachedToWindow();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    spinner = new ProgressDialog(getContext());
    spinner.requestWindowFeature(1);
    spinner.setMessage(getContext().getString(R.string.com_facebook_loading));
    spinner.setOnCancelListener(new WebDialog.1(this));
    requestWindowFeature(1);
    contentFrameLayout = new FrameLayout(getContext());
    calculateSize();
    getWindow().setGravity(17);
    getWindow().setSoftInputMode(16);
    createCrossImage();
    setUpWebView(crossImageView.getDrawable().getIntrinsicWidth() / 2 + 1);
    contentFrameLayout.addView(crossImageView, new ViewGroup.LayoutParams(-2, -2));
    setContentView(contentFrameLayout);
  }
  
  public void onDetachedFromWindow()
  {
    isDetached = true;
    super.onDetachedFromWindow();
  }
  
  public Bundle parseResponseUri(String paramString)
  {
    paramString = Uri.parse(paramString);
    Bundle localBundle = Utility.parseUrlQueryString(paramString.getQuery());
    localBundle.putAll(Utility.parseUrlQueryString(paramString.getFragment()));
    return localBundle;
  }
  
  public void sendCancelToListener()
  {
    sendErrorToListener(new FacebookOperationCanceledException());
  }
  
  protected void sendErrorToListener(Throwable paramThrowable)
  {
    if ((onCompleteListener != null) && (!listenerCalled))
    {
      listenerCalled = true;
      if (!(paramThrowable instanceof FacebookException)) {
        break label47;
      }
    }
    label47:
    for (paramThrowable = (FacebookException)paramThrowable;; paramThrowable = new FacebookException(paramThrowable))
    {
      onCompleteListener.onComplete(null, paramThrowable);
      dismiss();
      return;
    }
  }
  
  protected void sendSuccessToListener(Bundle paramBundle)
  {
    if ((onCompleteListener != null) && (!listenerCalled))
    {
      listenerCalled = true;
      onCompleteListener.onComplete(paramBundle, null);
      dismiss();
    }
  }
  
  public void setExpectedRedirectUrl(String paramString)
  {
    expectedRedirectUrl = paramString;
  }
  
  public void setOnCompleteListener(WebDialog.OnCompleteListener paramOnCompleteListener)
  {
    onCompleteListener = paramOnCompleteListener;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.WebDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */