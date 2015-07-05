package com.yik.yak.ui.adapter;

import android.content.Context;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.adapter.viewholder.YakViewHolder;
import java.util.ArrayList;

public class YakRecyclerViewAdapter
  extends DoubleClickRecyclerViewAdapter<YakViewHolder, Yak>
{
  boolean mShouldShowReplierIdentities = false;
  
  public YakRecyclerViewAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public YakRecyclerViewAdapter(Context paramContext, ArrayList<Yak> paramArrayList)
  {
    super(paramContext, paramArrayList);
  }
  
  protected int getLayoutId()
  {
    return 2130903130;
  }
  
  protected Class getViewHolderClass()
  {
    return YakViewHolder.class;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.YakRecyclerViewAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */