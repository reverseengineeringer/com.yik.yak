package com.yik.yak.ui.activity;

import AD;
import AJ;
import AN;
import Aa;
import Cn;
import Co;
import Cp;
import Cq;
import Cr;
import Cs;
import Ct;
import Cu;
import Cv;
import Cw;
import Hj;
import Hp;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.widget.TextView;
import com.yik.yak.YikYak;
import com.yik.yak.ui.dialog.YikYakDialog;

public class SplashScreen
  extends BaseAppCompatActivity
{
  private final Handler.Callback c = new Cn(this);
  private final Runnable d = new Cp(this);
  private Handler.Callback e = new Cq(this);
  private Context f;
  private Dialog g;
  private Dialog h;
  private Handler i = new Handler();
  private AD j = null;
  
  private void a()
  {
    if (!Hj.a(this))
    {
      h();
      return;
    }
    f();
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 1)
    {
      startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 5000);
      return;
    }
    f();
  }
  
  private void a(boolean paramBoolean)
  {
    Intent localIntent = new Intent(getApplicationContext(), MainActivity.class);
    localIntent.addFlags(67108864);
    if (getIntent().getData() != null) {
      localIntent.setData(getIntent().getData());
    }
    if (getIntent().getAction() != null) {
      localIntent.setAction(getIntent().getAction());
    }
    if (getIntent().getExtras() != null)
    {
      localIntent.putExtras(getIntent().getExtras());
      localIntent.putExtra("cleanStart", paramBoolean);
      if (paramBoolean) {
        localIntent.putExtra("activateMethod", getString(2131230749));
      }
    }
    for (;;)
    {
      startActivity(localIntent);
      finish();
      return;
      localIntent.putExtra("activateMethod", getString(2131230748));
    }
  }
  
  private void b(int paramInt)
  {
    if (paramInt == 1)
    {
      c();
      return;
    }
    finish();
    System.exit(0);
  }
  
  private void c()
  {
    if (j.d())
    {
      j.a(e);
      return;
    }
    i();
  }
  
  private void d()
  {
    if (g != null) {
      g.dismiss();
    }
    if (h != null) {
      h.dismiss();
    }
  }
  
  private void e()
  {
    if (!isFinishing()) {
      i.postDelayed(d, 500L);
    }
  }
  
  private void f()
  {
    AJ.a().a(this, new Cr(this));
  }
  
  private void g()
  {
    if (Aa.g().isEmpty())
    {
      j.b(c);
      return;
    }
    if (!Aa.h()) {
      YikYak.a(Aa.g());
    }
    Aa.b("isNewYakker", false);
    e();
  }
  
  private void h()
  {
    d();
    g = Hp.a(this, 2131231028, 2131231027, new Cs(this), new Ct(this));
  }
  
  private void i()
  {
    d();
    h = Hp.a(this, 2131231018, 2131231017, new Cu(this), new Cv(this));
  }
  
  private void j()
  {
    Intent localIntent = new Intent(f, YikYakDialog.class);
    localIntent.putExtra("title", "Connection");
    localIntent.putExtra("message", "There was a problem connecting to our servers.\r\n\r\nWould you like to try again or come back later?");
    localIntent.putExtra("okText", "Try Again");
    localIntent.putExtra("cancelText", "Later");
    startActivityForResult(localIntent, 100);
  }
  
  private void k()
  {
    ((TextView)findViewById(2131558562)).setText(YikYak.e());
  }
  
  private void l()
  {
    new Handler().postDelayed(new Cw(this), 2000L);
  }
  
  private void m()
  {
    new Handler().postDelayed(new Co(this), 2000L);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      return;
    case 5002: 
      a(paramInt2);
      return;
    case 100: 
      b(paramInt2);
      return;
    case 5000: 
      l();
      return;
    }
    m();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = false;
    setContentView(2130903077);
    f = this;
    j = AD.a();
    k();
    if ((!getIntent().getBooleanExtra("KEY_FORCE_RESTART", false)) && ((AN.b()) || (AN.a()))) {
      a(false);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    d();
    i.removeCallbacks(d);
    if (h != null) {
      h.dismiss();
    }
    if (g != null) {
      g.dismiss();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    c();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.SplashScreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */