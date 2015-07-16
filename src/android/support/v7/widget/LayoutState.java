package android.support.v7.widget;

import android.view.View;

class LayoutState
{
  static final int INVALID_LAYOUT = Integer.MIN_VALUE;
  static final int ITEM_DIRECTION_HEAD = -1;
  static final int ITEM_DIRECTION_TAIL = 1;
  static final int LAYOUT_END = 1;
  static final int LAYOUT_START = -1;
  static final int SCOLLING_OFFSET_NaN = Integer.MIN_VALUE;
  static final String TAG = "LayoutState";
  int mAvailable;
  int mCurrentPosition;
  int mEndLine = 0;
  int mItemDirection;
  int mLayoutDirection;
  int mStartLine = 0;
  
  boolean hasMore(RecyclerView.State paramState)
  {
    return (mCurrentPosition >= 0) && (mCurrentPosition < paramState.getItemCount());
  }
  
  View next(RecyclerView.Recycler paramRecycler)
  {
    paramRecycler = paramRecycler.getViewForPosition(mCurrentPosition);
    mCurrentPosition += mItemDirection;
    return paramRecycler;
  }
  
  public String toString()
  {
    return "LayoutState{mAvailable=" + mAvailable + ", mCurrentPosition=" + mCurrentPosition + ", mItemDirection=" + mItemDirection + ", mLayoutDirection=" + mLayoutDirection + ", mStartLine=" + mStartLine + ", mEndLine=" + mEndLine + '}';
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LayoutState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */