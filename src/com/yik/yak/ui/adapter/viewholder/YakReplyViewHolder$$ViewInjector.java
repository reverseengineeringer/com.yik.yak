package com.yik.yak.ui.adapter.viewholder;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;
import com.yik.yak.ui.view.IdentityView;
import com.yik.yak.ui.view.VoteView;

public class YakReplyViewHolder$$ViewInjector<T extends YakReplyViewHolder>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    mContentLayout = ((RelativeLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558807, "field 'mContentLayout'"), 2131558807, "field 'mContentLayout'"));
    mIdentityView = ((IdentityView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558808, "field 'mIdentityView'"), 2131558808, "field 'mIdentityView'"));
    mReplyBody = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558810, "field 'mReplyBody'"), 2131558810, "field 'mReplyBody'"));
    mVoteView = ((VoteView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558537, "field 'mVoteView'"), 2131558537, "field 'mVoteView'"));
    mTimeSinceTextLabel = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558809, "field 'mTimeSinceTextLabel'"), 2131558809, "field 'mTimeSinceTextLabel'"));
    mDeletedStatusText = ((TextView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558811, "field 'mDeletedStatusText'"), 2131558811, "field 'mDeletedStatusText'"));
    mLoadingLayout = ((RelativeLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558812, "field 'mLoadingLayout'"), 2131558812, "field 'mLoadingLayout'"));
    mLoadingIcon = ((ImageView)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558813, "field 'mLoadingIcon'"), 2131558813, "field 'mLoadingIcon'"));
  }
  
  public void reset(T paramT)
  {
    mContentLayout = null;
    mIdentityView = null;
    mReplyBody = null;
    mVoteView = null;
    mTimeSinceTextLabel = null;
    mDeletedStatusText = null;
    mLoadingLayout = null;
    mLoadingIcon = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakReplyViewHolder..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */