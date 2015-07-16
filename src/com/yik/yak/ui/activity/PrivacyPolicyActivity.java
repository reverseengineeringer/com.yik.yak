package com.yik.yak.ui.activity;

import Aa;
import BE;
import BF;
import BG;
import BH;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import com.yik.yak.ui.dialog.YikYakDialog;
import com.yik.yak.ui.view.PrivacyPolicyWebView;

public class PrivacyPolicyActivity
  extends WebActivity
{
  protected int c;
  public TranslateAnimation d;
  public TranslateAnimation e;
  protected Animation.AnimationListener f = new BE(this);
  private LinearLayout l;
  private Switch m;
  private boolean n = false;
  
  public static Intent a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, PrivacyPolicyActivity.class);
    localIntent.putExtra("layoutId", 2130903074);
    localIntent.putExtra("title", paramContext.getString(2131231054));
    localIntent.putExtra("url", paramContext.getString(2131231057));
    localIntent.putExtra("", false);
    return localIntent;
  }
  
  private void i()
  {
    Intent localIntent = new Intent(this, YikYakDialog.class);
    localIntent.putExtra("title", getResources().getString(2131231053));
    localIntent.putExtra("message", getResources().getString(2131231052));
    localIntent.putExtra("okText", getResources().getString(2131231154));
    localIntent.putExtra("cancelText", getResources().getString(2131231026));
    startActivityForResult(localIntent, 34);
  }
  
  protected void a()
  {
    h = ((ImageView)findViewById(2131558541));
    j = ((WebView)findViewById(2131558542));
    l = ((LinearLayout)findViewById(2131558543));
    m = ((Switch)findViewById(2131558544));
    Object localObject = (PrivacyPolicyWebView)findViewById(2131558542);
    ((PrivacyPolicyWebView)localObject).setWebViewClient(new WebViewClient());
    ((PrivacyPolicyWebView)localObject).getSettings().setJavaScriptEnabled(true);
    if (c()) {
      ((PrivacyPolicyWebView)localObject).getSettings().setCacheMode(2);
    }
    ((PrivacyPolicyWebView)localObject).loadUrl(getIntent().getExtras().getString("url"));
    ((PrivacyPolicyWebView)localObject).setOnBottomReachedListener(new BF(this));
    ((PrivacyPolicyWebView)localObject).setOnMovedFromBottomListener(new BG(this));
    localObject = m;
    if (!Aa.v()) {}
    for (boolean bool = true;; bool = false)
    {
      ((Switch)localObject).setChecked(bool);
      m.setOnCheckedChangeListener(new BH(this));
      return;
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      return;
    }
    if (paramInt2 == 1)
    {
      Aa.m(false);
      return;
    }
    Aa.m(true);
    m.setChecked(false);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle == null) || (!localBundle.containsKey("layoutId"))) {
      finish();
    }
    g = localBundle.getInt("layoutId", g);
    c = ((int)getResources().getDimension(2131493001));
    e = new TranslateAnimation(0.0F, 0.0F, 0.0F, c);
    e.setDuration(300L);
    e.setFillAfter(true);
    e.setAnimationListener(f);
    d = new TranslateAnimation(0.0F, 0.0F, c, 0.0F);
    d.setDuration(300L);
    d.setFillAfter(true);
    d.setAnimationListener(f);
    super.onCreate(paramBundle);
    a(getString(2131231054));
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.PrivacyPolicyActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */