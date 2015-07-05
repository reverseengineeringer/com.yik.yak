package com.google.android.gms.common.api;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;

class c$5
  implements GoogleApiClient.ConnectionCallbacks
{
  c$5(c paramc, AtomicReference paramAtomicReference, f paramf) {}
  
  public void onConnected(Bundle paramBundle)
  {
    c.a(Kn, (GoogleApiClient)Kp.get(), Kq, true);
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */