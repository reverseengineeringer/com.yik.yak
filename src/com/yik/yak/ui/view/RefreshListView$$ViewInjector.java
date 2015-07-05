package com.yik.yak.ui.view;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;
import com.yik.yak.ui.pullrefresh.PullRefreshLayout;

public class RefreshListView$$ViewInjector<T extends RefreshListView>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    refreshImage = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558530, "field 'refreshImage'"), 2131558530, "field 'refreshImage'"));
    noYaksImage = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558531, "field 'noYaksImage'"), 2131558531, "field 'noYaksImage'"));
    pullToRefreshLayout = ((PullRefreshLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558820, "field 'pullToRefreshLayout'"), 2131558820, "field 'pullToRefreshLayout'"));
    recyclerView = ((RecyclerView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558532, "field 'recyclerView'"), 2131558532, "field 'recyclerView'"));
  }
  
  public void reset(T paramT)
  {
    refreshImage = null;
    noYaksImage = null;
    pullToRefreshLayout = null;
    recyclerView = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.RefreshListView..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */