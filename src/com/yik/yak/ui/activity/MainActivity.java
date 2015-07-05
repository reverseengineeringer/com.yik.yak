package com.yik.yak.ui.activity;

import AA;
import AB;
import AQ;
import AR;
import AT;
import AU;
import AV;
import AW;
import AX;
import AY;
import AZ;
import Aq;
import Ba;
import Bb;
import Bc;
import Bd;
import Bh;
import By;
import CG;
import CH;
import DJ;
import Ev;
import Fx;
import GB;
import GD;
import Gs;
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
import com.yik.yak.ui.fragment.CommentFragment;
import com.yik.yak.ui.fragment.HomeFragment;
import com.yik.yak.ui.view.PromotedActionButtonView;
import com.yik.yak.ui.view.navigation.SlidingTabLayout;
import com.yik.yak.ui.view.navigation.YikYakMainToolbar;
import java.util.Date;
import uP;
import zQ;
import zV;

public class MainActivity
  extends BaseAppCompatActivity
  implements FragmentManager.OnBackStackChangedListener, View.OnClickListener
{
  Runnable b = new AT(this);
  private final Bb c = new Bb(this);
  private final String d = "BadgeUpdate";
  private BroadcastReceiver e = new AQ(this);
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private Bundle k = null;
  private long l = 0L;
  private CG m;
  private Handler n = new Handler();
  private uP o = null;
  private Bc p = new Bc(this);
  private PromotedActionButtonView q;
  private SlidingTabLayout r;
  private YikYakMainToolbar s;
  private ViewPager t;
  
  private Fragment a(CH paramCH)
  {
    Object localObject = paramCH.c();
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag((String)localObject);
    if ((m() != 0) && (localFragment != null))
    {
      localObject = localFragment;
      if (!localFragment.isRemoving()) {}
    }
    else
    {
      localObject = m.a(CH.a(paramCH));
    }
    if (localObject == null)
    {
      i();
      finish();
    }
    return (Fragment)localObject;
  }
  
  private Fragment b(int paramInt)
  {
    return a(CH.a(paramInt));
  }
  
  private void b(String paramString)
  {
    if (c() != 3) {
      a(3);
    }
    if (!(l() instanceof DJ)) {
      new Handler().postDelayed(new AR(this, paramString), 500L);
    }
  }
  
  private void c(int paramInt)
  {
    l = (System.currentTimeMillis() + paramInt * 1000);
  }
  
  private void j()
  {
    setContentView(2130903068);
    s = ((YikYakMainToolbar)findViewById(2131558499));
    setSupportActionBar(s);
    m = new CG(getSupportFragmentManager());
    t = ((ViewPager)findViewById(2131558514));
    t.setAdapter(m);
    t.setOffscreenPageLimit(4);
    r = ((SlidingTabLayout)findViewById(2131558513));
    r.setViewPager(t);
    q = ((PromotedActionButtonView)findViewById(2131558515));
  }
  
  private void k()
  {
    s.setOnActionButtonClickedListener(new AW(this));
    r.setOnPageChangeListener(new AX(this));
    q.setOnClickListener(this);
    r.setOnTabReselectedListener(new AY(this));
    getSupportFragmentManager().addOnBackStackChangedListener(this);
  }
  
  private Fragment l()
  {
    return b(t.getCurrentItem());
  }
  
  private int m()
  {
    return getSupportFragmentManager().getBackStackEntryCount();
  }
  
  private void n()
  {
    Object localObject1 = getIntent();
    int i1;
    if (localObject1 != null)
    {
      localObject2 = ((Intent)localObject1).getData();
      if ((localObject2 != null) && (((Uri)localObject2).getScheme().equals("yikyak")))
      {
        localObject2 = ((Intent)localObject1).getData().getHost();
        i1 = -1;
      }
    }
    switch (((String)localObject2).hashCode())
    {
    default: 
      switch (i1)
      {
      default: 
        if (k != null)
        {
          if ((!k.containsKey("action")) || (k.getInt("action", 0) != 4000)) {
            break label282;
          }
          YikYak.a(0);
          localObject1 = k.getString("yakId", "");
          if ((!g) || (!zQ.m()) || (zQ.i().length() != 4)) {
            break label255;
          }
          i1 = 1;
          label164:
          if ((k.getInt("count", 1) != 1) || (i1 != 0)) {
            break label274;
          }
          a(0);
          localObject1 = Yak.initializeYak(this, (String)localObject1);
          if (HasError) {
            break label260;
          }
          startActivity(CommentFragment.a(this, true, (Yak)localObject1, null, "PushNotification"));
          label215:
          zV.a().a(this);
        }
        break;
      }
      break;
    }
    label255:
    label260:
    label274:
    label282:
    label328:
    do
    {
      do
      {
        for (;;)
        {
          k = null;
          return;
          if (!((String)localObject2).equals("contact")) {
            break;
          }
          i1 = 0;
          break;
          b(((Intent)localObject1).getData().getPath());
          return;
          i1 = 0;
          break label164;
          Toast.makeText(this, "The yak is no longer available.", 0).show();
          break label215;
          a(2);
          break label215;
          if ((!k.containsKey("action")) || (k.getInt("action", 0) != 6005)) {
            break label328;
          }
          YikYak.a(0);
          zQ.e(false);
          g = false;
        }
      } while (!k.containsKey("android.intent.extra.TEXT"));
      localObject1 = k.getString("android.intent.extra.TEXT");
    } while (GB.a((String)localObject1));
    localObject1 = ((String)localObject1).split("\\s\\|\\s");
    Object localObject2 = new Intent(this, SendAYak.class);
    ((Intent)localObject2).addFlags(67108864);
    if (localObject1.length == 2) {
      ((Intent)localObject2).putExtra("content", localObject1[0] + "\r\n" + localObject1[1]);
    }
    for (;;)
    {
      startActivityForResult((Intent)localObject2, 20);
      break;
      ((Intent)localObject2).putExtra("content", localObject1[0]);
    }
  }
  
  private void o()
  {
    if (!i)
    {
      i = true;
      getSupportFragmentManager().executePendingTransactions();
      int i1 = 0;
      for (;;)
      {
        if (i1 < m()) {
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
      i = false;
    }
  }
  
  private void p()
  {
    startActivity(new Intent(this, YakarmaActivity.class));
  }
  
  private void q()
  {
    Object localObject = l();
    if ((localObject instanceof By))
    {
      if ((!zQ.a(3)) && (((localObject instanceof HomeFragment)) || ((localObject instanceof Ev))))
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
    ((By)localObject).e();
  }
  
  public void a(int paramInt)
  {
    t.setCurrentItem(paramInt, true);
  }
  
  public void a(long paramLong)
  {
    n.removeCallbacks(b);
    n.postDelayed(b, paramLong);
  }
  
  public void a(CH paramCH, int paramInt)
  {
    int i1 = CH.a(paramCH);
    paramCH = r.a(i1);
    if (paramInt > 0)
    {
      paramCH.setVisibility(0);
      paramCH.setText(String.valueOf(paramInt));
      return;
    }
    paramCH.setVisibility(8);
  }
  
  public void a(CH paramCH, Fragment paramFragment)
  {
    String str = paramCH.c();
    paramCH = a(paramCH).getView();
    if (paramCH != null)
    {
      int i1 = paramCH.getId();
      paramCH = getSupportFragmentManager().beginTransaction();
      paramCH.setTransition(4099);
      paramCH.addToBackStack(null);
      paramCH.replace(i1, paramFragment, str);
      paramCH.commitAllowingStateLoss();
    }
  }
  
  public void a(Fragment paramFragment)
  {
    if ((paramFragment != null) && ((paramFragment instanceof Bh)))
    {
      String str = ((Bh)paramFragment).b();
      s.setActionButtonText(str);
      s.setOnActionButtonClickedListener(new AZ(this, paramFragment));
      return;
    }
    s.setActionButtonToYakarma();
    s.setOnActionButtonClickedListener(new Ba(this));
  }
  
  public boolean a()
  {
    if ((zQ.m()) && (zQ.i().length() == 4)) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      return g;
    }
  }
  
  public void b(Fragment paramFragment)
  {
    int i1 = 0;
    Fx localFx;
    if ((paramFragment instanceof By))
    {
      localFx = ((By)paramFragment).c();
      i1 = ((By)paramFragment).d();
    }
    for (paramFragment = localFx;; paramFragment = Fx.a)
    {
      q.a(paramFragment);
      q.setBottomOffset(i1, true);
      return;
    }
  }
  
  public int c()
  {
    return t.getCurrentItem();
  }
  
  public void c(Fragment paramFragment)
  {
    if ((paramFragment instanceof Bd))
    {
      paramFragment = ((Bd)paramFragment).a();
      getSupportActionBar().setTitle(paramFragment);
      return;
    }
    getSupportActionBar().setTitle("");
  }
  
  public Bc d()
  {
    return p;
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
    if (m() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      localActionBar.setDisplayHomeAsUpEnabled(bool);
      return;
    }
  }
  
  public void h()
  {
    s.setActionButtonToYakarma();
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
      zQ.b(3);
      q();
      return;
      if (paramInt2 == 6003)
      {
        g = false;
        c(300);
        a(2);
        return;
      }
      g = true;
      l = 0L;
      a(0);
      return;
      if (paramInt2 == 1)
      {
        Gs.a().b(2131230759);
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + getPackageName())));
      }
      else if (paramInt2 == 3)
      {
        Gs.a().b(2131230762);
        zQ.a(GD.a(new Date(), 30));
      }
      else
      {
        Gs.a().b(2131230760);
        zQ.k();
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
    HomeFragment localHomeFragment = (HomeFragment)m.a(0);
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
    q();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    k = getIntent().getExtras();
    j();
    k();
    n();
    if (zQ.a("CheckPinning", true))
    {
      Gs.a().q();
      zQ.a("CheckPinning", false);
    }
    try
    {
      uP.a(getApplicationContext(), "21484", "cb4977fb01bb2fa9f16c219f01b59817");
      o = uP.a();
      registerReceiver(e, new IntentFilter("IN_APP_NOTIFY"));
      new Thread(new AU(this)).start();
      a();
      zV.a().a(new AV(this));
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    Gs.a().f();
    Gs.a().d();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    k = paramIntent.getExtras();
    n();
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
      o();
      if (m() <= 0) {
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
          if ((!zQ.m()) || (zQ.i().length() != 4)) {
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
      AB.a().a("BadgeUpdate");
      return;
      bool = false;
      continue;
      if (!localPowerManager.isInteractive())
      {
        if ((!zQ.m()) || (zQ.i().length() != 4)) {
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
    if (!AA.a()) {
      Gs.a().b(getString(2131230748));
    }
  }
  
  public void onResume()
  {
    super.onResume();
    i = false;
    o.a(this);
    o.c();
    Aq.a(this).g();
    Adjust.onResume(this);
    AB.a().a("BadgeUpdate", c);
    f();
    zV.a().a(this);
  }
  
  public void onStart()
  {
    super.onStart();
    Gs.a().e();
  }
  
  public void onStop()
  {
    super.onStop();
    if (!AA.b())
    {
      Gs.a().g();
      Gs.a().d();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.MainActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */