package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class RecyclerView$LayoutParams
  extends ViewGroup.MarginLayoutParams
{
  final Rect mDecorInsets = new Rect();
  boolean mInsetsDirty = true;
  boolean mPendingInvalidate = false;
  RecyclerView.ViewHolder mViewHolder;
  
  public RecyclerView$LayoutParams(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public RecyclerView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RecyclerView$LayoutParams(LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public RecyclerView$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public RecyclerView$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  public int getViewAdapterPosition()
  {
    return mViewHolder.getAdapterPosition();
  }
  
  public int getViewLayoutPosition()
  {
    return mViewHolder.getLayoutPosition();
  }
  
  public int getViewPosition()
  {
    return mViewHolder.getPosition();
  }
  
  public boolean isItemChanged()
  {
    return mViewHolder.isChanged();
  }
  
  public boolean isItemRemoved()
  {
    return mViewHolder.isRemoved();
  }
  
  public boolean isViewInvalid()
  {
    return mViewHolder.isInvalid();
  }
  
  public boolean viewNeedsUpdate()
  {
    return mViewHolder.needsUpdate();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */