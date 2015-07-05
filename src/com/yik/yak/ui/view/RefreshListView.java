package com.yik.yak.ui.view;

import CQ;
import EY;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.yik.yak.ui.pullrefresh.PullRefreshLayout;

public class RefreshListView
  extends RelativeLayout
{
  protected LinearLayoutManager a;
  @InjectView(2131558531)
  protected ImageView noYaksImage;
  @InjectView(2131558820)
  protected PullRefreshLayout pullToRefreshLayout;
  @InjectView(2131558532)
  protected RecyclerView recyclerView;
  @InjectView(2131558530)
  protected ImageView refreshImage;
  
  public RefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a()
  {
    noYaksImage.setVisibility(8);
  }
  
  public void b()
  {
    noYaksImage.setVisibility(0);
  }
  
  public LinearLayoutManager c()
  {
    return a;
  }
  
  public PullRefreshLayout d()
  {
    return pullToRefreshLayout;
  }
  
  public RecyclerView e()
  {
    return recyclerView;
  }
  
  public boolean f()
  {
    return pullToRefreshLayout.a();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a = new LinearLayoutManager(getContext());
    ButterKnife.inject(this, this);
    recyclerView.setLayoutManager(a);
  }
  
  public void setAdapter(CQ<?, ?> paramCQ)
  {
    recyclerView.setAdapter(paramCQ);
  }
  
  public void setAnimationBackgroundColor(int paramInt)
  {
    pullToRefreshLayout.setAnimationBackgroundColor(paramInt);
  }
  
  public void setOnRefreshListener(EY paramEY)
  {
    pullToRefreshLayout.setOnRefreshListener(paramEY);
  }
  
  public void setOnScrollListener(RecyclerView.OnScrollListener paramOnScrollListener)
  {
    recyclerView.setOnScrollListener(paramOnScrollListener);
  }
  
  public void setRefreshImage(int paramInt)
  {
    pullToRefreshLayout.setRefreshImage(getResources().getDrawable(paramInt));
  }
  
  public void setRefreshImage(Drawable paramDrawable)
  {
    pullToRefreshLayout.setRefreshImage(paramDrawable);
  }
  
  public void setRefreshImageDrawable(int paramInt)
  {
    refreshImage.setImageDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setRefreshImageDrawable(Drawable paramDrawable)
  {
    refreshImage.setImageDrawable(paramDrawable);
  }
  
  public void setRefreshStyle(int paramInt)
  {
    pullToRefreshLayout.setRefreshStyle(paramInt);
  }
  
  public void setRefreshing(boolean paramBoolean)
  {
    if (pullToRefreshLayout != null) {
      pullToRefreshLayout.setRefreshing(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.RefreshListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */