package com.yik.yak.ui.adapter.viewholder;

import Dh;
import Di;
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
    txtAge = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558626, "field 'txtAge'"), 2131558626, "field 'txtAge'"));
    txtHandle = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558623, "field 'txtHandle'"), 2131558623, "field 'txtHandle'"));
    View localView = (View)paramFinder.findRequiredView(paramObject, 2131558624, "field 'txtContent' and method 'openUrl'");
    txtContent = ((TextView)paramFinder.castView(localView, 2131558624, "field 'txtContent'"));
    localView.setOnClickListener(new Dh(this, paramT));
    txtComments = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558627, "field 'txtComments'"), 2131558627, "field 'txtComments'"));
    voteView = ((VoteView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558537, "field 'voteView'"), 2131558537, "field 'voteView'"));
    mPhotoLinkCardView = ((PhotoLinkCardView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558837, "field 'mPhotoLinkCardView'"), 2131558837, "field 'mPhotoLinkCardView'"));
    mShareIcon = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558805, "field 'mShareIcon'"), 2131558805, "field 'mShareIcon'"));
    localView = (View)paramFinder.findRequiredView(paramObject, 2131558628, "field 'shareButton' and method 'onClick'");
    shareButton = ((TextView)paramFinder.castView(localView, 2131558628, "field 'shareButton'"));
    localView.setOnClickListener(new Di(this, paramT));
    mMessageBody = ((LinearLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558803, "field 'mMessageBody'"), 2131558803, "field 'mMessageBody'"));
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