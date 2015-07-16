package com.google.android.gms.analytics;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import gc;
import java.io.IOException;
import java.io.OutputStream;

public class CampaignTrackingService
  extends IntentService
{
  public CampaignTrackingService()
  {
    super("CampaignIntentService");
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("referrer");
    try
    {
      paramContext = paramContext.openFileOutput("gaInstallData", 0);
      paramContext.write(paramIntent.getBytes());
      paramContext.close();
      gc.c("Stored campaign information.");
      return;
    }
    catch (IOException paramContext)
    {
      gc.a("Error storing install campaign.");
    }
  }
  
  public void onHandleIntent(Intent paramIntent)
  {
    a(this, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.CampaignTrackingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */