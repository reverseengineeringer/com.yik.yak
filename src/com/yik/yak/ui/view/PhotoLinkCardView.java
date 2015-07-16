package com.yik.yak.ui.view;

import FU;
import FV;
import Hi;
import Hm;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import butterknife.OnClick;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import com.yik.yak.YikYak;
import com.yik.yak.data.models.Yak;

public class PhotoLinkCardView
  extends RelativeLayout
{
  protected FV a;
  protected Yak b;
  @InjectView(2131558838)
  protected ImageView mImageView;
  @InjectView(2131558843)
  protected TextView mLink;
  @InjectView(2131558841)
  protected TextView mLinkDescription;
  @InjectView(2131558839)
  protected LinearLayout mLinkDetails;
  @InjectView(2131558840)
  protected TextView mLinkTitle;
  
  public PhotoLinkCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private FU a()
  {
    return FU.a(b.Type);
  }
  
  private void b()
  {
    setVisibility(0);
    switch (FT.a[a().ordinal()])
    {
    default: 
      Hm.a("un handled type: " + a() + " yak", new Object[0]);
      if (Hi.a(b.LinkThumbNailUrl)) {
        setVisibility(8);
      }
      break;
    }
    for (;;)
    {
      f();
      return;
      Hm.a("link or sponsered yak", new Object[0]);
      mLinkDetails.setVisibility(0);
      mLinkTitle.setText(b.LinkTitle);
      mLinkDescription.setText(b.LinkSummary);
      mLink.setText(b.LinkProvider);
      continue;
      Hm.a("image yak", new Object[0]);
      mLinkDetails.setVisibility(8);
      continue;
      mLinkDetails.setVisibility(0);
      mLinkTitle.setText(b.LinkTitle);
      mLinkDescription.setText(b.LinkSummary);
      mLink.setText(b.LinkProvider);
    }
  }
  
  private void c()
  {
    if (a != null) {
      a.onLinkCardClicked(this);
    }
  }
  
  private void d()
  {
    if (a != null) {
      a.onPhotoCardClicked(this);
    }
  }
  
  private void e()
  {
    mImageView.setImageDrawable(null);
  }
  
  private void f()
  {
    e();
    if (!Hi.a(b.LinkUrl)) {
      Picasso.with(YikYak.a()).load(b.LinkThumbNailUrl).into(mImageView);
    }
  }
  
  @OnClick
  public void onClick()
  {
    switch (FT.a[a().ordinal()])
    {
    default: 
      if (!Hi.a(b.LinkThumbNailUrl)) {
        c();
      }
      return;
    case 1: 
    case 2: 
      c();
      return;
    }
    d();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    ButterKnife.inject(this, this);
  }
  
  public void setOnCardClickListener(FV paramFV)
  {
    a = paramFV;
  }
  
  public void setYak(Yak paramYak)
  {
    b = paramYak;
    b();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.PhotoLinkCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */