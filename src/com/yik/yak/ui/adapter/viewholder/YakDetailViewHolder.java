package com.yik.yak.ui.adapter.viewholder;

import Aj;
import Aw;
import CQ;
import CW;
import CX;
import Db;
import Fp;
import GB;
import GD;
import GG;
import GH;
import Gs;
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
import com.yik.yak.ui.activity.YikYakDialog;
import com.yik.yak.ui.view.PhotoLinkCardView;
import com.yik.yak.ui.view.VoteView;
import kE;
import kk;
import kl;
import org.json.JSONException;
import org.json.JSONObject;
import zQ;

public class YakDetailViewHolder
  extends Db<Yak>
  implements Fp
{
  public Fragment fragment;
  private GD mDateUtil = new GD();
  @InjectView(2131558781)
  protected LinearLayout mMessageBody;
  @InjectView(2131558812)
  protected PhotoLinkCardView mPhotoLinkCardView;
  @InjectView(2131558783)
  protected ImageView mShareIcon;
  protected boolean mUseLeftVoteLayout = false;
  @InjectView(2131558617)
  public TextView shareButton;
  @InjectView(2131558615)
  protected TextView txtAge;
  @InjectView(2131558616)
  protected TextView txtComments;
  @InjectView(2131558612)
  protected TextView txtContent;
  @InjectView(2131558611)
  protected TextView txtHandle;
  @InjectView(2131558613)
  protected VoteView voteView;
  
  public YakDetailViewHolder(CQ paramCQ, View paramView, Fragment paramFragment)
  {
    super(paramCQ, paramView);
    fragment = paramFragment;
    ButterKnife.inject(this, paramView);
    mPhotoLinkCardView.setOnCardClickListener(this);
    mUseLeftVoteLayout = zQ.p().equals("left");
    paramCQ = (RelativeLayout.LayoutParams)voteView.getLayoutParams();
    paramView = (RelativeLayout.LayoutParams)mMessageBody.getLayoutParams();
    if (mUseLeftVoteLayout)
    {
      paramCQ.addRule(11, 0);
      paramCQ.addRule(9);
      paramCQ.setMargins(0, 0, GB.a(12), 0);
      paramView.addRule(0, 2131558785);
      paramView.addRule(1, 2131558613);
    }
    for (;;)
    {
      voteView.setLayoutParams(paramCQ);
      mMessageBody.setLayoutParams(paramView);
      return;
      paramCQ.addRule(9, 0);
      paramCQ.addRule(11);
      paramCQ.setMargins(0, 0, GB.a(3), 0);
      paramView.addRule(0, 2131558613);
      paramView.addRule(1, 2131558785);
    }
  }
  
  private boolean isYakFamousWorth()
  {
    return (getItemPosterID.equals(zQ.c())) && (getItemNumberOfLikes >= Aw.a().a("shareThreshold", "famousThreshold", 20));
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
      kl localkl = ((SupportMapFragment)fragment.getFragmentManager().findFragmentByTag("commentsMap")).b();
      localkl.d().a(false);
      localkl.d().b(false);
      localkl.a(kk.a(new LatLng(paramDouble1, paramDouble2), 15.0F));
      localkl.a(new CW(this));
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
      txtContent.setText(getString(2131230995));
      return;
    }
    label93:
    label228:
    label291:
    double d1;
    double d2;
    if (YakkerHandle.isEmpty())
    {
      txtHandle.setVisibility(8);
      if (IsComment) {
        break label430;
      }
      if (Comments != 0) {
        break label342;
      }
      txtComments.setText("");
      txtAge.setText(mDateUtil.a(TimePosted));
      voteView.setYak(paramYak);
      txtContent.setText(Content);
      if (GB.a(LinkUrl)) {
        break label530;
      }
      mPhotoLinkCardView.setVisibility(0);
      mPhotoLinkCardView.setYak(paramYak);
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
          new Handler().postDelayed(new CX(this), 500L);
          d1 = Latitude;
          d2 = Longitude;
          if (HidePin != 1) {
            break label579;
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
      label342:
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
      label430:
      txtComments.setText("");
      break label93;
      txtContent.setLinksClickable(false);
      txtContent.setMovementMethod(null);
      txtContent.setAutoLinkMask(0);
      break label228;
      txtContent.setLinksClickable(true);
      txtContent.setMovementMethod(LinkMovementMethod.getInstance());
      txtContent.setAutoLinkMask(15);
      break label228;
      txtContent.setLinksClickable(false);
      txtContent.setMovementMethod(LinkMovementMethod.getInstance());
      txtContent.setAutoLinkMask(15);
      break label228;
      label530:
      mPhotoLinkCardView.setVisibility(8);
      break label228;
      mShareIcon.setImageResource(2130837858);
      shareButton.setText("SHARE");
      shareButton.setTextColor(getColor(2131427477));
      break label291;
      label579:
      bool = false;
    }
  }
  
  @OnClick({2131558617})
  public void onClick()
  {
    Object localObject;
    if (getItemNumberOfLikes < Aw.a().a("shareThreshold", "shareThreshold", 0))
    {
      localObject = Aw.a().a("shareThreshold", "message", getString(2131231076));
      Intent localIntent = new Intent(getContext(), YikYakDialog.class);
      localIntent.putExtra("title", getContext().getResources().getString(2131231081));
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
        ((Intent)localObject).putExtra("yak", new Aj().b((Yak)getItem()).toString());
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
    new GH(getContext(), (Yak)getItem()).execute(new Void[0]);
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
    Gs.a().a("Detail", getItemIsBasecamp);
    paramPhotoLinkCardView = new Intent(getContext(), PhotoActivity.class);
    paramPhotoLinkCardView.putExtra("url", getItemLinkUrl);
    getContext().startActivity(paramPhotoLinkCardView);
  }
  
  @OnClick({2131558612})
  public void openUrl()
  {
    if (!GB.a(getItemLinkUrl))
    {
      Gs.a().b(getItemLinkUrl, getItemIsBasecamp);
      if (getItemType == 6) {}
      for (Intent localIntent = new Intent(getContext(), PhotoActivity.class);; localIntent = new Intent(getContext(), WebActivity.class))
      {
        localIntent.addFlags(67108864);
        localIntent.putExtra("url", getItemLinkUrl);
        getContext().startActivity(localIntent);
        return;
      }
    }
    launchMapActivity();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.YakDetailViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */