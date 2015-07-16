package com.yik.yak.ui.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.MenuItem;
import android.view.Window;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import kH;
import kh;
import ki;

public class MapActivity
  extends BaseAppCompatActivity
{
  public void a(double paramDouble1, double paramDouble2, boolean paramBoolean, String paramString)
  {
    try
    {
      paramString = ((SupportMapFragment)getSupportFragmentManager().findFragmentById(2131558517)).b();
      paramString.d().a(true);
      paramString.d().b(true);
      paramString.a(kh.a(new LatLng(paramDouble1, paramDouble2), 15.0F));
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903069);
    if (Build.VERSION.SDK_INT >= 21)
    {
      getWindow().addFlags(Integer.MIN_VALUE);
      getWindow().setStatusBarColor(getResources().getColor(2131427564));
    }
    a("");
    paramBundle = getIntent().getExtras();
    if (paramBundle != null)
    {
      a(paramBundle.getDouble("lat", 0.0D), paramBundle.getDouble("lon", 0.0D), paramBundle.getBoolean("hidePin", true), "");
      return;
    }
    finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.MapActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */