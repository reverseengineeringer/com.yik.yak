package com.yik.yak.ui.adapter.viewholder;

import Aw;
import Dd;
import Dp;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;

public class BaseCampOptionViewHolder
  extends Dp<Aw>
{
  @InjectView(2131558777)
  protected TextView mOptionName;
  @InjectView(2131558778)
  protected ImageView mSelected;
  protected Aw yak;
  
  public BaseCampOptionViewHolder(Dd paramDd, View paramView)
  {
    super(paramDd, paramView);
    ButterKnife.inject(this, paramView);
  }
  
  public void onBindView(Aw paramAw)
  {
    switch (Dg.a[paramAw.e().ordinal()])
    {
    }
    for (;;)
    {
      mOptionName.setText(paramAw.a());
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
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo) {}
  
  public boolean onItemClicked(View paramView)
  {
    return super.onItemClicked(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.viewholder.BaseCampOptionViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */