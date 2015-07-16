package com.yik.yak.ui.fragment;

import DY;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;

public class CommentFragment$$ViewInjector<T extends CommentFragment>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    mReplyField = ((EditText)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558768, "field 'mReplyField'"), 2131558768, "field 'mReplyField'"));
    View localView = (View)paramFinder.findRequiredView(paramObject, 2131558767, "field 'mSendButton' and method 'onSendCommentClicked'");
    mSendButton = ((TextView)paramFinder.castView(localView, 2131558767, "field 'mSendButton'"));
    localView.setOnClickListener(new DY(this, paramT));
    mCommentFooter = ((RelativeLayout)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558766, "field 'mCommentFooter'"), 2131558766, "field 'mCommentFooter'"));
  }
  
  public void reset(T paramT)
  {
    mReplyField = null;
    mSendButton = null;
    mCommentFooter = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.CommentFragment..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */