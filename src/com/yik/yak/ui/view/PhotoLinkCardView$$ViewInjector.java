package com.yik.yak.ui.view;

import Fm;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;

public class PhotoLinkCardView$$ViewInjector<T extends PhotoLinkCardView>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    mImageView = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558813, "field 'mImageView'"), 2131558813, "field 'mImageView'"));
    mLinkDetails = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558814, "field 'mLinkDetails'"), 2131558814, "field 'mLinkDetails'"));
    mLinkTitle = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558815, "field 'mLinkTitle'"), 2131558815, "field 'mLinkTitle'"));
    mLinkDescription = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558816, "field 'mLinkDescription'"), 2131558816, "field 'mLinkDescription'"));
    mLink = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558818, "field 'mLink'"), 2131558818, "field 'mLink'"));
    paramT.setOnClickListener(new Fm(this, paramT));
  }
  
  public void reset(T paramT)
  {
    mImageView = null;
    mLinkDetails = null;
    mLinkTitle = null;
    mLinkDescription = null;
    mLink = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.PhotoLinkCardView..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */