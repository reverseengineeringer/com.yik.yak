package com.yik.yak.ui.adapter.viewholder;

import Dd;
import Dp;
import FL;
import Hi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.activity.PhotoActivity;
import com.yik.yak.ui.view.AnimatedTextView;

public class GridPhotoViewHolder
  extends Dp<Yak>
{
  private ImageView mPhotoView;
  private AnimatedTextView mVoteCount;
  
  public GridPhotoViewHolder(Dd paramDd, View paramView)
  {
    super(paramDd, paramView);
    mPhotoView = ((ImageView)paramView.findViewById(2131558769));
    mVoteCount = ((AnimatedTextView)paramView.findViewById(2131558770));
  }
  
  private void gotoPhotoActivity()
  {
    Context localContext = getContext();
    localContext.startActivity(PhotoActivity.a(localContext, (Yak)getItem(), getItemCanVote));
  }
  
  private void invalidateNumberOfLikes(boolean paramBoolean)
  {
    int i = getItemNumberOfLikes;
    if (paramBoolean)
    {
      mVoteCount.setNumber(i);
      return;
    }
    mVoteCount.setNumber(i, FL.c);
  }
  
  public void onBindView(Yak paramYak)
  {
    if (DeliveryID == -1)
    {
      getView().setVisibility(8);
      if (Hi.a(LinkThumbNailUrl)) {
        break label73;
      }
      getView().setVisibility(0);
      Picasso.with(getContext()).load(LinkThumbNailUrl).into(mPhotoView);
    }
    for (;;)
    {
      invalidateNumberOfLikes(false);
      return;
      getView().setVisibility(0);
      break;
      label73:
      getView().setVisibility(8);
    }
  }
  
  public boolean onDoubleClick(View paramView)
  {
    ((Yak)getItem()).upvote(true);
    invalidateNumberOfLikes(true);
    return false;
  }
  
  public boolean onItemClicked(View paramView)
  {
    if (getItemNavigationUrl != null)
    {
      paramView = new Intent();
      paramView.setAction("android.intent.action.VIEW");
      paramView.setData(Uri.parse(getItemNavigationUrl));
      getContext().startActivity(paramView);
    }
    while (Hi.a(getItemLinkUrl)) {
      return true;
    }
    gotoPhotoActivity();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.GridPhotoViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */