package com.yik.yak.ui.fragment;

import AB;
import AF;
import Ak;
import Al;
import Aq;
import Aw;
import Az;
import Bc;
import Be;
import By;
import CH;
import DZ;
import Dh;
import Dt;
import EP;
import Eb;
import Fx;
import GB;
import Gs;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.yik.yak.YikYak;
import com.yik.yak.data.db.helper.EnvironmentTableHelper;
import com.yik.yak.data.models.Configuration;
import com.yik.yak.data.models.Configuration.BasecampConfiguration;
import com.yik.yak.data.models.PeekLocation;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.ui.activity.MainActivity;
import com.yik.yak.ui.activity.SelectBasecampActivity;
import com.yik.yak.ui.activity.SendAYak;
import com.yik.yak.ui.activity.WebActivity;
import com.yik.yak.ui.adapter.YakRecyclerViewAdapter;
import com.yik.yak.ui.view.RefreshListView;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import wP;
import xo;
import xt;
import xv;
import zQ;
import zY;

public class HomeFragment
  extends Dh
  implements Be, By
{
  public boolean H = false;
  public boolean I = false;
  protected boolean J = false;
  protected Menu K;
  protected Al L = Al.a;
  private final Eb M = new Eb(this);
  private final String N = "HomeFragment";
  private String O = "Home";
  @InjectView(2131558680)
  public LinearLayout mBasecampTabs;
  @InjectView(2131558682)
  protected TextView mTVBasecamp;
  @InjectView(2131558681)
  protected TextView mTVNearby;
  
  public HomeFragment()
  {
    super(2130903109);
  }
  
  public String a()
  {
    return O;
  }
  
  public void a(Al paramAl)
  {
    a(paramAl, false);
  }
  
  public void a(Al paramAl, boolean paramBoolean)
  {
    if ((L != paramAl) || (paramBoolean)) {
      if (paramAl == Al.b)
      {
        O = zQ.s().a();
        mTVNearby.setTextColor(getResources().getColor(2131427575));
        mTVNearby.setTypeface(Typeface.DEFAULT);
        mTVBasecamp.setTextColor(getResources().getColor(2131427561));
        mTVBasecamp.setTypeface(Typeface.DEFAULT_BOLD);
        L = paramAl;
        fda = L;
        if (n != null) {
          n = new ArrayList();
        }
        if (m != null) {
          m = new ArrayList();
        }
        a_();
      }
    }
    for (;;)
    {
      f().f();
      return;
      O = "Home";
      mTVNearby.setTextColor(getResources().getColor(2131427561));
      mTVNearby.setTypeface(Typeface.DEFAULT_BOLD);
      mTVBasecamp.setTextColor(getResources().getColor(2131427575));
      mTVBasecamp.setTypeface(Typeface.DEFAULT);
      break;
      a_();
    }
  }
  
  public void a_()
  {
    l();
    Aw.a().g();
    Aq localAq = Aq.a(getActivity());
    YakkerLocation localYakkerLocation = localAq.f();
    h = false;
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", zQ.c());
    if (L == Al.b)
    {
      localObject = zQ.s();
      localTreeMap.put("lat", String.valueOf(((Ak)localObject).c()));
      localTreeMap.put("long", String.valueOf(((Ak)localObject).d()));
      if (x == Dt.a)
      {
        Aw.a().b("bcPhotosEnabled", false);
        Aw.a().b("bcLinksEnabled", false);
      }
      if (L != Al.b) {
        break label233;
      }
      localObject = "1";
      label134:
      localTreeMap.put("bc", localObject);
      if (x != Dt.b) {
        break label240;
      }
    }
    label233:
    label240:
    for (Object localObject = "hot";; localObject = "getMessages")
    {
      i = false;
      localObject = zY.a((String)localObject, localTreeMap, localYakkerLocation);
      localObject = new xv().a((String)localObject).b();
      zY.a(true).a((xt)localObject).a(new DZ(this, localYakkerLocation, localAq));
      return;
      localTreeMap.put("lat", localYakkerLocation.a());
      localTreeMap.put("long", localYakkerLocation.b());
      break;
      localObject = "0";
      break label134;
    }
  }
  
  public void b()
  {
    if (zQ.u()) {
      mBasecampTabs.setVisibility(0);
    }
    while (x == Dt.b)
    {
      A.setData(n);
      A.notifyDataSetChanged();
      F.e().setAdapter(A);
      return;
      if (L == Al.b) {
        a(Al.c);
      }
      mBasecampTabs.setVisibility(8);
    }
    z.setData(m);
    z.notifyDataSetChanged();
    F.e().setAdapter(z);
  }
  
  public Fx c()
  {
    return Fx.b;
  }
  
  public int d()
  {
    if (E.getVisibility() == 0) {
      return E.getHeight();
    }
    return 0;
  }
  
  public void e()
  {
    Intent localIntent = new Intent(getActivity(), SendAYak.class);
    localIntent.addFlags(67108864);
    if (q() == Al.b) {
      localIntent.putExtra("isBasecamp", true);
    }
    for (;;)
    {
      localIntent.putExtra("title", a());
      startActivityForResult(localIntent, 2000);
      return;
      localIntent.putExtra("isBasecamp", false);
    }
  }
  
  public void o()
  {
    YakkerLocation localYakkerLocation = Aq.a(s).f();
    AF.a(s, "https://content.yikyakapi.net/refreshers/locate?latitude=" + localYakkerLocation.c() + "&longitude=" + localYakkerLocation.d() + "&device=android&version=" + YikYak.e());
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    p();
    paramBundle = fda;
    if (paramBundle != null) {
      a(paramBundle);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
              } while ((paramInt2 != 1) && (paramInt2 != 2001));
              a_();
              return;
            } while (paramInt2 != 1);
            paramIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + s.getPackageName()));
            if (s.getPackageManager().queryIntentActivities(paramIntent, 0).size() > 0)
            {
              startActivity(paramIntent);
              return;
            }
            paramIntent = EP.a("Rate Yik Yak", "https://play.google.com/store/apps/details?id=com.yik.yak");
            a(CH.d, paramIntent);
            return;
          } while ((paramInt2 != 1) || (paramIntent == null));
          paramIntent = paramIntent.getStringExtra("peekID");
        } while (GB.a(paramIntent));
        paramIntent = AB.a().b(paramIntent);
      } while (paramIntent == null);
      Aq.a(s).b(latitude, longitude);
      a_();
      return;
    } while (paramInt2 != 1);
    I = true;
    a(Al.b);
  }
  
  public void onClick(View paramView)
  {
    if (paramView == null) {}
    for (int i = -1;; i = paramView.getId()) {
      switch (i)
      {
      default: 
        super.onClick(paramView);
        return;
      }
    }
    j = false;
    a(Al.a, true);
    return;
    j = false;
    a(Al.a);
    Gs.a().f("Nearby");
    return;
    j = true;
    a(Al.b);
    Gs.a().f("Basecamp");
    return;
    startActivityForResult(new Intent(s, SelectBasecampActivity.class), 3500);
    return;
    paramView = new Intent(s, WebActivity.class);
    paramView.addFlags(67108864);
    paramView.putExtra("title", getString(2131230837));
    paramView.putExtra("url", aagetActivitybasecampConfiguration.tutorialUrl);
    startActivity(paramView);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenu.clear();
    paramMenuInflater.inflate(2131755013, paramMenu);
    K = paramMenu;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ButterKnife.inject(this, paramLayoutInflater);
    L = Al.a;
    mTVNearby.setOnClickListener(this);
    mTVBasecamp.setOnClickListener(this);
    l = "MainFeed";
    a_();
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    o();
    if (paramMenuItem.getGroupId() == 100000)
    {
      paramMenuItem.getItemId();
      o();
      return true;
    }
    if (paramMenuItem.getGroupId() == 100001)
    {
      paramMenuItem = EnvironmentTableHelper.getEnvironment(paramMenuItem.getItemId());
      Az.a().a(paramMenuItem);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    getActivity().setTheme(2131689483);
    AB.a().a("HomeFragment");
  }
  
  public void onResume()
  {
    super.onResume();
    AB.a().a("HomeFragment", M);
  }
  
  public void p()
  {
    if ((zQ.u()) && (zQ.w()))
    {
      mBasecampTabs.setVisibility(0);
      return;
    }
    mBasecampTabs.setVisibility(8);
  }
  
  public Al q()
  {
    return L;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.HomeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */