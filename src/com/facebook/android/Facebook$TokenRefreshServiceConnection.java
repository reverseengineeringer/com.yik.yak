package com.facebook.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

class Facebook$TokenRefreshServiceConnection
  implements ServiceConnection
{
  final Context applicationsContext;
  final Messenger messageReceiver = new Messenger(new Facebook.TokenRefreshConnectionHandler(this$0, this));
  Messenger messageSender = null;
  final Facebook.ServiceListener serviceListener;
  
  public Facebook$TokenRefreshServiceConnection(Facebook paramFacebook, Context paramContext, Facebook.ServiceListener paramServiceListener)
  {
    applicationsContext = paramContext;
    serviceListener = paramServiceListener;
  }
  
  private void refreshToken()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("access_token", Facebook.access$100(this$0));
    Message localMessage = Message.obtain();
    localMessage.setData(localBundle);
    replyTo = messageReceiver;
    try
    {
      messageSender.send(localMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      serviceListener.onError(new Error("Service connection error"));
    }
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    messageSender = new Messenger(paramIBinder);
    refreshToken();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    serviceListener.onError(new Error("Service disconnected"));
    try
    {
      applicationsContext.unbindService(this);
      return;
    }
    catch (IllegalArgumentException paramComponentName) {}
  }
}

/* Location:
 * Qualified Name:     com.facebook.android.Facebook.TokenRefreshServiceConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */