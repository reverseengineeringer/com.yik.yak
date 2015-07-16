package com.yik.yak.ui.adapter.viewholder;

import Dd;
import Dp;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.yik.yak.data.models.FamousShareCard;

public class ShareCardViewHolder
  extends Dp<FamousShareCard>
{
  @InjectView(2131558503)
  protected ImageView imgShareCard;
  @InjectView(2131558795)
  protected TextView txtShareCardCaption;
  
  public ShareCardViewHolder(Dd paramDd, View paramView)
  {
    super(paramDd, paramView);
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