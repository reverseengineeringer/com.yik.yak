package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import ri;
import rk;
import rl;
import sK;
import sw;
import sx;
import sz;

@SuppressLint({"ClickableViewAccessibility"})
@TargetApi(16)
public class InAppFragment
  extends Fragment
{
  private sK a;
  private Activity b;
  private GestureDetector c;
  private Handler d;
  private int e;
  private UpdateDisplayState.DisplayState.InAppNotificationState f;
  private Runnable g;
  private Runnable h;
  private View i;
  private boolean j;
  
  private void a()
  {
    if (!j)
    {
      d.removeCallbacks(g);
      d.removeCallbacks(h);
      UpdateDisplayState.a(e);
      b.getFragmentManager().beginTransaction().remove(this).commit();
    }
    j = true;
  }
  
  private void b()
  {
    if ((b != null) && (!j))
    {
      d.removeCallbacks(g);
      d.removeCallbacks(h);
      b.getFragmentManager().beginTransaction().setCustomAnimations(0, ri.com_mixpanel_android_slide_down).remove(this).commit();
      UpdateDisplayState.a(e);
      j = true;
    }
  }
  
  public void a(sK paramsK, int paramInt, UpdateDisplayState.DisplayState.InAppNotificationState paramInAppNotificationState)
  {
    a = paramsK;
    e = paramInt;
    f = paramInAppNotificationState;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    b = paramActivity;
    if (f == null)
    {
      a();
      return;
    }
    d = new Handler();
    g = new sw(this);
    h = new sx(this);
    c = new GestureDetector(paramActivity, new sz(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    j = false;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (f == null) {
      a();
    }
    for (;;)
    {
      return i;
      i = paramLayoutInflater.inflate(rl.com_mixpanel_android_activity_notification_mini, paramViewGroup, false);
      paramLayoutInflater = (TextView)i.findViewById(rk.com_mixpanel_android_notification_title);
      paramViewGroup = (ImageView)i.findViewById(rk.com_mixpanel_android_notification_image);
      paramBundle = f.c();
      paramLayoutInflater.setText(paramBundle.e());
      paramViewGroup.setImageBitmap(paramBundle.l());
      d.postDelayed(g, 10000L);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a();
  }
  
  public void onResume()
  {
    super.onResume();
    d.postDelayed(h, 500L);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    a();
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    if (j) {
      b.getFragmentManager().beginTransaction().remove(this).commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.mixpanel.android.mpmetrics.InAppFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */