package com.yik.yak.ui.adapter.viewholder;

import android.view.View;
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
    mCardView = ((RelativeLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558774, "field 'mCardView'"), 2131558774, "field 'mCardView'"));
    txtAge = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558615, "field 'txtAge'"), 2131558615, "field 'txtAge'"));
    pnlMessage = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558770, "field 'pnlMessage'"), 2131558770, "field 'pnlMessage'"));
    txtHandle = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558611, "field 'txtHandle'"), 2131558611, "field 'txtHandle'"));
    txtContent = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558778, "field 'txtContent'"), 2131558778, "field 'txtContent'"));
    txtComments = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558616, "field 'txtComments'"), 2131558616, "field 'txtComments'"));
    pnlStatus = ((View)paramFinder.findRequiredView(paramObject, 2131558779, "field 'pnlStatus'"));
    voteView = ((VoteView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558613, "field 'voteView'"), 2131558613, "field 'voteView'"));
    pnlContainer = ((RelativeLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558777, "field 'pnlContainer'"), 2131558777, "field 'pnlContainer'"));
    mPhotoLinkCardView = ((PhotoLinkCardView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558812, "field 'mPhotoLinkCardView'"), 2131558812, "field 'mPhotoLinkCardView'"));
    mContentLayout = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558776, "field 'mContentLayout'"), 2131558776, "field 'mContentLayout'"));
    mCustomContentLayout = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558775, "field 'mCustomContentLayout'"), 2131558775, "field 'mCustomContentLayout'"));
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
    mPhotoLinkCardView = null;
    mContentLayout = null;
    mCustomContentLayout = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakViewHolder..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */