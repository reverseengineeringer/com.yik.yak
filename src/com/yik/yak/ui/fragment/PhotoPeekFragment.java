package com.yik.yak.ui.fragment;

import BI;
import Bn;
import Dd;
import Fn;
import Hi;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.yik.yak.data.models.PeekLocation;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.adapter.EnlargedPhotoPeekAdapter;
import com.yik.yak.ui.adapter.PhotoPeekGridViewAdapter;
import com.yik.yak.ui.view.RefreshListView;

public class PhotoPeekFragment
  extends PeekFragment
  implements BI, Bn
{
  private Fn I = Fn.b;
  private MenuItem J;
  private MenuItem K;
  private boolean L;
  
  public static PhotoPeekFragment c(PeekLocation paramPeekLocation)
  {
    PhotoPeekFragment localPhotoPeekFragment = new PhotoPeekFragment();
    localPhotoPeekFragment.setArguments(PeekFragment.b(paramPeekLocation));
    return localPhotoPeekFragment;
  }
  
  private void c(RefreshListView paramRefreshListView)
  {
    switch (Fm.a[I.ordinal()])
    {
    default: 
      return;
    case 1: 
      paramRefreshListView.setLayoutManager(new GridLayoutManager(getActivity(), 3));
      return;
    }
    paramRefreshListView.setLayoutManager(new LinearLayoutManager(getActivity()));
  }
  
  private void u()
  {
    switch (Fm.a[I.ordinal()])
    {
    default: 
      return;
    case 1: 
      J.getIcon().setAlpha(255);
      K.getIcon().setAlpha(127);
      return;
    }
    J.getIcon().setAlpha(127);
    K.getIcon().setAlpha(255);
  }
  
  private void v()
  {
    switch (Fm.a[I.ordinal()])
    {
    }
    for (;;)
    {
      switch (Fm.b[y.ordinal()])
      {
      default: 
        return;
        B = new PhotoPeekGridViewAdapter(getActivity());
        A = new PhotoPeekGridViewAdapter(getActivity());
        continue;
        B = new EnlargedPhotoPeekAdapter(getActivity());
        A = new EnlargedPhotoPeekAdapter(getActivity());
      }
    }
    G.setAdapter(A);
    return;
    G.setAdapter(B);
  }
  
  protected View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903119, paramViewGroup, false);
  }
  
  public String a()
  {
    L = true;
    getActivity().invalidateOptionsMenu();
    return super.a();
  }
  
  protected void a(Fn paramFn)
  {
    if (I != paramFn)
    {
      I = paramFn;
      t();
    }
  }
  
  protected void a(RefreshListView paramRefreshListView)
  {
    c(paramRefreshListView);
  }
  
  protected void b(RefreshListView paramRefreshListView) {}
  
  protected boolean b(Yak paramYak)
  {
    switch (Fm.a[I.ordinal()])
    {
    default: 
    case 1: 
      do
      {
        return true;
      } while (!Hi.a(LinkThumbNailUrl));
      return false;
    }
    return super.b(paramYak);
  }
  
  protected void k()
  {
    v();
  }
  
  public void onClick(View paramView) {}
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    if (L)
    {
      paramMenuInflater.inflate(2131755013, paramMenu);
      J = paramMenu.findItem(2131558885);
      K = paramMenu.findItem(2131558886);
      J.getIcon().setColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
      K.getIcon().setColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
      u();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      a(Fn.a);
      continue;
      a(Fn.b);
    }
  }
  
  protected void t()
  {
    v();
    c(G);
    u();
    A.notifyDataSetChanged();
    B.notifyDataSetChanged();
    G.invalidate();
    a_();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.PhotoPeekFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */