package com.google.tagmanager;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import pE;
import pv;

public class PreviewActivity
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      super.onCreate(paramBundle);
      pv.c("Preview activity");
      paramBundle = getIntent().getData();
      if (!pE.a(this).a(paramBundle))
      {
        pv.b("Cannot preview the app with the uri: " + paramBundle);
        return;
      }
      paramBundle = getPackageManager().getLaunchIntentForPackage(getPackageName());
      if (paramBundle != null)
      {
        pv.c("Invoke the launch activity for package name: " + getPackageName());
        startActivity(paramBundle);
        return;
      }
    }
    catch (Exception paramBundle)
    {
      pv.a("Calling preview threw an exception: " + paramBundle.getMessage());
      return;
    }
    pv.c("No launch activity found for package name: " + getPackageName());
  }
}

/* Location:
 * Qualified Name:     com.google.tagmanager.PreviewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */