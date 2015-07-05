package com.google.android.gms.common.api;

class c$7
  implements ResultCallback<Status>
{
  c$7(c paramc, f paramf, boolean paramBoolean, GoogleApiClient paramGoogleApiClient) {}
  
  public void j(Status paramStatus)
  {
    if ((paramStatus.isSuccess()) && (Kn.isConnected())) {
      Kn.reconnect();
    }
    Kq.b(paramStatus);
    if (Kr) {
      GB.disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */