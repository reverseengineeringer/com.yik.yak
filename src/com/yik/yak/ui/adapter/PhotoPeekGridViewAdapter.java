package com.yik.yak.ui.adapter;

import android.content.Context;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.adapter.viewholder.GridPhotoViewHolder;
import com.yik.yak.ui.adapter.viewholder.YakViewHolder;
import java.util.ArrayList;

public class PhotoPeekGridViewAdapter
  extends DoubleClickRecyclerViewAdapter<YakViewHolder, Yak>
{
  public PhotoPeekGridViewAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public PhotoPeekGridViewAdapter(Context paramContext, ArrayList<Yak> paramArrayList)
  {
    super(paramContext, paramArrayList);
  }
  
  protected int getLayoutId()
  {
    return 2130903126;
  }
  
  protected Class getViewHolderClass()
  {
    return GridPhotoViewHolder.class;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.PhotoPeekGridViewAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */