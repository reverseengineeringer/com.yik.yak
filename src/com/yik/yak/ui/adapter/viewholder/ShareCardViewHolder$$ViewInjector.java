package com.yik.yak.ui.adapter.viewholder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;

public class ShareCardViewHolder$$ViewInjector<T extends ShareCardViewHolder>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    imgShareCard = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558502, "field 'imgShareCard'"), 2131558502, "field 'imgShareCard'"));
    txtShareCardCaption = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558771, "field 'txtShareCardCaption'"), 2131558771, "field 'txtShareCardCaption'"));
  }
  
  public void reset(T paramT)
  {
    imgShareCard = null;
    txtShareCardCaption = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.ShareCardViewHolder..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */