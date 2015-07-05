package com.yik.yak.ui.adapter;

import CE;
import CF;
import CQ;
import Db;
import android.content.Context;
import android.view.View;
import com.yik.yak.data.models.YikYakObject;
import java.util.ArrayList;

public abstract class DoubleClickRecyclerViewAdapter<T extends Db, K extends YikYakObject>
  extends CQ<T, K>
{
  public DoubleClickRecyclerViewAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public DoubleClickRecyclerViewAdapter(Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayList);
  }
  
  protected void assignClickListener(T paramT, View paramView, int paramInt)
  {
    paramView.setOnClickListener(new CE(this, this, paramView, paramInt, paramT));
  }
  
  public void broadcastDoubleClick(T paramT, View paramView, int paramInt)
  {
    if ((!paramT.onDoubleClick(paramView)) && (getListener() != null) && ((getListener() instanceof CF))) {
      getListener();
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.DoubleClickRecyclerViewAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */