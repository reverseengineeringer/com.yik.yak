package com.yik.yak.ui.activity;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;

public class FamousActivity$$ViewInjector<T extends FamousActivity>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    mRecyclerView = ((RecyclerView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558510, "field 'mRecyclerView'"), 2131558510, "field 'mRecyclerView'"));
    imgShareCardPreview = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558502, "field 'imgShareCardPreview'"), 2131558502, "field 'imgShareCardPreview'"));
    txtShareFamous = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558511, "field 'txtShareFamous'"), 2131558511, "field 'txtShareFamous'"));
  }
  
  public void reset(T paramT)
  {
    mRecyclerView = null;
    imgShareCardPreview = null;
    txtShareFamous = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.FamousActivity..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */