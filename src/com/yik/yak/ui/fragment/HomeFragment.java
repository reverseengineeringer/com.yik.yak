package com.yik.yak.ui.fragment;

import AD;
import AJ;
import AM;
import AO;
import AS;
import Aa;
import Aj;
import Aw;
import Ax;
import BI;
import Bm;
import Bo;
import CU;
import DX;
import Dd;
import EN;
import EO;
import EQ;
import Gf;
import Ha;
import Hi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
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
import com.yik.yak.ui.view.RefreshListView;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import wY;
import xD;
import xF;
import xy;

public class HomeFragment
  extends BaseYakFragment
  implements BI, Bo
{
  public boolean I = false;
  public boolean J = false;
  protected boolean K = false;
  protected Menu L;
  protected Ax M = Ax.a;
  protected TextView N;
  protected TextView O;
  public LinearLayout P;
  private final EQ Q = new EQ(this);
  private final String R = "HomeFragment";
  private String S = "Home";
  
  public HomeFragment()
  {
    super(2130903114);
  }
  
  private void a(View paramView)
  {
    N = ((TextView)paramView.findViewById(2131558700));
    O = ((TextView)paramView.findViewById(2131558701));
    P = ((LinearLayout)paramView.findViewById(2131558699));
  }
  
  public String a()
  {
    return S;
  }
  
  public void a(Ax paramAx)
  {
    a(paramAx, false);
  }
  
  public void a(Ax paramAx, boolean paramBoolean)
  {
    if ((M != paramAx) || (paramBoolean)) {
      if (paramAx == Ax.b)
      {
        S = Aa.y().a();
        if (Hi.a(S)) {
          S = getString(2131231011);
        }
        N.setTextColor(getResources().getColor(2131427575));
        N.setTypeface(Typeface.DEFAULT);
        O.setTextColor(getResources().getColor(2131427561));
        O.setTypeface(Typeface.DEFAULT_BOLD);
        M = paramAx;
        hda = M;
        if (o != null) {
          o = new ArrayList();
        }
        if (n != null) {
          n = new ArrayList();
        }
        a_();
      }
    }
    for (;;)
    {
      h().f();
      return;
      S = "Home";
      N.setTextColor(getResources().getColor(2131427561));
      N.setTypeface(Typeface.DEFAULT_BOLD);
      O.setTextColor(getResources().getColor(2131427575));
      O.setTypeface(Typeface.DEFAULT);
      break;
      a_();
    }
  }
  
  public void a(Intent paramIntent) {}
  
  public void a_()
  {
    p();
    AJ.a().g();
    AD localAD = AD.a();
    YakkerLocation localYakkerLocation = localAD.g();
    i = false;
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", Aa.g());
    if (M == Ax.b)
    {
      localObject = Aa.y();
      localTreeMap.put("lat", String.valueOf(((Aw)localObject).c()));
      localTreeMap.put("long", String.valueOf(((Aw)localObject).d()));
      if (y == DX.a)
      {
        AJ.a().b("bcPhotosEnabled", false);
        AJ.a().b("bcLinksEnabled", false);
      }
      if (M != Ax.b) {
        break label229;
      }
      localObject = "1";
      label130:
      localTreeMap.put("bc", localObject);
      if (y != DX.b) {
        break label236;
      }
    }
    label229:
    label236:
    for (Object localObject = "hot";; localObject = "getMessages")
    {
      j = false;
      localObject = Aj.a((String)localObject, localTreeMap, localYakkerLocation);
      localObject = new xF().a((String)localObject).b();
      Aj.a(true).a((xD)localObject).a(new EO(this, localYakkerLocation, localAD));
      return;
      localTreeMap.put("lat", localYakkerLocation.a());
      localTreeMap.put("long", localYakkerLocation.b());
      break;
      localObject = "0";
      break label130;
    }
  }
  
  public void b()
  {
    if (Aa.A()) {
      P.setVisibility(0);
    }
    while (y == DX.b)
    {
      B.setData(o);
      B.notifyDataSetChanged();
      G.f().setAdapter(B);
      return;
      if (M == Ax.b) {
        a(Ax.c);
      }
      P.setVisibility(8);
    }
    A.setData(n);
    A.notifyDataSetChanged();
    G.f().setAdapter(A);
  }
  
  public void c()
  {
    YakkerLocation localYakkerLocation = AD.a().g();
    AS.a(t, "https://content.yikyakapi.net/refreshers/locate?latitude=" + localYakkerLocation.c() + "&longitude=" + localYakkerLocation.d() + "&device=android&version=" + YikYak.e());
  }
  
  public void d()
  {
    if ((Aa.A()) && (Aa.C()))
    {
      P.setVisibility(0);
      return;
    }
    P.setVisibility(8);
  }
  
  public Gf e()
  {
    return Gf.b;
  }
  
  public int f()
  {
    if ((F != null) && (F.getVisibility() == 0)) {
      return F.getHeight();
    }
    return 0;
  }
  
  public void g()
  {
    Intent localIntent = new Intent(getActivity(), SendAYak.class);
    localIntent.addFlags(67108864);
    if (s() == Ax.b) {
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
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    d();
    paramBundle = hda;
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
            paramIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + t.getPackageName()));
            if (t.getPackageManager().queryIntentActivities(paramIntent, 0).size() > 0)
            {
              startActivity(paramIntent);
              return;
            }
            paramIntent = WebFragment.a("Rate Yik Yak", "https://play.google.com/store/apps/details?id=com.yik.yak");
            a(CU.d, paramIntent);
            return;
          } while ((paramInt2 != 1) || (paramIntent == null));
          paramIntent = paramIntent.getStringExtra("peekID");
        } while (Hi.a(paramIntent));
        paramIntent = AO.a().b(paramIntent);
      } while (paramIntent == null);
      AD.a().b(latitude, longitude);
      a_();
      return;
    } while (paramInt2 != 1);
    J = true;
    a(Ax.b);
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
    k = false;
    a(Ax.a, true);
    return;
    k = false;
    a(Ax.a);
    Ha.a().h("Nearby");
    return;
    k = true;
    a(Ax.b);
    Ha.a().h("Basecamp");
    return;
    paramView = new Intent(t, SelectBasecampActivity.class);
    paramView.putExtra("Source", "Tutorial");
    startActivityForResult(paramView, 3500);
    return;
    paramView = new Intent(t, WebActivity.class);
    paramView.addFlags(67108864);
    paramView.putExtra("title", getString(2131230855));
    paramView.putExtra("url", aagetActivitybasecampConfiguration.tutorialUrl);
    startActivity(paramView);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenu.clear();
    paramMenuInflater.inflate(2131755014, paramMenu);
    L = paramMenu;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    a(paramLayoutInflater);
    M = Ax.a;
    N.setOnClickListener(this);
    O.setOnClickListener(this);
    m = "MainFeed";
    a_();
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    c();
    if (paramMenuItem.getGroupId() == 99999)
    {
      paramMenuItem = new DeveloperFragment();
      a(CU.a, paramMenuItem);
      return true;
    }
    if (paramMenuItem.getGroupId() == 100000)
    {
      paramMenuItem.getItemId();
      c();
      return true;
    }
    if (paramMenuItem.getGroupId() == 100001)
    {
      paramMenuItem = EnvironmentTableHelper.getEnvironment(paramMenuItem.getItemId());
      AM.a().a(paramMenuItem);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    getActivity().setTheme(2131689483);
    AO.a().a("HomeFragment");
  }
  
  public void onResume()
  {
    super.onResume();
    AO.a().a("HomeFragment", Q);
    new Handler().postDelayed(new EN(this), 500L);
  }
  
  public Ax s()
  {
    return M;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.HomeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */