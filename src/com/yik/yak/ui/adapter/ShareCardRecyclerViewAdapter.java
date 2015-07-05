package com.yik.yak.ui.adapter;

import CQ;
import android.content.Context;
import com.yik.yak.data.models.FamousShareCard;
import com.yik.yak.ui.adapter.viewholder.ShareCardViewHolder;
import java.util.ArrayList;

public class ShareCardRecyclerViewAdapter
  extends CQ<ShareCardViewHolder, FamousShareCard>
{
  public ShareCardRecyclerViewAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public ShareCardRecyclerViewAdapter(Context paramContext, ArrayList<FamousShareCard> paramArrayList)
  {
    super(paramContext, paramArrayList);
  }
  
  protected int getLayoutId()
  {
    return 2130903128;
  }
  
  protected Class getViewHolderClass()
  {
    return ShareCardViewHolder.class;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.ShareCardRecyclerViewAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */