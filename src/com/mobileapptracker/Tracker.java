package com.mobileapptracker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.net.URLDecoder;
import uP;

public class Tracker
  extends BroadcastReceiver
{
  public void onReceive(Context arg1, Intent paramIntent)
  {
    if (paramIntent != null) {}
    try
    {
      if (paramIntent.getAction().equals("com.android.vending.INSTALL_REFERRER"))
      {
        paramIntent = paramIntent.getStringExtra("referrer");
        if (paramIntent != null)
        {
          paramIntent = URLDecoder.decode(paramIntent, "UTF-8");
          new StringBuilder("MAT received referrer ").append(paramIntent).toString();
          ???.getSharedPreferences("mat_referrer", 0).edit().putString("referrer", paramIntent).commit();
          paramIntent = uP.a();
          if (paramIntent != null)
          {
            e = true;
            if ((!d) || (g)) {}
          }
        }
      }
      synchronized (k)
      {
        k.notifyAll();
        g = true;
        return;
      }
      return;
    }
    catch (Exception ???)
    {
      ???.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.mobileapptracker.Tracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */