package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.content.Loader;
import com.google.android.gms.common.ConnectionResult;

class g$a
  extends Loader<ConnectionResult>
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  public final GoogleApiClient KH;
  private boolean KI;
  private ConnectionResult KJ;
  
  public g$a(Context paramContext, GoogleApiClient paramGoogleApiClient)
  {
    super(paramContext);
    KH = paramGoogleApiClient;
  }
  
  private void a(ConnectionResult paramConnectionResult)
  {
    KJ = paramConnectionResult;
    if ((isStarted()) && (!isAbandoned())) {
      deliverResult(paramConnectionResult);
    }
  }
  
  public void gS()
  {
    if (KI)
    {
      KI = false;
      if ((isStarted()) && (!isAbandoned())) {
        KH.connect();
      }
    }
  }
  
  public void onConnected(Bundle paramBundle)
  {
    KI = false;
    a(ConnectionResult.Iu);
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    KI = true;
    a(paramConnectionResult);
  }
  
  public void onConnectionSuspended(int paramInt) {}
  
  protected void onReset()
  {
    KJ = null;
    KI = false;
    KH.unregisterConnectionCallbacks(this);
    KH.unregisterConnectionFailedListener(this);
    KH.disconnect();
  }
  
  protected void onStartLoading()
  {
    super.onStartLoading();
    KH.registerConnectionCallbacks(this);
    KH.registerConnectionFailedListener(this);
    if (KJ != null) {
      deliverResult(KJ);
    }
    if ((!KH.isConnected()) && (!KH.isConnecting()) && (!KI)) {
      KH.connect();
    }
  }
  
  protected void onStopLoading()
  {
    KH.disconnect();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */