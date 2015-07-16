package com.yik.yak.ui.fragment;

import AD;
import AJ;
import AM;
import AO;
import AQ;
import Aa;
import Aj;
import Bn;
import EB;
import Eu;
import Ev;
import Ew;
import Ex;
import Ey;
import Hi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.support.v4.app.FragmentActivity;
import com.yik.yak.data.db.YikYakSQLiteOpenHelper;
import com.yik.yak.data.db.helper.EnvironmentTableHelper;
import com.yik.yak.data.models.Environment;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.activity.AuthenticateWebAppActivity;
import com.yik.yak.ui.activity.SplashScreen;
import java.util.TreeMap;
import wY;
import xD;
import xF;
import xG;
import xx;
import xy;

public class DeveloperFragment
  extends PreferenceFragment
  implements Bn, Preference.OnPreferenceClickListener
{
  private CheckBoxPreference a;
  private CheckBoxPreference b;
  private CheckBoxPreference c;
  
  private void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = AD.a().g();
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", paramString);
    localTreeMap.put("lat", ((YakkerLocation)localObject).a());
    localTreeMap.put("long", ((YakkerLocation)localObject).b());
    localObject = Aj.a(AJ.a().f(), "registerUser", localTreeMap, (YakkerLocation)localObject);
    localObject = new xF().a((String)localObject).b();
    Aj.a(true).a((xD)localObject).a(new Ey(this, paramString, paramBoolean1, paramBoolean2));
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a(AD.a().e(), paramBoolean, true);
      return;
    }
    a(AD.a().f(), paramBoolean, true);
  }
  
  private void e()
  {
    Environment[] arrayOfEnvironment = EnvironmentTableHelper.getAllEnvironments();
    String[] arrayOfString1 = new String[arrayOfEnvironment.length];
    String[] arrayOfString2 = new String[arrayOfEnvironment.length];
    int j = 1;
    int i = 0;
    while (i < arrayOfEnvironment.length)
    {
      localObject = arrayOfEnvironment[i];
      arrayOfString1[i] = ((Environment)localObject).getName();
      arrayOfString2[i] = String.valueOf(((Environment)localObject).getId());
      if (((Environment)localObject).isCurrentEnvironment()) {
        j = i;
      }
      i += 1;
    }
    i = arrayOfEnvironment[j].getId().intValue();
    Object localObject = (ListPreference)a("environment_setting");
    ((ListPreference)localObject).setSummary(arrayOfEnvironment[j].getName());
    ((ListPreference)localObject).setValue("" + i);
    ((ListPreference)localObject).setEntries(arrayOfString1);
    ((ListPreference)localObject).setEntryValues(arrayOfString2);
    ((ListPreference)localObject).setOnPreferenceChangeListener(new Eu(this));
  }
  
  private void f()
  {
    a(c(), this);
    a = ((CheckBoxPreference)a("use_test_configuration"));
    a.setChecked(Aa.c());
    a.setOnPreferenceChangeListener(new Ev(this));
    b = ((CheckBoxPreference)a("debug_deep_link_to_peek"));
    b.setOnPreferenceChangeListener(new Ew(this));
    c = ((CheckBoxPreference)a("debug_deep_link_to_verify"));
    c.setOnPreferenceChangeListener(new Ex(this));
  }
  
  private void g()
  {
    a("Privacy Notice Reset");
    Aa.n(false);
    Aa.h("");
    Object localObject = new Intent(getActivity(), SplashScreen.class);
    localObject = PendingIntent.getActivity(getActivity(), 234567, (Intent)localObject, 268435456);
    ((AlarmManager)getActivity().getSystemService("alarm")).set(1, System.currentTimeMillis() + 2000L, (PendingIntent)localObject);
    System.exit(0);
  }
  
  private void h()
  {
    startActivity(new Intent(getActivity(), AuthenticateWebAppActivity.class));
  }
  
  private void i()
  {
    AM.a().b();
    e();
    a("Environments have been reset.");
  }
  
  private void j()
  {
    Hi.b(getActivity(), "visitedPeeks.json");
    AO.a().a(AQ.d);
    a("Visited Peeks Cleared");
  }
  
  private void k()
  {
    Hi.b(getActivity(), "myPeekLocations.json");
    a("Saved Peeks Cleared");
  }
  
  private void l()
  {
    Aa.G().edit().clear().commit();
    AD.a().b(null);
    a("Shared Preferences Reset");
    Hi.b(getActivity(), "reported.Yak.json");
    Hi.b(getActivity(), "reported.YakBak.json");
    Object localObject = new Intent(getActivity(), SplashScreen.class);
    localObject = PendingIntent.getActivity(getActivity(), 123456, (Intent)localObject, 268435456);
    ((AlarmManager)getActivity().getSystemService("alarm")).set(1, System.currentTimeMillis() + 2000L, (PendingIntent)localObject);
    System.exit(0);
  }
  
  private void m()
  {
    YikYakSQLiteOpenHelper.get().deleteAllData();
    e();
    a("Database Reset");
  }
  
  public String a()
  {
    return "Developer";
  }
  
  public void b()
  {
    Object localObject = Aa.G();
    ((SharedPreferences)localObject).edit().remove("bcDismissed").commit();
    ((SharedPreferences)localObject).edit().remove("bcFinishedDismissed").commit();
    ((SharedPreferences)localObject).edit().remove("bcConfigured").commit();
    ((SharedPreferences)localObject).edit().remove("bcEnabled").commit();
    ((SharedPreferences)localObject).edit().remove("bcLat").commit();
    ((SharedPreferences)localObject).edit().remove("bcLong").commit();
    ((SharedPreferences)localObject).edit().remove("bcName").commit();
    ((SharedPreferences)localObject).edit().remove("bcPeek").commit();
    localObject = new TreeMap();
    ((TreeMap)localObject).put("userID", Aa.g());
    String str = AM.a().c().getBasecampEndpoint();
    Aj.b(str, "resetAndAdd", (TreeMap)localObject, null);
    str = str + "/resetAndAdd?userID=" + Aa.g();
    localObject = xG.a(xx.a("application/x-www-form-urlencoded"), (String)((TreeMap)localObject).get("RequestBody:body"));
    localObject = new xF().a((xG)localObject).a(str).b();
    Aj.a(false).a((xD)localObject).a(new EB(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2131099648);
    f();
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = paramPreference.getKey();
    int i = -1;
    switch (paramPreference.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      case 1: 
      default: 
        return false;
        if (paramPreference.equals("reset_environments"))
        {
          i = 0;
          continue;
          if (paramPreference.equals("test_all_servers"))
          {
            i = 1;
            continue;
            if (paramPreference.equals("clear_visited_locations"))
            {
              i = 2;
              continue;
              if (paramPreference.equals("clear_saved_peeks"))
              {
                i = 3;
                continue;
                if (paramPreference.equals("delete_shared_preferences"))
                {
                  i = 4;
                  continue;
                  if (paramPreference.equals("reset_yakker_id_deterministic"))
                  {
                    i = 5;
                    continue;
                    if (paramPreference.equals("reset_yakker_id_new"))
                    {
                      i = 6;
                      continue;
                      if (paramPreference.equals("reset_basecamp"))
                      {
                        i = 7;
                        continue;
                        if (paramPreference.equals("delete_database"))
                        {
                          i = 8;
                          continue;
                          if (paramPreference.equals("authenticate_web_app"))
                          {
                            i = 9;
                            continue;
                            if (paramPreference.equals("reset_privacy_notice")) {
                              i = 10;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    i();
    return false;
    j();
    return false;
    k();
    return false;
    l();
    return false;
    a(true);
    return false;
    a(false);
    return false;
    b();
    return false;
    m();
    return false;
    h();
    return false;
    g();
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
    e();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.DeveloperFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */