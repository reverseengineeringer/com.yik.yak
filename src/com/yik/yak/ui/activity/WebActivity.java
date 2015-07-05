package com.yik.yak.ui.activity;

import Ct;
import Cu;
import Cv;
import GB;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.ViewConfiguration;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;

public class WebActivity
  extends BaseAppCompatActivity
{
  private ImageView b;
  private TextView c;
  private WebView d;
  private String e;
  
  private boolean a()
  {
    boolean bool = false;
    if (getIntent().hasExtra("shareEnabled")) {
      bool = getIntent().getBooleanExtra("shareEnabled", false);
    }
    return bool;
  }
  
  private String c()
  {
    String str = null;
    if (getIntent().getExtras() != null) {
      str = getIntent().getExtras().getString("title", null);
    }
    return str;
  }
  
  private String d()
  {
    String str = null;
    if (getIntent().getExtras() != null) {
      str = getIntent().getExtras().getString("url", null);
    }
    return str;
  }
  
  private void e()
  {
    if (b.getVisibility() == 0) {
      return;
    }
    b.setVisibility(0);
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    localRotateAnimation.setRepeatCount(-1);
    localRotateAnimation.setDuration(1000L);
    b.startAnimation(localRotateAnimation);
  }
  
  private void f()
  {
    b.setVisibility(8);
    b.clearAnimation();
  }
  
  private void g()
  {
    b = ((ImageView)findViewById(2131558553));
    d = ((WebView)findViewById(2131558554));
    d.setWebViewClient(new Ct(this));
    d.getSettings().setJavaScriptEnabled(true);
    d.getSettings().setBuiltInZoomControls(true);
    d.getSettings().setUseWideViewPort(true);
    d.loadUrl(e);
  }
  
  private void h()
  {
    c = ((TextView)findViewById(2131558834));
    if (a())
    {
      c.setVisibility(0);
      c.setText(getString(2131231073));
      c.setOnClickListener(new Cu(this));
      return;
    }
    c.setVisibility(8);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = "Yik Yak";
    setContentView(2130903076);
    e = d();
    Object localObject;
    if (e != null)
    {
      localObject = c();
      paramBundle = (Bundle)localObject;
      if (GB.a((String)localObject)) {
        paramBundle = "Yik Yak";
      }
    }
    for (;;)
    {
      if (GB.a(e)) {
        finish();
      }
      a(paramBundle);
      g();
      h();
      return;
      try
      {
        localObject = getIntent().getData();
        e = ("http" + localObject.toString().split("http")[1]);
      }
      catch (Exception localException)
      {
        e = "";
        localException.printStackTrace();
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    d.setVisibility(8);
    d.loadUrl("about:blank");
    d.stopLoading();
    d.setWebChromeClient(null);
    d.setWebViewClient(null);
    new Handler().postDelayed(new Cv(this), ViewConfiguration.getZoomControlsTimeout() + 1000L);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.WebActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */