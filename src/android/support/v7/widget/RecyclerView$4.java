package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;

class RecyclerView$4
  implements ChildHelper.Callback
{
  RecyclerView$4(RecyclerView paramRecyclerView) {}
  
  public void addView(View paramView, int paramInt)
  {
    this$0.addView(paramView, paramInt);
    RecyclerView.access$600(this$0, paramView);
  }
  
  public void attachViewToParent(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (localViewHolder != null)
    {
      if ((!localViewHolder.isTmpDetached()) && (!localViewHolder.shouldIgnore())) {
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + localViewHolder);
      }
      localViewHolder.clearTmpDetachFlag();
    }
    RecyclerView.access$800(this$0, paramView, paramInt, paramLayoutParams);
  }
  
  public void detachViewFromParent(int paramInt)
  {
    Object localObject = getChildAt(paramInt);
    if (localObject != null)
    {
      localObject = RecyclerView.getChildViewHolderInt((View)localObject);
      if (localObject != null)
      {
        if ((((RecyclerView.ViewHolder)localObject).isTmpDetached()) && (!((RecyclerView.ViewHolder)localObject).shouldIgnore())) {
          throw new IllegalArgumentException("called detach on an already detached child " + localObject);
        }
        ((RecyclerView.ViewHolder)localObject).addFlags(256);
      }
    }
    RecyclerView.access$900(this$0, paramInt);
  }
  
  public View getChildAt(int paramInt)
  {
    return this$0.getChildAt(paramInt);
  }
  
  public int getChildCount()
  {
    return this$0.getChildCount();
  }
  
  public RecyclerView.ViewHolder getChildViewHolder(View paramView)
  {
    return RecyclerView.getChildViewHolderInt(paramView);
  }
  
  public int indexOfChild(View paramView)
  {
    return this$0.indexOfChild(paramView);
  }
  
  public void removeAllViews()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.access$700(this$0, getChildAt(i));
      i += 1;
    }
    this$0.removeAllViews();
  }
  
  public void removeViewAt(int paramInt)
  {
    View localView = this$0.getChildAt(paramInt);
    if (localView != null) {
      RecyclerView.access$700(this$0, localView);
    }
    this$0.removeViewAt(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */