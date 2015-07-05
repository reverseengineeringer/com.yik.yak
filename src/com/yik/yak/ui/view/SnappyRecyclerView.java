package com.yik.yak.ui.view;

import Fy;
import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public final class SnappyRecyclerView
  extends RecyclerView
{
  public SnappyRecyclerView(Context paramContext)
  {
    super(paramContext);
  }
  
  public SnappyRecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SnappyRecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean fling(int paramInt1, int paramInt2)
  {
    if ((getLayoutManager() instanceof Fy))
    {
      super.smoothScrollToPosition(((Fy)getLayoutManager()).a(paramInt1, paramInt2));
      return true;
    }
    return super.fling(paramInt1, paramInt2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = super.onTouchEvent(paramMotionEvent);
    RecyclerView.LayoutManager localLayoutManager = getLayoutManager();
    if (((localLayoutManager instanceof Fy)) && ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3)) && (getScrollState() == 0)) {
      smoothScrollToPosition(((Fy)localLayoutManager).a());
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.SnappyRecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */