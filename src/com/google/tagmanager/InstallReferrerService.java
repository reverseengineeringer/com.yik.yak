package com.google.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.analytics.tracking.android.CampaignTrackingService;
import com.google.android.gms.common.util.VisibleForTesting;
import px;

public final class InstallReferrerService
  extends IntentService
{
  @VisibleForTesting
  CampaignTrackingService a;
  @VisibleForTesting
  Context b;
  
  public InstallReferrerService()
  {
    super("InstallReferrerService");
  }
  
  private void a(Context paramContext, Intent paramIntent)
  {
    if (a == null) {
      a = new CampaignTrackingService();
    }
    a.a(paramContext, paramIntent);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("referrer");
    if (b != null) {}
    for (Context localContext = b;; localContext = getApplicationContext())
    {
      px.a(localContext, str);
      a(localContext, paramIntent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.tagmanager.InstallReferrerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */