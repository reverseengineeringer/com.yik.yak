package com.yik.yak.ui.adapter.viewholder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;

public class BaseCampOptionViewHolder$$ViewInjector<T extends BaseCampOptionViewHolder>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    mOptionName = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558777, "field 'mOptionName'"), 2131558777, "field 'mOptionName'"));
    mSelected = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558778, "field 'mSelected'"), 2131558778, "field 'mSelected'"));
  }
  
  public void reset(T paramT)
  {
    mOptionName = null;
    mSelected = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.BaseCampOptionViewHolder..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */