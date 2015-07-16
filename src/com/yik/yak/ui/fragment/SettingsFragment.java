package com.yik.yak.ui.fragment;

import AD;
import Aa;
import Bn;
import Ha;
import Hi;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.support.v4.app.FragmentActivity;
import android.view.Menu;
import android.view.MenuInflater;
import com.yik.yak.YikYak;
import com.yik.yak.ui.activity.MainActivity;
import com.yik.yak.ui.activity.SelectBasecampActivity;
import com.yik.yak.ui.activity.VerificationActivity;
import com.yik.yak.ui.dialog.PinCodeDialog;

public class SettingsFragment
  extends PreferenceFragment
  implements Bn, Preference.OnPreferenceChangeListener, Preference.OnPreferenceClickListener
{
  protected PreferenceGroup a;
  protected SwitchPreference b;
  protected PreferenceGroup c;
  protected SwitchPreference d;
  protected SwitchPreference e;
  protected Preference f;
  protected PreferenceGroup g;
  protected SwitchPreference h;
  protected SwitchPreference i;
  protected SwitchPreference j;
  protected PreferenceGroup k;
  protected SwitchPreference l;
  protected SwitchPreference m;
  protected PreferenceGroup n;
  protected Preference o;
  protected Preference p;
  protected Preference q;
  protected Preference r;
  protected Preference s;
  protected AD t;
  private Context u;
  
  private void a(int paramInt, Intent paramIntent)
  {
    if (paramInt == 1) {
      return;
    }
    e.setChecked(true);
  }
  
  private void a(boolean paramBoolean)
  {
    Aa.k(false);
    if (paramBoolean) {
      b();
    }
  }
  
  private void b()
  {
    Intent localIntent = new Intent(getActivity(), PinCodeDialog.class);
    localIntent.putExtra("title", getResources().getString(2131231050));
    localIntent.putExtra("pin", "new");
    startActivityForResult(localIntent, 6001);
  }
  
  private void b(int paramInt, Intent paramIntent)
  {
    if (paramInt == 1) {
      return;
    }
    Aa.q(true);
    Aa.p(false);
    b.setChecked(false);
  }
  
  private void b(String paramString)
  {
    if (!Hi.a(paramString))
    {
      ((ClipboardManager)getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(paramString, paramString));
      a("Value copied to your clipboard.");
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean) {
      startActivity(new Intent(getActivity(), VerificationActivity.class));
    }
  }
  
  private void c(int paramInt, Intent paramIntent)
  {
    if (paramInt == 6003)
    {
      String str = "";
      if (paramIntent != null) {
        str = paramIntent.getStringExtra("pin");
      }
      paramIntent = new Intent(getActivity(), PinCodeDialog.class);
      paramIntent.putExtra("title", getResources().getString(2131231049));
      paramIntent.putExtra("pin", str);
      startActivityForResult(paramIntent, 6002);
      return;
    }
    d.setChecked(false);
  }
  
  private void c(boolean paramBoolean)
  {
    Aa.p(paramBoolean);
    if (paramBoolean)
    {
      Aa.q(false);
      if (!Aa.C())
      {
        Intent localIntent = new Intent(u, SelectBasecampActivity.class);
        localIntent.putExtra("Source", "Me");
        startActivityForResult(localIntent, 3500);
      }
      return;
    }
    Aa.q(true);
    Ha.a().l();
  }
  
  private void d(int paramInt, Intent paramIntent)
  {
    if (paramInt == 6003)
    {
      if (paramIntent != null)
      {
        Aa.k(true);
        Aa.e(paramIntent.getStringExtra("pin"));
        ((MainActivity)getActivity()).a();
        return;
      }
      Aa.e("");
      d.setChecked(false);
      return;
    }
    d.setChecked(false);
  }
  
  private void d(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      Aa.m(paramBoolean);
      return;
    }
  }
  
  private void e()
  {
    a = ((PreferenceGroup)a("basecamp_category"));
    b = ((SwitchPreference)a("base_camp_enabled"));
    c = ((PreferenceGroup)a("privacy_prefs"));
    d = ((SwitchPreference)a("protect_your_yaks"));
    e = ((SwitchPreference)a("verification_not_verified"));
    f = a("verification_verified");
    i = ((SwitchPreference)a("double_tap_to_vote"));
    j = ((SwitchPreference)a("left_handed_mode"));
    k = ((PreferenceGroup)a("notification_settings"));
    l = ((SwitchPreference)a("push_notifications"));
    m = ((SwitchPreference)a("notification_sounds"));
    g = ((PreferenceGroup)a("opt_out_prefs"));
    h = ((SwitchPreference)a("opt_out_analytics"));
    c().removePreference(g);
    n = ((PreferenceGroup)a("misc"));
    o = a("version");
    p = a("yakker_id_one");
    q = a("yakker_id_two");
    r = a("yakker_token");
    s = a("previous_verification_token");
    f();
    a(c(), this);
    a(c(), this);
  }
  
  private void e(boolean paramBoolean)
  {
    Aa.l(paramBoolean);
  }
  
  private void f()
  {
    d.setChecked(Aa.r());
    if (Aa.z())
    {
      b.setChecked(Aa.A());
      i.setChecked(Aa.t());
      j.setChecked(Aa.u().equals("left"));
      boolean bool = Aa.p();
      l.setChecked(bool);
      if (bool) {
        break label168;
      }
      k.removePreference(m);
    }
    for (;;)
    {
      o.setSummary(YikYak.e());
      if (!t.j()) {
        break label181;
      }
      p.setSummary(Aa.g());
      q.setSummary(t.e());
      r.setSummary(Aa.w());
      s.setSummary(Aa.a());
      return;
      b.setChecked(false);
      c().removePreference(a);
      break;
      label168:
      m.setChecked(Aa.b());
    }
    label181:
    n.removePreference(p);
    n.removePreference(q);
    n.removePreference(r);
    n.removePreference(s);
  }
  
  private void f(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "left";; str = "right")
    {
      Aa.f(str);
      return;
    }
  }
  
  private void g()
  {
    c.removePreference(e);
    c.removePreference(f);
    if (Aa.f())
    {
      c.addPreference(f);
      return;
    }
    c.addPreference(e);
    e.setChecked(false);
  }
  
  private void g(boolean paramBoolean)
  {
    Aa.i(paramBoolean);
    Ha.a().a(paramBoolean);
    if (paramBoolean == true)
    {
      k.addPreference(m);
      return;
    }
    k.removePreference(m);
    m.setChecked(false);
  }
  
  private void h(boolean paramBoolean)
  {
    Aa.e(paramBoolean);
  }
  
  public String a()
  {
    return "Settings";
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      return;
    case 6001: 
      c(paramInt2, paramIntent);
      return;
    case 6002: 
      d(paramInt2, paramIntent);
      return;
    case 3500: 
      b(paramInt2, paramIntent);
      return;
    }
    a(paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    a(2131099649);
    t = AD.a();
    u = getActivity();
    e();
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenu.clear();
  }
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = paramPreference.getKey();
    int i1 = -1;
    switch (paramPreference.hashCode())
    {
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        return true;
        if (paramPreference.equals("protect_your_yaks"))
        {
          i1 = 0;
          continue;
          if (paramPreference.equals("verification_not_verified"))
          {
            i1 = 1;
            continue;
            if (paramPreference.equals("base_camp_enabled"))
            {
              i1 = 2;
              continue;
              if (paramPreference.equals("opt_out_analytics"))
              {
                i1 = 3;
                continue;
                if (paramPreference.equals("double_tap_to_vote"))
                {
                  i1 = 4;
                  continue;
                  if (paramPreference.equals("left_handed_mode"))
                  {
                    i1 = 5;
                    continue;
                    if (paramPreference.equals("push_notifications"))
                    {
                      i1 = 6;
                      continue;
                      if (paramPreference.equals("notification_sounds")) {
                        i1 = 7;
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
    a(((Boolean)paramObject).booleanValue());
    return true;
    b(((Boolean)paramObject).booleanValue());
    return true;
    c(((Boolean)paramObject).booleanValue());
    return true;
    d(((Boolean)paramObject).booleanValue());
    return true;
    e(((Boolean)paramObject).booleanValue());
    return true;
    f(((Boolean)paramObject).booleanValue());
    return true;
    g(((Boolean)paramObject).booleanValue());
    return true;
    h(((Boolean)paramObject).booleanValue());
    return true;
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = paramPreference.getKey();
    int i1 = -1;
    switch (paramPreference.hashCode())
    {
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        return true;
        if (paramPreference.equals("yakker_id_one"))
        {
          i1 = 0;
          continue;
          if (paramPreference.equals("yakker_id_two"))
          {
            i1 = 1;
            continue;
            if (paramPreference.equals("yakker_token"))
            {
              i1 = 2;
              continue;
              if (paramPreference.equals("previous_verification_token")) {
                i1 = 3;
              }
            }
          }
        }
        break;
      }
    }
    b(Aa.g());
    return true;
    b(t.e());
    return true;
    b(Aa.w());
    return true;
    b(Aa.a());
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    g();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.SettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */