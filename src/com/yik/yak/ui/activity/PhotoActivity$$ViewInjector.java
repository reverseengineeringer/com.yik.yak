package com.yik.yak.ui.activity;

import android.view.View;
import android.widget.ImageView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;

public class PhotoActivity$$ViewInjector<T extends PhotoActivity>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    mImageView = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558533, "field 'mImageView'"), 2131558533, "field 'mImageView'"));
  }
  
  public void reset(T paramT)
  {
    mImageView = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.PhotoActivity..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */