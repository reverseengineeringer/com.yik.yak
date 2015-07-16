package com.yik.yak.ui.activity;

import CL;
import CM;
import CN;
import Hi;
import android.content.Context;
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
  protected int g = 2130903079;
  protected ImageView h;
  protected TextView i;
  public WebView j;
  protected String k;
  
  public static Intent b(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, WebActivity.class);
    localIntent.putExtra("title", paramContext.getString(2131231128));
    localIntent.putExtra("url", paramContext.getString(2131231129));
    localIntent.putExtra("", false);
    return localIntent;
  }
  
  private void i()
  {
    i = ((TextView)findViewById(2131558563));
    if (d())
    {
      i.setVisibility(0);
      i.setText(getString(2131231116));
      i.setOnClickListener(new CM(this));
      return;
    }
    i.setVisibility(8);
  }
  
  protected void a()
  {
    h = ((ImageView)findViewById(2131558541));
    j = ((WebView)findViewById(2131558542));
    if (c()) {
      j.getSettings().setCacheMode(2);
    }
    j.setWebViewClient(new CL(this));
    j.getSettings().setJavaScriptEnabled(true);
    j.loadUrl(k);
  }
  
  protected boolean c()
  {
    if (getIntent().hasExtra("")) {
      return getIntent().getBooleanExtra("", true);
    }
    return false;
  }
  
  protected boolean d()
  {
    boolean bool = false;
    if (getIntent().hasExtra("shareEnabled")) {
      bool = getIntent().getBooleanExtra("shareEnabled", false);
    }
    return bool;
  }
  
  protected String e()
  {
    String str = null;
    if (getIntent().getExtras() != null) {
      str = getIntent().getExtras().getString("title", null);
    }
    return str;
  }
  
  protected String f()
  {
    String str = null;
    if (getIntent().getExtras() != null) {
      str = getIntent().getExtras().getString("url", null);
    }
    return str;
  }
  
  public void g()
  {
    if (h.getVisibility() == 0) {
      return;
    }
    h.setVisibility(0);
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    localRotateAnimation.setRepeatCount(-1);
    localRotateAnimation.setDuration(1000L);
    h.startAnimation(localRotateAnimation);
  }
  
  public void h()
  {
    h.setVisibility(8);
    h.clearAnimation();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = "Yik Yak";
    setContentView(g);
    k = f();
    Object localObject;
    if (k != null)
    {
      localObject = e();
      paramBundle = (Bundle)localObject;
      if (Hi.a((String)localObject)) {
        paramBundle = "Yik Yak";
      }
    }
    for (;;)
    {
      if (Hi.a(k)) {
        finish();
      }
      a(paramBundle);
      a();
      i();
      return;
      try
      {
        localObject = getIntent().getData();
        k = ("http" + localObject.toString().split("http")[1]);
      }
      catch (Exception localException)
      {
        k = "";
        localException.printStackTrace();
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    j.setVisibility(8);
    j.loadUrl("about:blank");
    j.stopLoading();
    j.setWebChromeClient(null);
    j.setWebViewClient(null);
    new Handler().postDelayed(new CN(this), ViewConfiguration.getZoomControlsTimeout() + 1000L);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.WebActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */