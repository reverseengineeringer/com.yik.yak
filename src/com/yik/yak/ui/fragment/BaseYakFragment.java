package com.yik.yak.ui.fragment;

import AJ;
import AS;
import DM;
import DN;
import DO;
import DP;
import DQ;
import DR;
import DS;
import DT;
import DU;
import DV;
import DW;
import DX;
import Dd;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.adapter.YakRecyclerViewAdapter;
import com.yik.yak.ui.view.DividerItemDecoration;
import com.yik.yak.ui.view.RefreshListView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public abstract class BaseYakFragment
  extends BaseFragment
  implements View.OnClickListener
{
  public Dd A;
  public Dd B;
  public ImageView C = null;
  public ImageView D = null;
  protected LinearLayout E = null;
  public LinearLayout F;
  public RefreshListView G;
  public View H;
  public boolean c = false;
  protected boolean d = true;
  public boolean e = true;
  public boolean f = true;
  public boolean g = true;
  public boolean h = false;
  protected boolean i = false;
  public boolean j = false;
  public boolean k = false;
  protected int l = 0;
  protected String m;
  public ArrayList<Yak> n;
  public ArrayList<Yak> o;
  protected BroadcastReceiver p = new DM(this);
  protected Bundle q = null;
  public Comparator<Yak> r = new DP(this);
  public Comparator<Yak> s = new DQ(this);
  public Context t;
  protected int u;
  public TranslateAnimation v;
  public TranslateAnimation w;
  protected Animation.AnimationListener x = new DR(this);
  public DX y = DX.a;
  protected DX z = DX.a;
  
  public BaseYakFragment()
  {
    u = 2130903124;
  }
  
  public BaseYakFragment(int paramInt)
  {
    u = paramInt;
  }
  
  private void b(Yak paramYak)
  {
    try
    {
      if ((Type == 0) || (Type == 5) || (Type == 6)) {
        a(paramYak);
      }
      return;
    }
    catch (Exception paramYak)
    {
      paramYak.printStackTrace();
    }
  }
  
  protected View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(u, paramViewGroup, false);
  }
  
  public void a(DX paramDX)
  {
    y = paramDX;
  }
  
  public void a(Yak paramYak)
  {
    startActivityForResult(CommentFragment.a(getActivity(), d, paramYak, Boolean.valueOf(k), m), 123);
  }
  
  protected void a(RefreshListView paramRefreshListView)
  {
    paramRefreshListView.setLayoutManager(new LinearLayoutManager(getActivity()));
  }
  
  public void a(Exception paramException)
  {
    if (!isAdded()) {
      return;
    }
    new Handler(t.getMainLooper()).post(new DS(this, paramException));
  }
  
  public void a(Comparator<Yak> paramComparator1, Comparator<Yak> paramComparator2)
  {
    if ((n != null) && (n.size() > 1) && (paramComparator1 != null)) {
      Collections.sort(n, paramComparator1);
    }
    if ((o != null) && (o.size() > 1) && (paramComparator2 != null)) {
      Collections.sort(o, paramComparator2);
    }
    if (y == DX.b)
    {
      C.setVisibility(8);
      D.setVisibility(0);
      G.setAdapter(B);
      B.setData(o);
      B.notifyDataSetChanged();
    }
    for (;;)
    {
      G.setRefreshing(false);
      return;
      C.setVisibility(0);
      D.setVisibility(8);
      G.setAdapter(A);
      A.setData(n);
      A.notifyDataSetChanged();
    }
  }
  
  public abstract void a_();
  
  protected void b(RefreshListView paramRefreshListView)
  {
    G.f().addItemDecoration(new DividerItemDecoration(getResources().getDrawable(2130837729)));
  }
  
  protected void k()
  {
    A = new YakRecyclerViewAdapter(getActivity());
    B = new YakRecyclerViewAdapter(getActivity());
  }
  
  public void l() {}
  
  public List<Yak> m()
  {
    if (y == DX.b) {
      return o;
    }
    return n;
  }
  
  public void n()
  {
    if (!G.g())
    {
      if (!AS.c()) {
        break label73;
      }
      if (AJ.a().d())
      {
        G.setRefreshStyle(1);
        G.setRefreshImageDrawable(AS.c);
        G.setRefreshImage(AS.c);
      }
    }
    else
    {
      return;
    }
    G.setRefreshStyle(2);
    G.setAnimationBackgroundColor(AS.b());
    return;
    label73:
    G.setRefreshStyle(1);
    G.setRefreshImageDrawable(2130837876);
    G.setRefreshImage(2130837876);
  }
  
  public void o()
  {
    if (((y == DX.a) && ((n == null) || (n.size() == 0))) || ((y == DX.b) && ((o == null) || (o.size() == 0))))
    {
      G.b();
      return;
    }
    G.a();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == 0) {
      return;
    }
    switch (paramInt1)
    {
    default: 
      return;
    }
    a_();
  }
  
  public void onClick(View paramView) {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    H = a(paramLayoutInflater, paramViewGroup, paramBundle);
    t = H.getContext();
    l = ((int)getResources().getDimension(2131493033));
    setHasOptionsMenu(true);
    q = getArguments();
    if (q != null)
    {
      d = q.getBoolean("canSubmit", true);
      e = q.getBoolean("canVote", true);
      f = q.getBoolean("canReply", true);
      g = q.getBoolean("canReport", true);
    }
    F = ((LinearLayout)H.findViewById(2131558848));
    G = ((RefreshListView)H.findViewById(2131558844));
    a(G);
    G.setOnRefreshListener(new DT(this));
    w = new TranslateAnimation(0.0F, 0.0F, 0.0F, l);
    w.setDuration(300L);
    w.setFillAfter(true);
    w.setAnimationListener(x);
    v = new TranslateAnimation(0.0F, 0.0F, l, 0.0F);
    v.setDuration(300L);
    v.setFillAfter(true);
    v.setAnimationListener(x);
    G.f().setOnClickListener(this);
    b(G);
    G.setOnScrollListener(new DU(this));
    k();
    A.setContextMenuEnabled(false);
    B.setContextMenuEnabled(false);
    B.setOnItemClickListener(new DV(this));
    A.setOnItemClickListener(new DW(this));
    C = ((ImageView)H.findViewById(2131558851));
    E = ((LinearLayout)H.findViewById(2131558849));
    E.setOnClickListener(new DN(this));
    D = ((ImageView)H.findViewById(2131558854));
    ((LinearLayout)H.findViewById(2131558852)).setOnClickListener(new DO(this));
    n();
    return H;
  }
  
  public void onPause()
  {
    super.onPause();
    t.unregisterReceiver(p);
  }
  
  public void onResume()
  {
    super.onResume();
    t.registerReceiver(p, new IntentFilter("REFRESH_ASSET_READY"));
  }
  
  protected void p()
  {
    if (!G.g())
    {
      H.findViewById(2131558532).setVisibility(8);
      View localView = H.findViewById(2131558531);
      localView.setVisibility(0);
      RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
      localRotateAnimation.setInterpolator(new LinearInterpolator());
      localRotateAnimation.setRepeatCount(-1);
      localRotateAnimation.setDuration(1000L);
      localView.startAnimation(localRotateAnimation);
    }
  }
  
  public void q()
  {
    View localView = H.findViewById(2131558531);
    localView.setAnimation(null);
    localView.setVisibility(8);
    o();
  }
  
  public void r()
  {
    Yak localYak;
    if (m().size() > 0)
    {
      localYak = new Yak();
      Type = -1;
      DeliveryID = -1;
      ViewResourceID = 2130903140;
      if (y == DX.b) {
        o.add(localYak);
      }
    }
    else
    {
      return;
    }
    n.add(localYak);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.BaseYakFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */