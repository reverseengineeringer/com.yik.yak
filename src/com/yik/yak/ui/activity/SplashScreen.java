package com.yik.yak.ui.activity;

import AA;
import Aq;
import Aw;
import Cj;
import Ck;
import Cl;
import Cm;
import Cn;
import Co;
import Cp;
import Cq;
import Cr;
import Cs;
import GB;
import GC;
import GI;
import Gs;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.widget.TextView;
import com.yik.yak.YikYak;
import zQ;

public class SplashScreen
  extends BaseAppCompatActivity
{
  private final Handler.Callback b = new Cj(this);
  private final Runnable c = new Cl(this);
  private Handler.Callback d = new Cm(this);
  private Context e;
  private Dialog f;
  private Dialog g;
  private Handler h = new Handler();
  private Aq i = null;
  
  private void a()
  {
    if (!GC.a(this))
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
    Gs.a().r();
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
      if (paramBoolean) {
        Gs.a().b(getString(2131230749));
      }
    }
    for (;;)
    {
      startActivity(localIntent);
      finish();
      return;
      Gs.a().b(getString(2131230748));
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
    if (i.d())
    {
      i.a(d);
      return;
    }
    i();
  }
  
  private void d()
  {
    if (f != null) {
      f.dismiss();
    }
    if (g != null) {
      g.dismiss();
    }
  }
  
  private void e()
  {
    if (!isFinishing())
    {
      String str = GB.c(Aq.a().b());
      Gs.a().c(str);
      h.postDelayed(c, 500L);
    }
  }
  
  private void f()
  {
    Aw.a().a(this, new Cn(this));
  }
  
  private void g()
  {
    if (zQ.c().isEmpty())
    {
      i.b(b);
      return;
    }
    if (!zQ.d()) {
      YikYak.a(zQ.c());
    }
    e();
  }
  
  private void h()
  {
    d();
    f = GI.a(this, 2131231000, 2131230999, new Co(this), new Cp(this));
  }
  
  private void i()
  {
    d();
    g = GI.a(this, 2131230991, 2131230990, new Cq(this), new Cr(this));
  }
  
  private void j()
  {
    Intent localIntent = new Intent(e, YikYakDialog.class);
    localIntent.putExtra("title", "Connection");
    localIntent.putExtra("message", "There was a problem connecting to our servers.\r\n\r\nWould you like to try again or come back later?");
    localIntent.putExtra("okText", "Try Again");
    localIntent.putExtra("cancelText", "Later");
    startActivityForResult(localIntent, 100);
  }
  
  private void k()
  {
    ((TextView)findViewById(2131558552)).setText(YikYak.e());
  }
  
  private void l()
  {
    new Handler().postDelayed(new Cs(this), 2000L);
  }
  
  private void m()
  {
    new Handler().postDelayed(new Ck(this), 2000L);
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
    setContentView(2130903075);
    e = this;
    i = Aq.a(e);
    k();
    if ((!getIntent().getBooleanExtra("KEY_FORCE_RESTART", false)) && ((AA.b()) || (AA.a()))) {
      a(false);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    d();
    h.removeCallbacks(c);
    if (g != null) {
      g.dismiss();
    }
    if (f != null) {
      f.dismiss();
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