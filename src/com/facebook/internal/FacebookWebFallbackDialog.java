package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.facebook.widget.FacebookDialog.Callback;
import com.facebook.widget.FacebookDialog.PendingCall;
import com.facebook.widget.WebDialog;
import org.json.JSONException;
import org.json.JSONObject;

public class FacebookWebFallbackDialog
  extends WebDialog
{
  private static final int OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS = 1500;
  private static final String TAG = FacebookWebFallbackDialog.class.getName();
  private boolean waitingForDialogToClose;
  
  private FacebookWebFallbackDialog(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext, paramString1);
    setExpectedRedirectUrl(paramString2);
  }
  
  public static boolean presentWebFallback(Context paramContext, String paramString1, String paramString2, FacebookDialog.PendingCall paramPendingCall, FacebookDialog.Callback paramCallback)
  {
    if (Utility.isNullOrEmpty(paramString1)) {
      return false;
    }
    paramString1 = new FacebookWebFallbackDialog(paramContext, paramString1, String.format("fb%s://bridge/", new Object[] { paramString2 }));
    paramString1.setOnCompleteListener(new FacebookWebFallbackDialog.1(paramContext, paramPendingCall, paramCallback));
    paramString1.show();
    return true;
  }
  
  public void dismiss()
  {
    WebView localWebView = getWebView();
    if ((isListenerCalled()) || (localWebView == null) || (!localWebView.isShown())) {
      super.dismiss();
    }
    while (waitingForDialogToClose) {
      return;
    }
    waitingForDialogToClose = true;
    localWebView.loadUrl("javascript:" + "(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
    new Handler(Looper.getMainLooper()).postDelayed(new FacebookWebFallbackDialog.2(this), 1500L);
  }
  
  protected Bundle parseResponseUri(String paramString)
  {
    Bundle localBundle = Utility.parseUrlQueryString(Uri.parse(paramString).getQuery());
    paramString = localBundle.getString("bridge_args");
    localBundle.remove("bridge_args");
    if (!Utility.isNullOrEmpty(paramString)) {}
    try
    {
      localBundle.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", BundleJSONConverter.convertToBundle(new JSONObject(paramString)));
      String str = localBundle.getString("method_results");
      localBundle.remove("method_results");
      if (!Utility.isNullOrEmpty(str))
      {
        paramString = str;
        if (Utility.isNullOrEmpty(str)) {
          paramString = "{}";
        }
      }
    }
    catch (JSONException paramString)
    {
      try
      {
        localBundle.putBundle("com.facebook.platform.protocol.RESULT_ARGS", BundleJSONConverter.convertToBundle(new JSONObject(paramString)));
        localBundle.remove("version");
        localBundle.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", NativeProtocol.getLatestKnownVersion());
        return localBundle;
        paramString = paramString;
        Utility.logd(TAG, "Unable to parse bridge_args JSON", paramString);
      }
      catch (JSONException paramString)
      {
        for (;;)
        {
          Utility.logd(TAG, "Unable to parse bridge_args JSON", paramString);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.FacebookWebFallbackDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */