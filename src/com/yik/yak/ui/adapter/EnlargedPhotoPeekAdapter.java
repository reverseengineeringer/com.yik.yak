package com.yik.yak.ui.adapter;

import android.content.Context;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.adapter.viewholder.EnlargedPhotoViewHolder;
import com.yik.yak.ui.adapter.viewholder.YakViewHolder;
import java.util.ArrayList;

public class EnlargedPhotoPeekAdapter
  extends DoubleClickRecyclerViewAdapter<YakViewHolder, Yak>
{
  public EnlargedPhotoPeekAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public EnlargedPhotoPeekAdapter(Context paramContext, ArrayList<Yak> paramArrayList)
  {
    super(paramContext, paramArrayList);
  }
  
  protected int getLayoutId()
  {
    return 2130903135;
  }
  
  protected Class getViewHolderClass()
  {
    return EnlargedPhotoViewHolder.class;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.EnlargedPhotoPeekAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */