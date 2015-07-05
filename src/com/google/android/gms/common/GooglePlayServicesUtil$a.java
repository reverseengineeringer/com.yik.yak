package com.google.android.gms.common;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class GooglePlayServicesUtil$a
  extends Handler
{
  private final Context mO;
  
  GooglePlayServicesUtil$a(Context paramContext) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      new StringBuilder().append("Don't know how to handle this message: ").append(what).toString();
    }
    int i;
    do
    {
      return;
      i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(mO);
    } while (!GooglePlayServicesUtil.isUserRecoverableError(i));
    GooglePlayServicesUtil.b(i, mO);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.GooglePlayServicesUtil.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */