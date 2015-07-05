package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

class c$4
  implements GoogleApiClient.OnConnectionFailedListener
{
  c$4(c paramc, Api.b paramb) {}
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    c.a(Kn).lock();
    try
    {
      if ((c.k(Kn) == null) || (Ko.getPriority() < c.l(Kn)))
      {
        c.a(Kn, paramConnectionResult);
        c.b(Kn, Ko.getPriority());
      }
      c.d(Kn);
      return;
    }
    finally
    {
      c.a(Kn).unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */