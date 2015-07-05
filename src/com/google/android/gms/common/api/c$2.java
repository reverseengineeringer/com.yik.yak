package com.google.android.gms.common.api;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import java.util.concurrent.locks.Lock;

class c$2
  implements GoogleApiClient.ConnectionCallbacks
{
  c$2(c paramc) {}
  
  public void onConnected(Bundle paramBundle)
  {
    c.a(Kn).lock();
    try
    {
      if (c.b(Kn) == 1)
      {
        if (paramBundle != null) {
          c.c(Kn).putAll(paramBundle);
        }
        c.d(Kn);
      }
      return;
    }
    finally
    {
      c.a(Kn).unlock();
    }
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    c.a(Kn).lock();
    switch (paramInt)
    {
    }
    for (;;)
    {
      c.a(Kn).unlock();
      return;
      try
      {
        c.a(Kn, paramInt);
        Kn.connect();
        continue;
      }
      finally
      {
        c.a(Kn).unlock();
      }
      boolean bool = Kn.gL();
      if (bool)
      {
        c.a(Kn).unlock();
        return;
      }
      c.a(Kn, true);
      Kn.Ke = new c.a(Kn);
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
      localIntentFilter.addDataScheme("package");
      c.e(Kn).registerReceiver(Kn.Ke, localIntentFilter);
      Kn.Kd.sendMessageDelayed(Kn.Kd.obtainMessage(1), c.f(Kn));
      Kn.Kd.sendMessageDelayed(Kn.Kd.obtainMessage(2), c.g(Kn));
      c.a(Kn, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */