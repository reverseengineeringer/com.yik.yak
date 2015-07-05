package com.parse;

import android.app.Service;

abstract interface PushService$LifecycleListener
{
  public abstract void onServiceCreated(Service paramService);
  
  public abstract void onServiceDestroyed(Service paramService);
}

/* Location:
 * Qualified Name:     com.parse.PushService.LifecycleListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */