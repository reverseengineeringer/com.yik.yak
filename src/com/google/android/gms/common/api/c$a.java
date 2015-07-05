package com.google.android.gms.common.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;

class c$a
  extends BroadcastReceiver
{
  private WeakReference<c> Ks;
  
  c$a(c paramc)
  {
    Ks = new WeakReference(paramc);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getData();
    paramContext = null;
    if (paramIntent != null) {
      paramContext = paramIntent.getSchemeSpecificPart();
    }
    if ((paramContext == null) || (!paramContext.equals("com.google.android.gms"))) {}
    do
    {
      return;
      paramContext = (c)Ks.get();
    } while ((paramContext == null) || (paramContext.isConnected()) || (paramContext.isConnecting()) || (!paramContext.gL()));
    paramContext.connect();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */