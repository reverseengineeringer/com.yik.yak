package com.google.android.gms.ads.identifier;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

class AdvertisingIdClient$a
  extends Thread
{
  private WeakReference<AdvertisingIdClient> lt;
  private long lu;
  CountDownLatch lv;
  boolean lw;
  
  public AdvertisingIdClient$a(AdvertisingIdClient paramAdvertisingIdClient, long paramLong)
  {
    lt = new WeakReference(paramAdvertisingIdClient);
    lu = paramLong;
    lv = new CountDownLatch(1);
    lw = false;
    start();
  }
  
  private void disconnect()
  {
    AdvertisingIdClient localAdvertisingIdClient = (AdvertisingIdClient)lt.get();
    if (localAdvertisingIdClient != null)
    {
      localAdvertisingIdClient.finish();
      lw = true;
    }
  }
  
  public boolean aa()
  {
    return lw;
  }
  
  public void cancel()
  {
    lv.countDown();
  }
  
  public void run()
  {
    try
    {
      if (!lv.await(lu, TimeUnit.MILLISECONDS)) {
        disconnect();
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */