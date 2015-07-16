package com.yik.yak.ui.fragment;

import Fo;
import Fp;
import Fq;
import Fr;
import Fs;
import Ft;
import Fv;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.widget.ListView;
import com.nispok.snackbar.Snackbar;
import wF;
import wG;

public abstract class PreferenceFragment
  extends Fragment
  implements Fv
{
  private Handler a = new Fo(this);
  private PreferenceManager b;
  private ListView c;
  private final Runnable d = new Fp(this);
  private boolean e;
  private boolean f;
  private View.OnKeyListener g = new Fq(this);
  
  private void a()
  {
    if (b == null) {
      throw new RuntimeException("This should be called after super.onCreate.");
    }
  }
  
  private void b()
  {
    if (a.hasMessages(1)) {
      return;
    }
    a.obtainMessage(1).sendToTarget();
  }
  
  private void e()
  {
    PreferenceScreen localPreferenceScreen = c();
    if (localPreferenceScreen != null) {
      localPreferenceScreen.bind(d());
    }
    if (Build.VERSION.SDK_INT <= 10) {
      d().setOnItemClickListener(new Fr(this, localPreferenceScreen));
    }
  }
  
  private void f()
  {
    if (c != null) {
      return;
    }
    View localView = getView();
    if (localView == null) {
      throw new IllegalStateException("Content view not yet created");
    }
    localView = localView.findViewById(16908298);
    if (!(localView instanceof ListView)) {
      throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
    }
    c = ((ListView)localView);
    if (c == null) {
      throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
    }
    c.setOnKeyListener(g);
    a.post(d);
  }
  
  public Preference a(CharSequence paramCharSequence)
  {
    if (b == null) {
      return null;
    }
    return b.findPreference(paramCharSequence);
  }
  
  public void a(int paramInt)
  {
    a();
    a(Ft.a(b, getActivity(), paramInt, c()));
  }
  
  protected void a(PreferenceGroup paramPreferenceGroup, Preference.OnPreferenceChangeListener paramOnPreferenceChangeListener)
  {
    int j = paramPreferenceGroup.getPreferenceCount();
    int i = 0;
    if (i < j)
    {
      Preference localPreference = paramPreferenceGroup.getPreference(i);
      if ((localPreference instanceof PreferenceGroup)) {
        a((PreferenceGroup)localPreference, paramOnPreferenceChangeListener);
      }
      for (;;)
      {
        i += 1;
        break;
        localPreference.setOnPreferenceChangeListener(paramOnPreferenceChangeListener);
      }
    }
  }
  
  protected void a(PreferenceGroup paramPreferenceGroup, Preference.OnPreferenceClickListener paramOnPreferenceClickListener)
  {
    int j = paramPreferenceGroup.getPreferenceCount();
    int i = 0;
    if (i < j)
    {
      Preference localPreference = paramPreferenceGroup.getPreference(i);
      if ((localPreference instanceof PreferenceGroup)) {
        a((PreferenceGroup)localPreference, paramOnPreferenceClickListener);
      }
      for (;;)
      {
        i += 1;
        break;
        localPreference.setOnPreferenceClickListener(paramOnPreferenceClickListener);
      }
    }
  }
  
  public void a(PreferenceScreen paramPreferenceScreen)
  {
    if ((Ft.a(b, paramPreferenceScreen)) && (paramPreferenceScreen != null))
    {
      e = true;
      if (f) {
        b();
      }
    }
  }
  
  public void a(String paramString)
  {
    if (getView() != null) {
      wF.a(Snackbar.a(getActivity()).a(wG.a).a(paramString), getActivity());
    }
  }
  
  public boolean a(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    if ((getActivity() instanceof Fs)) {
      return ((Fs)getActivity()).a(this, paramPreference);
    }
    return false;
  }
  
  public PreferenceScreen c()
  {
    return Ft.a(b);
  }
  
  public ListView d()
  {
    f();
    return c;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (e) {
      e();
    }
    f = true;
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getBundle("android:preferences");
      if (paramBundle != null)
      {
        PreferenceScreen localPreferenceScreen = c();
        if (localPreferenceScreen != null) {
          localPreferenceScreen.restoreHierarchyState(paramBundle);
        }
      }
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Ft.a(b, paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = Ft.a(getActivity(), 100);
    Ft.a(b, this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903147, paramViewGroup, false);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    Ft.c(b);
  }
  
  public void onDestroyView()
  {
    c = null;
    a.removeCallbacks(d);
    a.removeMessages(1);
    super.onDestroyView();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    PreferenceScreen localPreferenceScreen = c();
    if (localPreferenceScreen != null)
    {
      Bundle localBundle = new Bundle();
      localPreferenceScreen.saveHierarchyState(localBundle);
      paramBundle.putBundle("android:preferences", localBundle);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    getActivity().setTheme(2131689485);
    Ft.a(b, this);
  }
  
  public void onStop()
  {
    super.onStop();
    getActivity().setTheme(2131689483);
    Ft.b(b);
    Ft.a(b, null);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.PreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */