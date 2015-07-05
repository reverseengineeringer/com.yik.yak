package com.google.android.gms.common.api;

import android.content.IntentSender.SendIntentException;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.List;

class g$c
  implements Runnable
{
  private final int KL;
  private final ConnectionResult KM;
  
  public g$c(g paramg, int paramInt, ConnectionResult paramConnectionResult)
  {
    KL = paramInt;
    KM = paramConnectionResult;
  }
  
  public void run()
  {
    if (KM.hasResolution()) {
      try
      {
        int i = KN.getActivity().getSupportFragmentManager().getFragments().indexOf(KN);
        KM.startResolutionForResult(KN.getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException localSendIntentException)
      {
        g.a(KN);
        return;
      }
    }
    if (GooglePlayServicesUtil.isUserRecoverableError(KM.getErrorCode()))
    {
      GooglePlayServicesUtil.showErrorDialogFragment(KM.getErrorCode(), KN.getActivity(), KN, 2, KN);
      return;
    }
    g.a(KN, KL, KM);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.g.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */