package com.yik.yak.ui.adapter.viewholder;

import Dd;
import Dp;
import Hi;
import Hk;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.activity.PhotoActivity;
import com.yik.yak.ui.view.VoteView;

public class EnlargedPhotoViewHolder
  extends Dp<Yak>
{
  private int DEFAULT_HEIGHT_FOR_IMAGE = 500;
  private int MAX_HEIGHT_FOR_IMAGE = 1000;
  private Hk mDateUtil = new Hk();
  private double mMaxWidthPossible;
  private ImageView mPhotoView;
  private TextView mReplyCount;
  private TextView mTimestamp;
  private VoteView mVoteView;
  private TextView mYakBody;
  private TextView mYakHandle;
  
  public EnlargedPhotoViewHolder(Dd paramDd, View paramView)
  {
    super(paramDd, paramView);
    mPhotoView = ((ImageView)paramView.findViewById(2131558769));
    mYakHandle = ((TextView)paramView.findViewById(2131558791));
    mYakBody = ((TextView)paramView.findViewById(2131558792));
    mVoteView = ((VoteView)paramView.findViewById(2131558537));
    mTimestamp = ((TextView)paramView.findViewById(2131558539));
    mReplyCount = ((TextView)paramView.findViewById(2131558540));
    mMaxWidthPossible = (getContextgetResourcesgetDisplayMetricswidthPixels - Hi.a(16) * 2);
  }
  
  private void gotoPhotoActivity()
  {
    Context localContext = getContext();
    localContext.startActivity(PhotoActivity.a(localContext, (Yak)getItem(), getItemCanVote));
  }
  
  private void resizeImageViewToCurrentYak()
  {
    Object localObject = (Yak)getItem();
    double d1 = ImageWidth;
    double d2 = ImageHeight;
    if ((d2 == 0.0D) || (d1 == 0.0D))
    {
      localObject = (RelativeLayout.LayoutParams)mPhotoView.getLayoutParams();
      height = DEFAULT_HEIGHT_FOR_IMAGE;
      mPhotoView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      return;
    }
    d1 = d2 / d1 * mMaxWidthPossible;
    if (d1 > MAX_HEIGHT_FOR_IMAGE) {
      d1 = MAX_HEIGHT_FOR_IMAGE;
    }
    for (;;)
    {
      localObject = (RelativeLayout.LayoutParams)mPhotoView.getLayoutParams();
      height = ((int)d1);
      mPhotoView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      return;
    }
  }
  
  public void onBindView(Yak paramYak)
  {
    if (paramYak == null) {
      return;
    }
    if (DeliveryID == -1)
    {
      getView().setVisibility(8);
      mVoteView.setYak(paramYak);
      if (Hi.a(LinkThumbNailUrl)) {
        break label156;
      }
      mPhotoView.setVisibility(0);
      resizeImageViewToCurrentYak();
      Picasso.with(getContext()).load(LinkThumbNailUrl).into(mPhotoView);
      label73:
      if (!YakkerHandle.isEmpty()) {
        break label168;
      }
      mYakHandle.setVisibility(8);
      label92:
      if (IsComment) {
        break label276;
      }
      if (Comments != 0) {
        break label190;
      }
      mReplyCount.setText("");
    }
    for (;;)
    {
      mTimestamp.setText(mDateUtil.a(TimePosted));
      mYakBody.setText(Content);
      return;
      getView().setVisibility(0);
      break;
      label156:
      mPhotoView.setVisibility(8);
      break label73;
      label168:
      mYakHandle.setText(YakkerHandle);
      mYakHandle.setVisibility(0);
      break label92;
      label190:
      if (Comments == 1)
      {
        mReplyCount.setText(String.valueOf(Comments) + " reply");
      }
      else if (Comments > 1)
      {
        mReplyCount.setText(String.valueOf(Comments) + " replies");
        continue;
        label276:
        mReplyCount.setText("");
      }
    }
  }
  
  public boolean onDoubleClick(View paramView)
  {
    mVoteView.a();
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
    for (;;)
    {
      return true;
      if (!Hi.a(getItemLinkUrl)) {
        gotoPhotoActivity();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.EnlargedPhotoViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */