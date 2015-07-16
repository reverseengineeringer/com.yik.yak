package com.yik.yak.ui.adapter.viewholder;

import Dm;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;
import com.yik.yak.ui.view.PhotoLinkCardView;
import com.yik.yak.ui.view.VoteView;

public class YakViewHolder$$ViewInjector<T extends YakViewHolder>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    mCardView = ((RelativeLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558797, "field 'mCardView'"), 2131558797, "field 'mCardView'"));
    txtAge = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558626, "field 'txtAge'"), 2131558626, "field 'txtAge'"));
    pnlMessage = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558794, "field 'pnlMessage'"), 2131558794, "field 'pnlMessage'"));
    txtHandle = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558623, "field 'txtHandle'"), 2131558623, "field 'txtHandle'"));
    txtContent = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558800, "field 'txtContent'"), 2131558800, "field 'txtContent'"));
    txtComments = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558627, "field 'txtComments'"), 2131558627, "field 'txtComments'"));
    pnlStatus = ((View)paramFinder.findRequiredView(paramObject, 2131558801, "field 'pnlStatus'"));
    voteView = ((VoteView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558537, "field 'voteView'"), 2131558537, "field 'voteView'"));
    pnlContainer = ((RelativeLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558799, "field 'pnlContainer'"), 2131558799, "field 'pnlContainer'"));
    View localView = (View)paramFinder.findRequiredView(paramObject, 2131558769, "field 'mPhotoThumbnail' and method 'onPhotoThumbnailClicked'");
    mPhotoThumbnail = ((ImageView)paramFinder.castView(localView, 2131558769, "field 'mPhotoThumbnail'"));
    localView.setOnClickListener(new Dm(this, paramT));
    mLinkCardView = ((PhotoLinkCardView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558837, "field 'mLinkCardView'"), 2131558837, "field 'mLinkCardView'"));
    mContentLayout = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558790, "field 'mContentLayout'"), 2131558790, "field 'mContentLayout'"));
    mCustomContentLayout = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558798, "field 'mCustomContentLayout'"), 2131558798, "field 'mCustomContentLayout'"));
  }
  
  public void reset(T paramT)
  {
    mCardView = null;
    txtAge = null;
    pnlMessage = null;
    txtHandle = null;
    txtContent = null;
    txtComments = null;
    pnlStatus = null;
    voteView = null;
    pnlContainer = null;
    mPhotoThumbnail = null;
    mLinkCardView = null;
    mContentLayout = null;
    mCustomContentLayout = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakViewHolder..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */