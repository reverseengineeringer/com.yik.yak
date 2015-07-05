package com.yik.yak.ui.adapter.viewholder;

import CQ;
import CZ;
import Da;
import Db;
import Fp;
import GB;
import GD;
import GG;
import Gs;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.Html;
import android.text.util.Linkify;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.activity.PhotoActivity;
import com.yik.yak.ui.activity.WebActivity;
import com.yik.yak.ui.view.PhotoLinkCardView;
import com.yik.yak.ui.view.VoteView;
import java.util.regex.Pattern;
import zQ;

public class YakViewHolder
  extends Db<Yak>
  implements Fp
{
  public static final int CONTEXT_MENU_ID_DELETE = 1;
  public static final int CONTEXT_MENU_ID_REPORT = 2;
  public static final int CONTEXT_MENU_ID_SHARE = 0;
  @InjectView(2131558774)
  protected RelativeLayout mCardView;
  @InjectView(2131558776)
  protected LinearLayout mContentLayout;
  @InjectView(2131558775)
  protected LinearLayout mCustomContentLayout;
  private GD mDateUtil = new GD();
  @InjectView(2131558812)
  protected PhotoLinkCardView mPhotoLinkCardView;
  @InjectView(2131558777)
  protected RelativeLayout pnlContainer;
  @InjectView(2131558770)
  protected LinearLayout pnlMessage;
  @InjectView(2131558779)
  protected View pnlStatus;
  @InjectView(2131558615)
  protected TextView txtAge;
  @InjectView(2131558616)
  protected TextView txtComments;
  @InjectView(2131558778)
  protected TextView txtContent;
  @InjectView(2131558611)
  protected TextView txtHandle;
  @InjectView(2131558613)
  protected VoteView voteView;
  protected Yak yak;
  
  public YakViewHolder(CQ paramCQ, View paramView)
  {
    super(paramCQ, paramView);
    ButterKnife.inject(this, paramView);
    mPhotoLinkCardView.setOnCardClickListener(this);
    paramCQ = (RelativeLayout.LayoutParams)voteView.getLayoutParams();
    paramView = (RelativeLayout.LayoutParams)pnlMessage.getLayoutParams();
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)txtAge.getLayoutParams();
    if (zQ.p().equals("left"))
    {
      paramCQ.addRule(11, 0);
      paramCQ.addRule(9);
      paramCQ.setMargins(0, 0, GB.a(12), 0);
      paramView.addRule(0, 0);
      paramView.addRule(1, 2131558613);
      localLayoutParams.addRule(9, 0);
      localLayoutParams.addRule(11);
    }
    for (;;)
    {
      voteView.setLayoutParams(paramCQ);
      pnlMessage.setLayoutParams(paramView);
      txtAge.setLayoutParams(localLayoutParams);
      return;
      paramCQ.addRule(9, 0);
      paramCQ.addRule(11);
      paramCQ.setMargins(0, 0, GB.a(3), 0);
      paramView.addRule(0, 2131558613);
      paramView.addRule(1, 0);
      localLayoutParams.addRule(11, 0);
      localLayoutParams.addRule(9);
    }
  }
  
  private void setCustomView(ViewGroup paramViewGroup, Yak paramYak)
  {
    paramViewGroup.removeAllViews();
    ((View)paramViewGroup.getParent()).setBackgroundColor(0);
    switch (ViewResourceID)
    {
    case 2130903122: 
    default: 
      View.inflate(getContext(), ViewResourceID, paramViewGroup);
    case 2130903120: 
    case 2130903124: 
    case 2130903121: 
      do
      {
        return;
        if (zQ.v())
        {
          View.inflate(getContext(), 2130903120, paramViewGroup);
          return;
        }
        paramYak = View.inflate(getContext(), ViewResourceID, paramViewGroup);
        ((ImageView)paramYak.findViewById(2131558761)).setOnClickListener(new CZ(this, paramViewGroup));
        paramViewGroup = (TextView)paramYak.findViewById(2131558764);
        paramViewGroup.setLinksClickable(false);
        Linkify.addLinks(paramViewGroup, Pattern.compile(".*"), "com.yik.yak.video");
        return;
      } while (zQ.x());
      ((ImageView)View.inflate(getContext(), ViewResourceID, paramViewGroup).findViewById(2131558753)).setOnClickListener(new Da(this, paramViewGroup));
      return;
    }
    paramViewGroup = (TextView)View.inflate(getContext(), ViewResourceID, paramViewGroup).findViewById(2131558758);
    if (zQ.u())
    {
      paramViewGroup.setText(getContext().getString(2131230951));
      return;
    }
    paramViewGroup.setText(getContext().getString(2131230952));
  }
  
  private void setViewStyle(Yak paramYak, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    mCardView.setBackgroundColor(paramInt1);
    pnlContainer.setBackgroundColor(paramInt2);
    txtContent.setTextColor(paramInt3);
    txtHandle.setTextColor(paramInt4);
    if (paramBoolean1)
    {
      voteView.setVisibility(0);
      if (!paramBoolean4) {
        break label132;
      }
      pnlStatus.setVisibility(0);
      label60:
      if (!paramBoolean2) {
        break label144;
      }
      txtContent.setAutoLinkMask(15);
    }
    for (;;)
    {
      txtContent.setLinksClickable(paramBoolean3);
      if (((!paramBoolean2) && (!paramBoolean5)) || (GB.a(LinkThumbNailUrl))) {
        break label155;
      }
      mPhotoLinkCardView.setVisibility(0);
      mPhotoLinkCardView.setYak(paramYak);
      return;
      voteView.setVisibility(8);
      break;
      label132:
      pnlStatus.setVisibility(8);
      break label60;
      label144:
      txtContent.setAutoLinkMask(0);
    }
    label155:
    mPhotoLinkCardView.setVisibility(8);
  }
  
  public void onBindView(Yak paramYak)
  {
    voteView.setYak(paramYak);
    if (Type == -1)
    {
      mContentLayout.setVisibility(8);
      setCustomView(mCustomContentLayout, paramYak);
      mCustomContentLayout.setVisibility(0);
      return;
    }
    mCustomContentLayout.setVisibility(8);
    mContentLayout.setVisibility(0);
    if (YakkerHandle.isEmpty())
    {
      txtHandle.setVisibility(8);
      if (IsComment) {
        break label324;
      }
      if (Comments != 0) {
        break label236;
      }
      txtComments.setText("");
      label103:
      txtAge.setText(mDateUtil.a(TimePosted));
      if (IsDeleted) {}
    }
    switch (Type)
    {
    default: 
      setViewStyle(paramYak, -1, -1, getColor(2131427558), getColor(2131427563), true, false, false, true, false);
    case 0: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
      for (;;)
      {
        txtContent.setText(Content);
        return;
        txtHandle.setText(YakkerHandle);
        txtHandle.setVisibility(0);
        break;
        label236:
        if (Comments == 1)
        {
          txtComments.setText(String.valueOf(Comments) + " reply");
          break label103;
        }
        if (Comments <= 1) {
          break label103;
        }
        txtComments.setText(String.valueOf(Comments) + " replies");
        break label103;
        label324:
        txtComments.setText("");
        break label103;
        setViewStyle(paramYak, -1, -1, getColor(2131427558), getColor(2131427563), true, false, false, true, false);
        continue;
        setViewStyle(paramYak, getColor(2131427561), getColor(2131427561), -1, -1, false, true, true, false, false);
        continue;
        setViewStyle(paramYak, 65280, 65280, -16777216, -16777216, false, true, true, false, false);
        continue;
        setViewStyle(paramYak, -65536, -65536, -1, -1, false, true, true, false, false);
        continue;
        setViewStyle(paramYak, -1, -1, getColor(2131427558), -16776961, false, true, true, false, false);
        continue;
        setViewStyle(paramYak, -1, -1, getColor(2131427558), getColor(2131427563), true, true, false, true, false);
      }
    }
    int i = getColor(2131427558);
    int j = getColor(2131427563);
    if (!GB.a(LinkUrl)) {}
    for (boolean bool = true;; bool = false)
    {
      setViewStyle(paramYak, -1, -1, i, j, true, true, false, true, bool);
      break;
    }
  }
  
  public boolean onClick(View paramView)
  {
    return super.onClick(paramView);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if ((!getItemIsDeleted) && (!getItemmLoadingYak))
    {
      paramView.setTag(getItem());
      paramContextMenu.add(0, 0, 0, Html.fromHtml("Share")).setActionView(paramView);
      if (!getItemYakkerID.equals(zQ.c())) {
        break label99;
      }
      paramContextMenu.add(0, 1, 0, getString(2131230932)).setActionView(paramView);
    }
    label99:
    while (!getItemCanReport) {
      return;
    }
    paramContextMenu.add(0, 2, 0, getString(2131231026)).setActionView(paramView);
  }
  
  public boolean onDoubleClick(View paramView)
  {
    if (zQ.o()) {
      voteView.b();
    }
    for (;;)
    {
      return false;
      broadcastClick();
    }
  }
  
  public void onLinkCardClicked(PhotoLinkCardView paramPhotoLinkCardView)
  {
    paramPhotoLinkCardView = getItemLinkUrl;
    Gs.a().b(paramPhotoLinkCardView, getItemIsBasecamp);
    if (GG.a(paramPhotoLinkCardView))
    {
      getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramPhotoLinkCardView)));
      return;
    }
    Intent localIntent = new Intent(getContext(), WebActivity.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("title", getItemLinkTitle);
    localIntent.putExtra("url", paramPhotoLinkCardView);
    getContext().startActivity(localIntent);
  }
  
  public void onPhotoCardClicked(PhotoLinkCardView paramPhotoLinkCardView)
  {
    Gs.a().a("Feed", getItemIsBasecamp);
    paramPhotoLinkCardView = new Intent(getContext(), PhotoActivity.class);
    paramPhotoLinkCardView.putExtra("url", getItemLinkUrl);
    getContext().startActivity(paramPhotoLinkCardView);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */