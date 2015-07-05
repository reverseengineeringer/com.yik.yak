package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.widget.FacebookDialog;
import com.facebook.widget.FacebookDialog.Callback;
import com.facebook.widget.FacebookDialog.PendingCall;
import com.facebook.widget.WebDialog.OnCompleteListener;

final class FacebookWebFallbackDialog$1
  implements WebDialog.OnCompleteListener
{
  FacebookWebFallbackDialog$1(Context paramContext, FacebookDialog.PendingCall paramPendingCall, FacebookDialog.Callback paramCallback) {}
  
  public void onComplete(Bundle paramBundle, FacebookException paramFacebookException)
  {
    Intent localIntent = new Intent();
    paramFacebookException = paramBundle;
    if (paramBundle == null) {
      paramFacebookException = new Bundle();
    }
    localIntent.putExtras(paramFacebookException);
    FacebookDialog.handleActivityResult(val$context, val$appCall, val$appCall.getRequestCode(), localIntent, val$callback);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.FacebookWebFallbackDialog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */