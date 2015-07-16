package com.yik.yak.ui.view;

import Dd;
import FE;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.yik.yak.ui.pullrefresh.PullRefreshLayout;

public class RefreshListView
  extends RelativeLayout
{
  protected RecyclerView.LayoutManager a;
  protected ImageView b;
  protected ImageView c;
  protected PullRefreshLayout d;
  protected RecyclerView e;
  
  public RefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a()
  {
    c.setVisibility(8);
  }
  
  public void b()
  {
    c.setVisibility(0);
  }
  
  public RecyclerView.LayoutManager c()
  {
    if (a == null) {
      a = new LinearLayoutManager(getContext());
    }
    return a;
  }
  
  public LinearLayoutManager d()
  {
    RecyclerView.LayoutManager localLayoutManager = c();
    if ((localLayoutManager instanceof LinearLayoutManager)) {
      return (LinearLayoutManager)localLayoutManager;
    }
    return null;
  }
  
  public PullRefreshLayout e()
  {
    return d;
  }
  
  public RecyclerView f()
  {
    return e;
  }
  
  public boolean g()
  {
    return d.a();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    b = ((ImageView)findViewById(2131558531));
    c = ((ImageView)findViewById(2131558532));
    d = ((PullRefreshLayout)findViewById(2131558845));
    e = ((RecyclerView)findViewById(2131558533));
    e.setLayoutManager(c());
  }
  
  public void setAdapter(Dd<?, ?> paramDd)
  {
    e.setAdapter(paramDd);
  }
  
  public void setAnimationBackgroundColor(int paramInt)
  {
    d.setAnimationBackgroundColor(paramInt);
  }
  
  public void setLayoutManager(RecyclerView.LayoutManager paramLayoutManager)
  {
    a = paramLayoutManager;
    e.setLayoutManager(a);
    e.invalidate();
  }
  
  public void setOnRefreshListener(FE paramFE)
  {
    d.setOnRefreshListener(paramFE);
  }
  
  public void setOnScrollListener(RecyclerView.OnScrollListener paramOnScrollListener)
  {
    e.setOnScrollListener(paramOnScrollListener);
  }
  
  public void setRefreshImage(int paramInt)
  {
    d.setRefreshImage(getResources().getDrawable(paramInt));
  }
  
  public void setRefreshImage(Drawable paramDrawable)
  {
    d.setRefreshImage(paramDrawable);
  }
  
  public void setRefreshImageDrawable(int paramInt)
  {
    b.setImageDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setRefreshImageDrawable(Drawable paramDrawable)
  {
    b.setImageDrawable(paramDrawable);
  }
  
  public void setRefreshStyle(int paramInt)
  {
    d.setRefreshStyle(paramInt);
  }
  
  public void setRefreshing(boolean paramBoolean)
  {
    if (d != null) {
      d.setRefreshing(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.RefreshListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */