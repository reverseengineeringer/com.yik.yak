package com.yik.yak.ui.adapter.viewholder;

import AJ;
import Aa;
import Av;
import Dd;
import Dj;
import Dk;
import Dp;
import FV;
import Ha;
import Hi;
import Hk;
import Hm;
import Hn;
import Ho;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import butterknife.OnClick;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.activity.FamousActivity;
import com.yik.yak.ui.activity.MapActivity;
import com.yik.yak.ui.activity.PhotoActivity;
import com.yik.yak.ui.activity.WebActivity;
import com.yik.yak.ui.dialog.YikYakDialog;
import com.yik.yak.ui.view.PhotoLinkCardView;
import com.yik.yak.ui.view.VoteView;
import kH;
import kh;
import ki;
import org.json.JSONException;
import org.json.JSONObject;

public class YakDetailViewHolder
  extends Dp<Yak>
  implements FV
{
  public Fragment fragment;
  private Hk mDateUtil = new Hk();
  @InjectView(2131558803)
  protected LinearLayout mMessageBody;
  @InjectView(2131558837)
  protected PhotoLinkCardView mPhotoLinkCardView;
  @InjectView(2131558805)
  protected ImageView mShareIcon;
  protected boolean mUseLeftVoteLayout = false;
  @InjectView(2131558628)
  public TextView shareButton;
  @InjectView(2131558626)
  protected TextView txtAge;
  @InjectView(2131558627)
  protected TextView txtComments;
  @InjectView(2131558624)
  protected TextView txtContent;
  @InjectView(2131558623)
  protected TextView txtHandle;
  @InjectView(2131558537)
  protected VoteView voteView;
  
  public YakDetailViewHolder(Dd paramDd, View paramView, Fragment paramFragment)
  {
    super(paramDd, paramView);
    fragment = paramFragment;
    ButterKnife.inject(this, paramView);
    mPhotoLinkCardView.setOnCardClickListener(this);
    mUseLeftVoteLayout = Aa.u().equals("left");
    paramDd = (RelativeLayout.LayoutParams)voteView.getLayoutParams();
    paramView = (RelativeLayout.LayoutParams)mMessageBody.getLayoutParams();
    if (mUseLeftVoteLayout)
    {
      paramDd.addRule(11, 0);
      paramDd.addRule(9);
      paramDd.setMargins(0, 0, Hi.a(12), 0);
      paramView.addRule(0, 2131558808);
      paramView.addRule(1, 2131558537);
    }
    for (;;)
    {
      voteView.setLayoutParams(paramDd);
      mMessageBody.setLayoutParams(paramView);
      return;
      paramDd.addRule(9, 0);
      paramDd.addRule(11);
      paramDd.setMargins(0, 0, Hi.a(3), 0);
      paramView.addRule(0, 2131558537);
      paramView.addRule(1, 2131558808);
    }
  }
  
  private void gotoPhotoActivity()
  {
    Ha.a().a("Detail", getItemIsBasecamp);
    Intent localIntent = PhotoActivity.a(getContext(), (Yak)getItem(), getItemCanVote);
    getContext().startActivity(localIntent);
  }
  
  private boolean isYakFamousWorth()
  {
    return (getItemPosterID.equals(Aa.g())) && (getItemNumberOfLikes >= AJ.a().a("shareThreshold", "famousThreshold", 20));
  }
  
  private void launchMapActivity()
  {
    Intent localIntent = new Intent(getContext(), MapActivity.class);
    localIntent.putExtra("lat", getItemLatitude);
    localIntent.putExtra("lon", getItemLongitude);
    if (getItemHidePin == 1) {}
    for (boolean bool = true;; bool = false)
    {
      localIntent.putExtra("hidePin", bool);
      localIntent.putExtra("message", getItemContent);
      getContext().startActivity(localIntent);
      return;
    }
  }
  
  public void initMap(double paramDouble1, double paramDouble2, boolean paramBoolean)
  {
    try
    {
      ki localki = ((SupportMapFragment)fragment.getFragmentManager().findFragmentByTag("commentsMap")).b();
      localki.d().a(false);
      localki.d().b(false);
      localki.a(kh.a(new LatLng(paramDouble1, paramDouble2), 15.0F));
      localki.a(new Dj(this));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onBindView(Yak paramYak)
  {
    boolean bool = true;
    if (paramYak == null)
    {
      txtHandle.setVisibility(8);
      txtComments.setText("");
      voteView.setVisibility(8);
      txtContent.setText(getString(2131231022));
      return;
    }
    label93:
    label256:
    label319:
    double d1;
    double d2;
    if (YakkerHandle.isEmpty())
    {
      txtHandle.setVisibility(8);
      if (IsComment) {
        break label458;
      }
      if (Comments != 0) {
        break label370;
      }
      txtComments.setText("");
      txtAge.setText(mDateUtil.a(TimePosted));
      voteView.setYak(paramYak);
      txtContent.setText(Content);
      if (Hi.a(LinkUrl)) {
        break label558;
      }
      mPhotoLinkCardView.setVisibility(0);
      mPhotoLinkCardView.setYak(paramYak);
      Hm.a(this, new Object[] { "yak type: " + Type });
      switch (Type)
      {
      default: 
        txtContent.setLinksClickable(false);
        txtContent.setMovementMethod(null);
        txtContent.setAutoLinkMask(0);
        if (isYakFamousWorth())
        {
          shareButton.setText("FAMOUS");
          mShareIcon.setImageResource(2130837739);
          shareButton.setTextColor(getColor(2131427561));
          new Handler().postDelayed(new Dk(this), 500L);
          d1 = Latitude;
          d2 = Longitude;
          if (HidePin != 1) {
            break label607;
          }
        }
        break;
      }
    }
    for (;;)
    {
      initMap(d1, d2, bool);
      return;
      txtHandle.setText(YakkerHandle);
      txtHandle.setVisibility(0);
      break;
      label370:
      if (Comments == 1)
      {
        txtComments.setText(String.valueOf(Comments) + " REPLY");
        break label93;
      }
      if (Comments <= 1) {
        break label93;
      }
      txtComments.setText(String.valueOf(Comments) + " REPLIES");
      break label93;
      label458:
      txtComments.setText("");
      break label93;
      txtContent.setLinksClickable(false);
      txtContent.setMovementMethod(null);
      txtContent.setAutoLinkMask(0);
      break label256;
      txtContent.setLinksClickable(true);
      txtContent.setMovementMethod(LinkMovementMethod.getInstance());
      txtContent.setAutoLinkMask(15);
      break label256;
      txtContent.setLinksClickable(false);
      txtContent.setMovementMethod(LinkMovementMethod.getInstance());
      txtContent.setAutoLinkMask(15);
      break label256;
      label558:
      mPhotoLinkCardView.setVisibility(8);
      break label256;
      mShareIcon.setImageResource(2130837870);
      shareButton.setText("SHARE");
      shareButton.setTextColor(getColor(2131427477));
      break label319;
      label607:
      bool = false;
    }
  }
  
  @OnClick({2131558628})
  public void onClick()
  {
    Object localObject;
    if (getItemNumberOfLikes < AJ.a().a("shareThreshold", "shareThreshold", 0))
    {
      localObject = AJ.a().a("shareThreshold", "message", getString(2131231120));
      Intent localIntent = new Intent(getContext(), YikYakDialog.class);
      localIntent.putExtra("title", getContext().getResources().getString(2131231125));
      localIntent.putExtra("message", (String)localObject);
      localIntent.putExtra("okText", "OK");
      localIntent.putExtra("okOnly", "true");
      getContext().startActivity(localIntent);
      return;
    }
    if (isYakFamousWorth())
    {
      localObject = new Intent(getContext(), FamousActivity.class);
      ((Intent)localObject).addFlags(67108864);
      try
      {
        ((Intent)localObject).putExtra("yak", new Av().b((Yak)getItem()).toString());
        getContext().startActivity((Intent)localObject);
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
      }
    }
    new Ho(getContext(), (Yak)getItem()).execute(new Void[0]);
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
  
  @OnClick({2131558624})
  public void openUrl()
  {
    if (getItemType == 6) {
      return;
    }
    if (!Hi.a(getItemLinkUrl))
    {
      Ha.a().b(getItemLinkUrl, getItemIsBasecamp);
      Intent localIntent = new Intent(getContext(), WebActivity.class);
      localIntent.addFlags(67108864);
      localIntent.putExtra("url", getItemLinkUrl);
      getContext().startActivity(localIntent);
      return;
    }
    launchMapActivity();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakDetailViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */