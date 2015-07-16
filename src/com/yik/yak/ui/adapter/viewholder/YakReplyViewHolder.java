package com.yik.yak.ui.adapter.viewholder;

import Aa;
import Dd;
import Dp;
import Hg;
import Hi;
import Hk;
import android.graphics.Typeface;
import android.text.Html;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.view.IdentityView;
import com.yik.yak.ui.view.VoteView;

public class YakReplyViewHolder
  extends Dp<Yak>
{
  public static final int CONTEXT_MENU_ID_DELETE = 1;
  public static final int CONTEXT_MENU_ID_REPORT = 2;
  public static final int CONTEXT_MENU_ID_SHARE = 0;
  @InjectView(2131558807)
  protected RelativeLayout mContentLayout;
  private Hk mDateUtil = new Hk();
  @InjectView(2131558811)
  protected TextView mDeletedStatusText;
  @InjectView(2131558808)
  protected IdentityView mIdentityView;
  @InjectView(2131558813)
  protected ImageView mLoadingIcon;
  @InjectView(2131558812)
  protected RelativeLayout mLoadingLayout;
  @InjectView(2131558810)
  protected TextView mReplyBody;
  @InjectView(2131558809)
  protected TextView mTimeSinceTextLabel;
  protected boolean mUseLeftVoteLayout = false;
  @InjectView(2131558537)
  protected VoteView mVoteView;
  protected Yak yak;
  
  public YakReplyViewHolder(Dd paramDd, View paramView)
  {
    super(paramDd, paramView);
    ButterKnife.inject(this, paramView);
    mUseLeftVoteLayout = Aa.u().equals("left");
    paramDd = (RelativeLayout.LayoutParams)mVoteView.getLayoutParams();
    paramView = (RelativeLayout.LayoutParams)mIdentityView.getLayoutParams();
    RelativeLayout.LayoutParams localLayoutParams1 = (RelativeLayout.LayoutParams)mReplyBody.getLayoutParams();
    RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)mTimeSinceTextLabel.getLayoutParams();
    if (mUseLeftVoteLayout)
    {
      paramDd.addRule(11, 0);
      paramDd.addRule(9);
      paramDd.setMargins(0, 0, Hi.a(12), 0);
      paramView.addRule(9, 0);
      paramView.addRule(11);
      paramView.setMargins(0, Hi.a(3), 0, 0);
      localLayoutParams1.addRule(0, 2131558808);
      localLayoutParams1.addRule(1, 2131558537);
      localLayoutParams2.addRule(9, 0);
      localLayoutParams2.addRule(11);
    }
    for (;;)
    {
      mVoteView.setLayoutParams(paramDd);
      mIdentityView.setLayoutParams(paramView);
      mReplyBody.setLayoutParams(localLayoutParams1);
      mTimeSinceTextLabel.setLayoutParams(localLayoutParams2);
      return;
      paramDd.addRule(9, 0);
      paramDd.addRule(11);
      paramDd.setMargins(0, 0, Hi.a(3), 0);
      paramView.addRule(11, 0);
      paramView.addRule(9);
      paramView.setMargins(0, Hi.a(5), Hi.a(12), 0);
      localLayoutParams1.addRule(0, 2131558537);
      localLayoutParams1.addRule(1, 2131558808);
      localLayoutParams2.addRule(11, 0);
      localLayoutParams2.addRule(9);
    }
  }
  
  private boolean handleLoading()
  {
    Yak localYak = (Yak)getItem();
    if (mLoadingYak)
    {
      mLoadingLayout.setVisibility(0);
      mContentLayout.setVisibility(8);
      mLoadingIcon.clearAnimation();
      RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
      localRotateAnimation.setInterpolator(new LinearInterpolator());
      localRotateAnimation.setRepeatCount(-1);
      localRotateAnimation.setDuration(1000L);
      mLoadingIcon.startAnimation(localRotateAnimation);
    }
    for (;;)
    {
      return mLoadingYak;
      mLoadingLayout.setVisibility(8);
      mContentLayout.setVisibility(0);
    }
  }
  
  private void handleReplierIdentity(Yak paramYak)
  {
    String str1 = Hg.a(BackgroundId);
    String str2 = Hg.b(OverlayId);
    if ((Hi.a(BackgroundId)) && (Hi.a(OverlayId)))
    {
      mIdentityView.setVisibility(8);
      return;
    }
    mIdentityView.setVisibility(0);
    mIdentityView.setUrlForBackground(str1);
    mIdentityView.setUrlForForeground(str2);
  }
  
  private void setViewStyle(Yak paramYak, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    mReplyBody.setTextColor(paramInt3);
    if (paramBoolean1)
    {
      mVoteView.setVisibility(0);
      if (((paramBoolean2) || (paramBoolean5)) && (!Hi.a(LinkThumbNailUrl)))
      {
        if (!paramBoolean2) {
          break label78;
        }
        mReplyBody.setAutoLinkMask(15);
      }
    }
    for (;;)
    {
      mReplyBody.setLinksClickable(paramBoolean3);
      return;
      mVoteView.setVisibility(8);
      break;
      label78:
      mReplyBody.setAutoLinkMask(0);
    }
  }
  
  private void setYakToDeletedStyle(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mDeletedStatusText.setVisibility(0);
      mContentLayout.setVisibility(8);
      mDeletedStatusText.setText(getItemComment);
      return;
    }
    mDeletedStatusText.setVisibility(8);
    mContentLayout.setVisibility(0);
  }
  
  public void onBindView(Yak paramYak)
  {
    if (handleLoading())
    {
      mVoteView.setYak(paramYak);
      return;
    }
    mTimeSinceTextLabel.setText(mDateUtil.a(TimePosted));
    mVoteView.setYak(paramYak);
    setYakToDeletedStyle(IsDeleted);
    if (!IsDeleted) {}
    switch (Type)
    {
    default: 
      setViewStyle(paramYak, -1, -1, getColor(2131427558), getColor(2131427563), true, false, false, true, false);
      if (TextStyle.equals("OP")) {
        mReplyBody.setTextColor(getColor(2131427561));
      }
      break;
    }
    for (;;)
    {
      handleReplierIdentity(paramYak);
      mReplyBody.setText(Content);
      return;
      setViewStyle(paramYak, -1, -1, getColor(2131427558), getColor(2131427563), true, false, false, true, false);
      break;
      setViewStyle(paramYak, getColor(2131427561), getColor(2131427561), -1, -1, false, false, false, false, false);
      break;
      setViewStyle(paramYak, 65280, 65280, -16777216, -16777216, false, false, false, false, false);
      break;
      setViewStyle(paramYak, -65536, -65536, -1, -1, false, true, true, false, false);
      break;
      setViewStyle(paramYak, -1, -1, getColor(2131427558), -16776961, false, true, false, false, false);
      break;
      setViewStyle(paramYak, -1, -1, getColor(2131427558), getColor(2131427563), true, true, false, true, false);
      break;
      int i = getColor(2131427558);
      int j = getColor(2131427563);
      if (!Hi.a(LinkUrl)) {}
      for (boolean bool = true;; bool = false)
      {
        setViewStyle(paramYak, -1, -1, i, j, true, true, false, true, bool);
        break;
      }
      mReplyBody.setTypeface(Typeface.DEFAULT);
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if ((!getItemIsDeleted) && (!getItemmLoadingYak))
    {
      paramView.setTag(getItem());
      paramContextMenu.add(0, 0, 0, Html.fromHtml("Share")).setActionView(paramView);
      if (!getItemYakkerID.equals(Aa.g())) {
        break label99;
      }
      paramContextMenu.add(0, 1, 0, getString(2131230957)).setActionView(paramView);
    }
    label99:
    while (!getItemCanReport) {
      return;
    }
    paramContextMenu.add(0, 2, 0, getString(2131231065)).setActionView(paramView);
  }
  
  public boolean onDoubleClick(View paramView)
  {
    if (Aa.t()) {
      mVoteView.a();
    }
    for (;;)
    {
      return false;
      broadcastClick();
    }
  }
  
  public boolean onItemClicked(View paramView)
  {
    return super.onItemClicked(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakReplyViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */