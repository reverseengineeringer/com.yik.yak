package com.facebook.android;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.facebook.LegacyHelper;
import com.facebook.Session;
import java.lang.ref.WeakReference;

class Facebook$TokenRefreshConnectionHandler
  extends Handler
{
  WeakReference<Facebook.TokenRefreshServiceConnection> connectionWeakReference;
  WeakReference<Facebook> facebookWeakReference;
  
  Facebook$TokenRefreshConnectionHandler(Facebook paramFacebook, Facebook.TokenRefreshServiceConnection paramTokenRefreshServiceConnection)
  {
    facebookWeakReference = new WeakReference(paramFacebook);
    connectionWeakReference = new WeakReference(paramTokenRefreshServiceConnection);
  }
  
  public void handleMessage(Message paramMessage)
  {
    Object localObject1 = (Facebook)facebookWeakReference.get();
    Facebook.TokenRefreshServiceConnection localTokenRefreshServiceConnection = (Facebook.TokenRefreshServiceConnection)connectionWeakReference.get();
    if ((localObject1 == null) || (localTokenRefreshServiceConnection == null)) {
      return;
    }
    Object localObject2 = paramMessage.getData().getString("access_token");
    long l = paramMessage.getData().getLong("expires_in") * 1000L;
    if (localObject2 != null)
    {
      ((Facebook)localObject1).setAccessToken((String)localObject2);
      ((Facebook)localObject1).setAccessExpires(l);
      localObject1 = Facebook.access$200((Facebook)localObject1);
      if (localObject1 != null) {
        LegacyHelper.extendTokenCompleted((Session)localObject1, paramMessage.getData());
      }
      if (serviceListener != null)
      {
        paramMessage = (Bundle)paramMessage.getData().clone();
        paramMessage.putLong("expires_in", l);
        serviceListener.onComplete(paramMessage);
      }
    }
    for (;;)
    {
      applicationsContext.unbindService(localTokenRefreshServiceConnection);
      return;
      if (serviceListener != null)
      {
        localObject1 = paramMessage.getData().getString("error");
        if (!paramMessage.getData().containsKey("error_code")) {
          break;
        }
        int i = paramMessage.getData().getInt("error_code");
        serviceListener.onFacebookError(new FacebookError((String)localObject1, null, i));
      }
    }
    localObject2 = serviceListener;
    if (localObject1 != null) {}
    for (paramMessage = (Message)localObject1;; paramMessage = "Unknown service error")
    {
      ((Facebook.ServiceListener)localObject2).onError(new Error(paramMessage));
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.android.Facebook.TokenRefreshConnectionHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */