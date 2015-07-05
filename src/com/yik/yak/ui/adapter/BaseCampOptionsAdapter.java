package com.yik.yak.ui.adapter;

import Ak;
import CQ;
import android.content.Context;
import com.yik.yak.ui.adapter.viewholder.BaseCampOptionViewHolder;
import java.util.ArrayList;

public class BaseCampOptionsAdapter
  extends CQ<BaseCampOptionViewHolder, Ak>
{
  public BaseCampOptionsAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public BaseCampOptionsAdapter(Context paramContext, ArrayList<Ak> paramArrayList)
  {
    super(paramContext, paramArrayList);
  }
  
  public int getItemViewType(int paramInt)
  {
    return 2130903122;
  }
  
  protected int getLayoutId()
  {
    return 2130903122;
  }
  
  protected Class getViewHolderClass()
  {
    return BaseCampOptionViewHolder.class;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.BaseCampOptionsAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */