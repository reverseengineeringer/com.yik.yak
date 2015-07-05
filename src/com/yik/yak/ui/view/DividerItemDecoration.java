package com.yik.yak.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.State;
import android.util.AttributeSet;
import android.view.View;

public class DividerItemDecoration
  extends RecyclerView.ItemDecoration
{
  private Drawable a;
  
  public DividerItemDecoration(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16843284 });
    a = paramContext.getDrawable(0);
    paramContext.recycle();
  }
  
  public DividerItemDecoration(Drawable paramDrawable)
  {
    a = paramDrawable;
  }
  
  private int a(RecyclerView paramRecyclerView)
  {
    if ((paramRecyclerView.getLayoutManager() instanceof LinearLayoutManager)) {
      return ((LinearLayoutManager)paramRecyclerView.getLayoutManager()).getOrientation();
    }
    throw new IllegalStateException("DividerItemDecoration can only be used with a LinearLayoutManager.");
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    super.getItemOffsets(paramRect, paramView, paramRecyclerView, paramState);
    if (a == null) {}
    while (paramRecyclerView.getChildPosition(paramView) < 1) {
      return;
    }
    if (a(paramRecyclerView) == 1)
    {
      top = a.getIntrinsicHeight();
      return;
    }
    left = a.getIntrinsicWidth();
  }
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    if (a == null) {
      super.onDrawOver(paramCanvas, paramRecyclerView);
    }
    for (;;)
    {
      return;
      int j;
      int k;
      int m;
      int n;
      int i;
      View localView;
      RecyclerView.LayoutParams localLayoutParams;
      int i1;
      int i2;
      if (a(paramRecyclerView) == 1)
      {
        j = paramRecyclerView.getPaddingLeft();
        k = paramRecyclerView.getWidth();
        m = paramRecyclerView.getPaddingRight();
        n = paramRecyclerView.getChildCount();
        i = 1;
        while (i < n)
        {
          localView = paramRecyclerView.getChildAt(i);
          localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
          i1 = a.getIntrinsicHeight();
          i2 = localView.getTop() - topMargin;
          a.setBounds(j, i2, k - m, i2 + i1);
          a.draw(paramCanvas);
          i += 1;
        }
      }
      else
      {
        j = paramRecyclerView.getPaddingTop();
        k = paramRecyclerView.getHeight();
        m = paramRecyclerView.getPaddingBottom();
        n = paramRecyclerView.getChildCount();
        i = 1;
        while (i < n)
        {
          localView = paramRecyclerView.getChildAt(i);
          localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
          i1 = a.getIntrinsicWidth();
          i2 = localView.getLeft() - leftMargin;
          a.setBounds(i2, j, i2 + i1, k - m);
          a.draw(paramCanvas);
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.DividerItemDecoration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */