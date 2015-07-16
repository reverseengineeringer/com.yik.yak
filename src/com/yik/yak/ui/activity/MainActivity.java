package com.yik.yak.ui.activity;

import AD;
import AN;
import AO;
import AZ;
import Aa;
import Ag;
import BI;
import Ba;
import Bb;
import Bd;
import Be;
import Bf;
import Bg;
import Bh;
import Bi;
import Bj;
import Bk;
import Bl;
import Bm;
import Bn;
import Bo;
import Br;
import CU;
import Gf;
import Ha;
import Hi;
import Hk;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import android.widget.Toast;
import com.adjust.sdk.Adjust;
import com.yik.yak.YikYak;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.adapter.MainActivityAdapter;
import com.yik.yak.ui.dialog.PrivacyPolicyUpdateDialog;
import com.yik.yak.ui.dialog.YikYakDialog;
import com.yik.yak.ui.fragment.CommentFragment;
import com.yik.yak.ui.fragment.ContactUsFragment;
import com.yik.yak.ui.fragment.HomeFragment;
import com.yik.yak.ui.fragment.PeekFragment;
import com.yik.yak.ui.view.PromotedActionButtonView;
import com.yik.yak.ui.view.navigation.SlidingTabLayout;
import com.yik.yak.ui.view.navigation.YikYakMainToolbar;
import java.util.Date;

public class MainActivity
  extends BaseAppCompatActivity
  implements FragmentManager.OnBackStackChangedListener, View.OnClickListener
{
  Runnable c = new Bd(this);
  private final Bl d = new Bl(this);
  private final String e = "BadgeUpdate";
  private BroadcastReceiver f = new AZ(this);
  private boolean g = false;
  private boolean h = false;
  private Bundle i = null;
  private long j = 0L;
  private MainActivityAdapter k;
  private Handler l = new Handler();
  private Bm m = new Bm(this);
  private PromotedActionButtonView n;
  private SlidingTabLayout o;
  private YikYakMainToolbar p;
  private ViewPager q;
  
  private Fragment a(CU paramCU)
  {
    Object localObject = paramCU.c();
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag((String)localObject);
    if ((o() != 0) && (localFragment != null))
    {
      localObject = localFragment;
      if (!localFragment.isRemoving()) {}
    }
    else
    {
      localObject = k.a(CU.a(paramCU));
    }
    if (localObject == null)
    {
      i();
      finish();
    }
    return (Fragment)localObject;
  }
  
  private void a(Intent paramIntent)
  {
    int i1 = 0;
    for (;;)
    {
      if (i1 < k.getCount())
      {
        Fragment localFragment = k.getItem(i1);
        if ((localFragment != null) && (localFragment.isAdded())) {}
        try
        {
          ((Bo)localFragment).a(paramIntent);
          i1 += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
      }
    }
  }
  
  private Fragment b(int paramInt)
  {
    return a(CU.a(paramInt));
  }
  
  private void c(int paramInt)
  {
    j = (System.currentTimeMillis() + paramInt * 1000);
  }
  
  private void c(String paramString)
  {
    if (c() != 3) {
      a(3);
    }
    if (!(n() instanceof ContactUsFragment)) {
      new Handler().postDelayed(new Ba(this, paramString), 500L);
    }
  }
  
  private void d(String paramString)
  {
    if (c() != 1) {
      a(1);
    }
    if (!(n() instanceof PeekFragment))
    {
      paramString = AO.a().c(paramString.replace("/", ""));
      if (paramString != null) {
        new Handler().postDelayed(new Bb(this, paramString), 500L);
      }
    }
  }
  
  private void e(String paramString)
  {
    startActivity(VerificationActivity.a(this, paramString.replace("/", "")));
  }
  
  private void j()
  {
    if ((i != null) && (i.containsKey("activateMethod"))) {
      Ha.a().b(i.getString("activateMethod"));
    }
    Ha.a().c(Hi.c(Aa.g()));
    if (!Aa.E())
    {
      Ha.a().a(Aa.p());
      Aa.t(true);
    }
    new Handler().postDelayed(new Bf(this), 2000L);
  }
  
  private void k()
  {
    setContentView(2130903068);
    p = ((YikYakMainToolbar)findViewById(2131558500));
    setSupportActionBar(p);
    k = new MainActivityAdapter(getSupportFragmentManager());
    q = ((ViewPager)findViewById(2131558515));
    q.setAdapter(k);
    q.setOffscreenPageLimit(4);
    o = ((SlidingTabLayout)findViewById(2131558514));
    o.setViewPager(q);
    n = ((PromotedActionButtonView)findViewById(2131558516));
  }
  
  private void l()
  {
    p.setOnActionButtonClickedListener(new Bg(this));
    o.setOnPageChangeListener(new Bh(this));
    n.setOnClickListener(this);
    o.setOnTabReselectedListener(new Bi(this));
    getSupportFragmentManager().addOnBackStackChangedListener(this);
  }
  
  private void m()
  {
    if (!Aa.a("isNewYakker", true))
    {
      if ((!Aa.F().equals(YikYak.e())) && (!Aa.x()))
      {
        Ha.a().j();
        Intent localIntent = new Intent(this, PrivacyPolicyUpdateDialog.class);
        localIntent.putExtra("title", getString(2131231056));
        localIntent.putExtra("message", getString(2131231055));
        localIntent.putExtra("okText", getString(2131231035));
        startActivityForResult(localIntent, 35);
      }
      return;
    }
    Aa.h(YikYak.e());
  }
  
  private Fragment n()
  {
    return b(q.getCurrentItem());
  }
  
  private int o()
  {
    return getSupportFragmentManager().getBackStackEntryCount();
  }
  
  private void p()
  {
    Intent localIntent1 = getIntent();
    if (Aa.q()) {
      startActivity(VerificationActivity.a(this));
    }
    int i1;
    do
    {
      return;
      if (localIntent1 != null)
      {
        localObject = localIntent1.getData();
        if ((localObject != null) && (((Uri)localObject).getScheme().equals("yikyak")))
        {
          localObject = localIntent1.getData().getHost();
          i1 = -1;
          switch (((String)localObject).hashCode())
          {
          default: 
            switch (i1)
            {
            }
            break;
          }
        }
      }
    } while (i == null);
    if ((i.containsKey("action")) && (i.getInt("action", 0) == 4000))
    {
      Ag.a().a(this);
      YikYak.a(0);
      localObject = i.getString("yakId", "");
      if ((g) && (Aa.r()) && (Aa.n().length() == 4))
      {
        i1 = 1;
        label215:
        int i2 = i.getInt("count", 1);
        if (Hi.a((String)localObject)) {
          break label438;
        }
        if ((i2 != 1) || (i1 != 0)) {
          break label430;
        }
        a(0);
        localObject = Yak.initializeYak(this, (String)localObject);
        if (HasError) {
          break label416;
        }
        localObject = CommentFragment.a(this, true, (Yak)localObject, null, "PushNotification");
        if (i.containsKey("replyId")) {
          ((Intent)localObject).putExtra("replyId", i.getString("replyId"));
        }
        startActivity((Intent)localObject);
      }
    }
    label416:
    label430:
    label438:
    label536:
    do
    {
      do
      {
        for (;;)
        {
          a(localIntent1);
          i = null;
          return;
          if (!((String)localObject).equals("contact")) {
            break;
          }
          i1 = 0;
          break;
          if (!((String)localObject).equals("peek")) {
            break;
          }
          i1 = 1;
          break;
          if (!((String)localObject).equals("verify")) {
            break;
          }
          i1 = 2;
          break;
          c(localIntent1.getData().getPath());
          return;
          d(localIntent1.getData().getPath());
          return;
          e(localIntent1.getData().getPath());
          return;
          i1 = 0;
          break label215;
          Toast.makeText(this, "The yak is no longer available.", 0).show();
          continue;
          a(2);
          continue;
          a(0);
          continue;
          if ((i.containsKey("action")) && (i.getInt("action", 0) == 6005))
          {
            YikYak.a(0);
            Aa.k(false);
            g = false;
          }
          else
          {
            if ((!i.containsKey("action")) || (i.getInt("action", 0) != 4001)) {
              break label536;
            }
            ((HomeFragment)b(0)).a_();
          }
        }
      } while (!i.containsKey("android.intent.extra.TEXT"));
      localObject = i.getString("android.intent.extra.TEXT");
    } while (Hi.a((String)localObject));
    Object localObject = ((String)localObject).split("\\s\\|\\s");
    Intent localIntent2 = new Intent(this, SendAYak.class);
    localIntent2.addFlags(67108864);
    if (localObject.length == 2) {
      localIntent2.putExtra("content", localObject[0] + "\r\n" + localObject[1]);
    }
    for (;;)
    {
      startActivityForResult(localIntent2, 20);
      break;
      localIntent2.putExtra("content", localObject[0]);
    }
  }
  
  private void q()
  {
    if (!h)
    {
      h = true;
      getSupportFragmentManager().executePendingTransactions();
      int i1 = 0;
      for (;;)
      {
        if (i1 < o()) {
          try
          {
            getSupportFragmentManager().popBackStack();
            i1 += 1;
          }
          catch (IllegalStateException localIllegalStateException)
          {
            for (;;)
            {
              localIllegalStateException.printStackTrace();
            }
          }
        }
      }
      h = false;
    }
  }
  
  private void r()
  {
    startActivity(new Intent(this, YakarmaActivity.class));
  }
  
  private void s()
  {
    Object localObject = n();
    if ((localObject instanceof BI))
    {
      if ((!Aa.a(3)) && (((localObject instanceof HomeFragment)) || ((localObject instanceof PeekFragment))))
      {
        localObject = getResources().getString(getResources().getIdentifier("rules_rules", "string", getPackageName()));
        Intent localIntent = new Intent(this, YikYakDialog.class);
        localIntent.putExtra("title", "Rules");
        localIntent.putExtra("message", (String)localObject);
        localIntent.putExtra("align", "left");
        localIntent.putExtra("okText", "Agree");
        localIntent.putExtra("cancelText", "Disagree");
        startActivityForResult(localIntent, 33);
      }
    }
    else {
      return;
    }
    ((BI)localObject).g();
  }
  
  public void a(int paramInt)
  {
    q.setCurrentItem(paramInt, true);
  }
  
  public void a(long paramLong)
  {
    l.removeCallbacks(c);
    l.postDelayed(c, paramLong);
  }
  
  public void a(CU paramCU, int paramInt)
  {
    int i1 = CU.a(paramCU);
    paramCU = o.a(i1);
    if (paramInt > 0)
    {
      paramCU.setVisibility(0);
      paramCU.setText(String.valueOf(paramInt));
      return;
    }
    paramCU.setVisibility(8);
  }
  
  public void a(CU paramCU, Fragment paramFragment)
  {
    String str = paramCU.c();
    paramCU = a(paramCU).getView();
    if (paramCU != null)
    {
      int i1 = paramCU.getId();
      paramCU = getSupportFragmentManager().beginTransaction();
      paramCU.setTransition(4099);
      paramCU.addToBackStack(null);
      paramCU.replace(i1, paramFragment, str);
      paramCU.commitAllowingStateLoss();
    }
  }
  
  public void a(Fragment paramFragment)
  {
    if ((paramFragment != null) && ((paramFragment instanceof Br)))
    {
      paramFragment = (Br)paramFragment;
      int i1 = paramFragment.d();
      p.setActionButtonVisibility(i1);
      if (i1 != 8)
      {
        p.setActionButtonText(paramFragment.b());
        p.setOnActionButtonClickedListener(new Bj(this, paramFragment));
      }
      return;
    }
    p.setActionButtonVisibility(0);
    p.setActionButtonToYakarma();
    p.setOnActionButtonClickedListener(new Bk(this));
  }
  
  public boolean a()
  {
    if ((Aa.r()) && (Aa.n().length() == 4)) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      return g;
    }
  }
  
  public void b(Fragment paramFragment)
  {
    int i1 = 0;
    Gf localGf;
    if ((paramFragment instanceof BI))
    {
      localGf = ((BI)paramFragment).e();
      i1 = ((BI)paramFragment).f();
    }
    for (paramFragment = localGf;; paramFragment = Gf.a)
    {
      n.a(paramFragment);
      n.setBottomOffset(i1, true);
      return;
    }
  }
  
  public int c()
  {
    return q.getCurrentItem();
  }
  
  public void c(Fragment paramFragment)
  {
    if ((paramFragment instanceof Bn))
    {
      paramFragment = ((Bn)paramFragment).a();
      getSupportActionBar().setTitle(paramFragment);
      return;
    }
    getSupportActionBar().setTitle("");
  }
  
  public Bm d()
  {
    return m;
  }
  
  public void e()
  {
    a(0L);
  }
  
  public void f()
  {
    a(500L);
  }
  
  public void g()
  {
    ActionBar localActionBar = getSupportActionBar();
    if (o() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      localActionBar.setDisplayHomeAsUpEnabled(bool);
      return;
    }
  }
  
  public void h()
  {
    p.setActionButtonToYakarma();
  }
  
  public void i()
  {
    Intent localIntent = new Intent(this, SplashScreen.class);
    localIntent.setFlags(335544320);
    localIntent.putExtra("KEY_FORCE_RESTART", true);
    startActivity(localIntent);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      do
      {
        return;
      } while (paramInt2 != 1);
      Aa.b(3);
      s();
      return;
      if (paramInt2 == 1)
      {
        Aa.h(YikYak.e());
        Ha.a().k();
        Aa.n(true);
        return;
      }
      Aa.n(false);
      moveTaskToBack(true);
      finish();
      try
      {
        System.exit(0);
        return;
      }
      catch (Exception paramIntent)
      {
        paramIntent.printStackTrace();
        return;
      }
      if (paramInt2 == 6003)
      {
        g = false;
        c(300);
        a(2);
        return;
      }
      g = true;
      j = 0L;
      a(0);
      return;
      if (paramInt2 == 1)
      {
        Ha.a().b(2131230760);
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + getPackageName())));
      }
      else if (paramInt2 == 3)
      {
        Ha.a().b(2131230763);
        Aa.a(Hk.a(new Date(), 10));
      }
      else
      {
        Ha.a().b(2131230761);
        Aa.a(Hk.a(new Date(), 30));
      }
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  public void onBackStackChanged()
  {
    View localView = getCurrentFocus();
    if (localView != null) {}
    try
    {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 2);
      f();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void onBasecampAction(View paramView)
  {
    HomeFragment localHomeFragment = (HomeFragment)k.a(0);
    if (localHomeFragment != null) {
      localHomeFragment.onClick(paramView);
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    s();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i = getIntent().getExtras();
    k();
    l();
    p();
    j();
    a();
    Ag.a().a(new Be(this));
    m();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    i = paramIntent.getExtras();
    p();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    for (;;)
    {
      try
      {
        switch (paramMenuItem.getItemId())
        {
        case 16908332: 
          return super.onOptionsItemSelected(paramMenuItem);
        }
      }
      catch (Exception paramMenuItem)
      {
        return true;
      }
      q();
      if (o() <= 0) {
        break;
      }
      getSupportFragmentManager().popBackStack();
      return true;
    }
    return true;
  }
  
  public void onPause()
  {
    bool = true;
    super.onPause();
    unregisterReceiver(f);
    Adjust.onPause();
    PowerManager localPowerManager = (PowerManager)getSystemService("power");
    for (;;)
    {
      try
      {
        if (Build.VERSION.SDK_INT >= 20) {
          continue;
        }
        if (!localPowerManager.isScreenOn())
        {
          if ((!Aa.r()) || (Aa.n().length() != 4)) {
            continue;
          }
          g = bool;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
        bool = false;
        continue;
      }
      AO.a().a("BadgeUpdate");
      return;
      bool = false;
      continue;
      if (!localPowerManager.isInteractive())
      {
        if ((!Aa.r()) || (Aa.n().length() != 4)) {
          continue;
        }
        bool = true;
        g = bool;
      }
    }
  }
  
  public void onRestart()
  {
    super.onRestart();
    if (!AN.a()) {
      Ha.a().b(getString(2131230748));
    }
  }
  
  public void onResume()
  {
    super.onResume();
    registerReceiver(f, new IntentFilter("IN_APP_NOTIFY"));
    h = false;
    AD.a().h();
    Adjust.onResume(this);
    AO.a().a("BadgeUpdate", d);
    f();
    Ag.a().a(this);
  }
  
  public void onStart()
  {
    super.onStart();
  }
  
  public void onStop()
  {
    super.onStop();
    if (!AN.b()) {
      Ha.a().i();
    }
    Ha.a().f();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.MainActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */