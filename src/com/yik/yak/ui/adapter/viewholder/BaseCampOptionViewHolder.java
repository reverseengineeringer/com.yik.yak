package com.yik.yak.ui.adapter.viewholder;

import Ak;
import CQ;
import Db;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;

public class BaseCampOptionViewHolder
  extends Db<Ak>
{
  @InjectView(2131558756)
  protected TextView mOptionName;
  @InjectView(2131558757)
  protected ImageView mSelected;
  protected Ak yak;
  
  public BaseCampOptionViewHolder(CQ paramCQ, View paramView)
  {
    super(paramCQ, paramView);
    ButterKnife.inject(this, paramView);
  }
  
  public void onBindView(Ak paramAk)
  {
    switch (CT.a[paramAk.e().ordinal()])
    {
    }
    for (;;)
    {
      mOptionName.setText(paramAk.a());
      return;
      mSelected.setImageResource(2130837576);
      mOptionName.setTextColor(getColor(2131427472));
      continue;
      mSelected.setImageResource(2130837575);
      mOptionName.setTextColor(getColor(2131427473));
      continue;
      mSelected.setImageResource(2130837576);
      mOptionName.setTextColor(getColor(2131427712));
    }
  }
  
  public boolean onClick(View paramView)
  {
    return super.onClick(paramView);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo) {}
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.BaseCampOptionViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */