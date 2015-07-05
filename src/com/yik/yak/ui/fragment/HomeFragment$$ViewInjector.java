package com.yik.yak.ui.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;

public class HomeFragment$$ViewInjector<T extends HomeFragment>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    mTVNearby = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558681, "field 'mTVNearby'"), 2131558681, "field 'mTVNearby'"));
    mTVBasecamp = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558682, "field 'mTVBasecamp'"), 2131558682, "field 'mTVBasecamp'"));
    mBasecampTabs = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558680, "field 'mBasecampTabs'"), 2131558680, "field 'mBasecampTabs'"));
  }
  
  public void reset(T paramT)
  {
    mTVNearby = null;
    mTVBasecamp = null;
    mBasecampTabs = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.HomeFragment..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */