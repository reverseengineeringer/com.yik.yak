package android.support.v7.widget;

import android.view.View;
import java.util.List;

class LinearLayoutManager$LayoutState
{
  static final int INVALID_LAYOUT = Integer.MIN_VALUE;
  static final int ITEM_DIRECTION_HEAD = -1;
  static final int ITEM_DIRECTION_TAIL = 1;
  static final int LAYOUT_END = 1;
  static final int LAYOUT_START = -1;
  static final int SCOLLING_OFFSET_NaN = Integer.MIN_VALUE;
  static final String TAG = "LinearLayoutManager#LayoutState";
  int mAvailable;
  int mCurrentPosition;
  int mExtra = 0;
  boolean mIsPreLayout = false;
  int mItemDirection;
  int mLastScrollDelta;
  int mLayoutDirection;
  int mOffset;
  boolean mRecycle = true;
  List<RecyclerView.ViewHolder> mScrapList = null;
  int mScrollingOffset;
  
  private View nextViewFromScrapList()
  {
    int j = mScrapList.size();
    int i = 0;
    if (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mScrapList.get(i);
      if (localViewHolder.isRemoved()) {}
      while (mCurrentPosition != localViewHolder.getLayoutPosition())
      {
        i += 1;
        break;
      }
      assignPositionFromScrapList(localViewHolder);
      return itemView;
    }
    return null;
  }
  
  public void assignPositionFromScrapList()
  {
    assignPositionFromScrapList(null);
  }
  
  public void assignPositionFromScrapList(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = nextViewHolderInLimitedList(paramViewHolder);
    if (paramViewHolder == null) {}
    for (int i = -1;; i = paramViewHolder.getLayoutPosition())
    {
      mCurrentPosition = i;
      return;
    }
  }
  
  boolean hasMore(RecyclerView.State paramState)
  {
    return (mCurrentPosition >= 0) && (mCurrentPosition < paramState.getItemCount());
  }
  
  void log()
  {
    new StringBuilder().append("avail:").append(mAvailable).append(", ind:").append(mCurrentPosition).append(", dir:").append(mItemDirection).append(", offset:").append(mOffset).append(", layoutDir:").append(mLayoutDirection).toString();
  }
  
  View next(RecyclerView.Recycler paramRecycler)
  {
    if (mScrapList != null) {
      return nextViewFromScrapList();
    }
    paramRecycler = paramRecycler.getViewForPosition(mCurrentPosition);
    mCurrentPosition += mItemDirection;
    return paramRecycler;
  }
  
  public RecyclerView.ViewHolder nextViewHolderInLimitedList(RecyclerView.ViewHolder paramViewHolder)
  {
    int m = mScrapList.size();
    Object localObject = null;
    int i = Integer.MAX_VALUE;
    int j = 0;
    if (j < m)
    {
      RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mScrapList.get(j);
      if (localViewHolder != paramViewHolder) {
        if (!localViewHolder.isRemoved()) {}
      }
      for (;;)
      {
        j += 1;
        break;
        int k = (localViewHolder.getLayoutPosition() - mCurrentPosition) * mItemDirection;
        if (k >= 0) {
          if (k < i)
          {
            if (k == 0) {
              return localViewHolder;
            }
            localObject = localViewHolder;
            i = k;
          }
        }
      }
    }
    return (RecyclerView.ViewHolder)localObject;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.LayoutState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */