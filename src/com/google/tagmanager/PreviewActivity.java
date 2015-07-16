package com.google.tagmanager;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import pH;
import py;

public class PreviewActivity
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      super.onCreate(paramBundle);
      py.c("Preview activity");
      paramBundle = getIntent().getData();
      if (!pH.a(this).a(paramBundle))
      {
        py.b("Cannot preview the app with the uri: " + paramBundle);
        return;
      }
      paramBundle = getPackageManager().getLaunchIntentForPackage(getPackageName());
      if (paramBundle != null)
      {
        py.c("Invoke the launch activity for package name: " + getPackageName());
        startActivity(paramBundle);
        return;
      }
    }
    catch (Exception paramBundle)
    {
      py.a("Calling preview threw an exception: " + paramBundle.getMessage());
      return;
    }
    py.c("No launch activity found for package name: " + getPackageName());
  }
}

/* Location:
 * Qualified Name:     com.google.tagmanager.PreviewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */