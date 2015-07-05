package com.yik.yak.ui.adapter.viewholder;

import CU;
import CV;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;
import com.yik.yak.ui.view.PhotoLinkCardView;
import com.yik.yak.ui.view.VoteView;

public class YakDetailViewHolder$$ViewInjector<T extends YakDetailViewHolder>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    txtAge = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558615, "field 'txtAge'"), 2131558615, "field 'txtAge'"));
    txtHandle = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558611, "field 'txtHandle'"), 2131558611, "field 'txtHandle'"));
    View localView = (View)paramFinder.findRequiredView(paramObject, 2131558612, "field 'txtContent' and method 'openUrl'");
    txtContent = ((TextView)paramFinder.castView(localView, 2131558612, "field 'txtContent'"));
    localView.setOnClickListener(new CU(this, paramT));
    txtComments = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558616, "field 'txtComments'"), 2131558616, "field 'txtComments'"));
    voteView = ((VoteView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558613, "field 'voteView'"), 2131558613, "field 'voteView'"));
    mPhotoLinkCardView = ((PhotoLinkCardView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558812, "field 'mPhotoLinkCardView'"), 2131558812, "field 'mPhotoLinkCardView'"));
    mShareIcon = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558783, "field 'mShareIcon'"), 2131558783, "field 'mShareIcon'"));
    localView = (View)paramFinder.findRequiredView(paramObject, 2131558617, "field 'shareButton' and method 'onClick'");
    shareButton = ((TextView)paramFinder.castView(localView, 2131558617, "field 'shareButton'"));
    localView.setOnClickListener(new CV(this, paramT));
    mMessageBody = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558781, "field 'mMessageBody'"), 2131558781, "field 'mMessageBody'"));
  }
  
  public void reset(T paramT)
  {
    txtAge = null;
    txtHandle = null;
    txtContent = null;
    txtComments = null;
    voteView = null;
    mPhotoLinkCardView = null;
    mShareIcon = null;
    shareButton = null;
    mMessageBody = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakDetailViewHolder..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */