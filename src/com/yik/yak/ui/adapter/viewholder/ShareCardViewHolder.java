package com.yik.yak.ui.adapter.viewholder;

import CQ;
import Db;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.yik.yak.data.models.FamousShareCard;

public class ShareCardViewHolder
  extends Db<FamousShareCard>
{
  @InjectView(2131558502)
  protected ImageView imgShareCard;
  @InjectView(2131558771)
  protected TextView txtShareCardCaption;
  
  public ShareCardViewHolder(CQ paramCQ, View paramView)
  {
    super(paramCQ, paramView);
    ButterKnife.inject(this, paramView);
  }
  
  public void onBindView(FamousShareCard paramFamousShareCard)
  {
    imgShareCard.setBackgroundColor(paramFamousShareCard.getBackgroundColor());
    imgShareCard.setImageDrawable(paramFamousShareCard.getDrawable());
    txtShareCardCaption.setText(paramFamousShareCard.getCaption());
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.ShareCardViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */