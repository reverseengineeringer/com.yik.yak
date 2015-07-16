package com.yik.yak.ui.adapter.viewholder;

import Aa;
import Dd;
import Dn;
import Do;
import Dp;
import FV;
import Ha;
import Hi;
import Hk;
import Hn;
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
import butterknife.OnClick;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.activity.PhotoActivity;
import com.yik.yak.ui.activity.WebActivity;
import com.yik.yak.ui.view.PhotoLinkCardView;
import com.yik.yak.ui.view.VoteView;
import java.util.regex.Pattern;

public class YakViewHolder
  extends Dp<Yak>
  implements FV
{
  public static final int CONTEXT_MENU_ID_DELETE = 1;
  public static final int CONTEXT_MENU_ID_REPORT = 2;
  public static final int CONTEXT_MENU_ID_SHARE = 0;
  @InjectView(2131558797)
  protected RelativeLayout mCardView;
  @InjectView(2131558790)
  protected LinearLayout mContentLayout;
  @InjectView(2131558798)
  protected LinearLayout mCustomContentLayout;
  private Hk mDateUtil = new Hk();
  @InjectView(2131558837)
  protected PhotoLinkCardView mLinkCardView;
  @InjectView(2131558769)
  protected ImageView mPhotoThumbnail;
  @InjectView(2131558799)
  protected RelativeLayout pnlContainer;
  @InjectView(2131558794)
  protected LinearLayout pnlMessage;
  @InjectView(2131558801)
  protected View pnlStatus;
  @InjectView(2131558626)
  protected TextView txtAge;
  @InjectView(2131558627)
  protected TextView txtComments;
  @InjectView(2131558800)
  protected TextView txtContent;
  @InjectView(2131558623)
  protected TextView txtHandle;
  @InjectView(2131558537)
  protected VoteView voteView;
  protected Yak yak;
  
  public YakViewHolder(Dd paramDd, View paramView)
  {
    super(paramDd, paramView);
    ButterKnife.inject(this, paramView);
    mLinkCardView.setOnCardClickListener(this);
    paramDd = (RelativeLayout.LayoutParams)voteView.getLayoutParams();
    paramView = (RelativeLayout.LayoutParams)pnlMessage.getLayoutParams();
    RelativeLayout.LayoutParams localLayoutParams1 = (RelativeLayout.LayoutParams)txtAge.getLayoutParams();
    RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)mPhotoThumbnail.getLayoutParams();
    if (Aa.u().equals("left"))
    {
      paramDd.addRule(11, 0);
      paramDd.addRule(9);
      paramDd.setMargins(0, 0, Hi.a(12), 0);
      localLayoutParams2.addRule(11);
      localLayoutParams2.setMargins(Hi.a(8), 0, 0, 0);
      paramView.addRule(1, 2131558537);
      paramView.addRule(0, 2131558769);
      localLayoutParams1.addRule(9, 0);
      localLayoutParams1.addRule(11);
    }
    for (;;)
    {
      voteView.setLayoutParams(paramDd);
      pnlMessage.setLayoutParams(paramView);
      txtAge.setLayoutParams(localLayoutParams1);
      return;
      paramDd.addRule(9, 0);
      paramDd.addRule(11);
      paramDd.setMargins(0, 0, Hi.a(3), 0);
      localLayoutParams2.addRule(9);
      localLayoutParams2.setMargins(0, 0, Hi.a(8), 0);
      paramView.addRule(0, 2131558537);
      paramView.addRule(1, 2131558769);
      localLayoutParams1.addRule(11, 0);
      localLayoutParams1.addRule(9);
    }
  }
  
  private void gotoPhotoActivity()
  {
    Ha.a().a("Feed", getItemIsBasecamp);
    Intent localIntent = PhotoActivity.a(getContext(), (Yak)getItem(), getItemCanVote);
    getContext().startActivity(localIntent);
  }
  
  private void setCustomView(ViewGroup paramViewGroup, Yak paramYak)
  {
    paramViewGroup.removeAllViews();
    ((View)paramViewGroup.getParent()).setBackgroundColor(0);
    switch (ViewResourceID)
    {
    case 2130903129: 
    default: 
      View.inflate(getContext(), ViewResourceID, paramViewGroup);
    case 2130903127: 
    case 2130903131: 
    case 2130903128: 
      do
      {
        return;
        if (Aa.B())
        {
          View.inflate(getContext(), 2130903127, paramViewGroup);
          return;
        }
        paramYak = View.inflate(getContext(), ViewResourceID, paramViewGroup);
        ((ImageView)paramYak.findViewById(2131558782)).setOnClickListener(new Dn(this, paramViewGroup));
        paramViewGroup = (TextView)paramYak.findViewById(2131558785);
        paramViewGroup.setLinksClickable(false);
        Linkify.addLinks(paramViewGroup, Pattern.compile(".*"), "com.yik.yak.video");
        return;
      } while (Aa.D());
      ((ImageView)View.inflate(getContext(), ViewResourceID, paramViewGroup).findViewById(2131558774)).setOnClickListener(new Do(this, paramViewGroup));
      return;
    }
    paramViewGroup = (TextView)View.inflate(getContext(), ViewResourceID, paramViewGroup).findViewById(2131558779);
    if (Aa.A())
    {
      paramViewGroup.setText(getContext().getString(2131230976));
      return;
    }
    paramViewGroup.setText(getContext().getString(2131230977));
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
        break label168;
      }
      pnlStatus.setVisibility(0);
      label60:
      if (!paramBoolean2) {
        break label180;
      }
      txtContent.setAutoLinkMask(15);
      txtContent.setLinksClickable(paramBoolean3);
      label83:
      String str = LinkThumbNailUrl;
      if (Hi.a(str)) {
        break label213;
      }
      if (!paramBoolean5) {
        break label191;
      }
      mPhotoThumbnail.setVisibility(0);
      Picasso.with(getContext()).load(str).into(mPhotoThumbnail);
    }
    for (;;)
    {
      if ((!paramBoolean2) || (paramBoolean5)) {
        break label203;
      }
      mLinkCardView.setVisibility(0);
      mLinkCardView.setYak(paramYak);
      return;
      voteView.setVisibility(8);
      break;
      label168:
      pnlStatus.setVisibility(8);
      break label60;
      label180:
      txtContent.setAutoLinkMask(0);
      break label83;
      label191:
      mPhotoThumbnail.setVisibility(8);
    }
    label203:
    mLinkCardView.setVisibility(8);
    return;
    label213:
    mLinkCardView.setVisibility(8);
    mPhotoThumbnail.setVisibility(8);
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
    if (!Hi.a(LinkUrl)) {}
    for (boolean bool = true;; bool = false)
    {
      setViewStyle(paramYak, -1, -1, i, j, true, false, false, true, bool);
      break;
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
      voteView.b();
    }
    for (;;)
    {
      return false;
      broadcastClick();
    }
  }
  
  public boolean onItemClicked(View paramView)
  {
    if (getItemNavigationUrl != null)
    {
      paramView = new Intent();
      paramView.setAction("android.intent.action.VIEW");
      paramView.setData(Uri.parse(getItemNavigationUrl));
      getContext().startActivity(paramView);
      return true;
    }
    return super.onItemClicked(paramView);
  }
  
  public void onLinkCardClicked(PhotoLinkCardView paramPhotoLinkCardView)
  {
    paramPhotoLinkCardView = getItemLinkUrl;
    Ha.a().b(paramPhotoLinkCardView, getItemIsBasecamp);
    if (Hn.a(paramPhotoLinkCardView))
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
    gotoPhotoActivity();
  }
  
  @OnClick({2131558769})
  public void onPhotoThumbnailClicked()
  {
    gotoPhotoActivity();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */