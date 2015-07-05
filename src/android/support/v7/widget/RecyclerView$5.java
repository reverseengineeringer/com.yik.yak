package android.support.v7.widget;

class RecyclerView$5
  implements AdapterHelper.Callback
{
  RecyclerView$5(RecyclerView paramRecyclerView) {}
  
  void dispatchUpdate(AdapterHelper.UpdateOp paramUpdateOp)
  {
    switch (cmd)
    {
    default: 
      return;
    case 0: 
      RecyclerView.access$1100(this$0).onItemsAdded(this$0, positionStart, itemCount);
      return;
    case 1: 
      RecyclerView.access$1100(this$0).onItemsRemoved(this$0, positionStart, itemCount);
      return;
    case 2: 
      RecyclerView.access$1100(this$0).onItemsUpdated(this$0, positionStart, itemCount);
      return;
    }
    RecyclerView.access$1100(this$0).onItemsMoved(this$0, positionStart, itemCount, 1);
  }
  
  public RecyclerView.ViewHolder findViewHolder(int paramInt)
  {
    RecyclerView.ViewHolder localViewHolder = this$0.findViewHolderForPosition(paramInt, true);
    if (localViewHolder == null) {}
    while (this$0.mChildHelper.isHidden(itemView)) {
      return null;
    }
    return localViewHolder;
  }
  
  public void markViewHoldersUpdated(int paramInt1, int paramInt2)
  {
    this$0.viewRangeUpdate(paramInt1, paramInt2);
    this$0.mItemsChanged = true;
  }
  
  public void offsetPositionsForAdd(int paramInt1, int paramInt2)
  {
    this$0.offsetPositionRecordsForInsert(paramInt1, paramInt2);
    this$0.mItemsAddedOrRemoved = true;
  }
  
  public void offsetPositionsForMove(int paramInt1, int paramInt2)
  {
    this$0.offsetPositionRecordsForMove(paramInt1, paramInt2);
    this$0.mItemsAddedOrRemoved = true;
  }
  
  public void offsetPositionsForRemovingInvisible(int paramInt1, int paramInt2)
  {
    this$0.offsetPositionRecordsForRemove(paramInt1, paramInt2, true);
    this$0.mItemsAddedOrRemoved = true;
    RecyclerView.State.access$1012(this$0.mState, paramInt2);
  }
  
  public void offsetPositionsForRemovingLaidOutOrNewView(int paramInt1, int paramInt2)
  {
    this$0.offsetPositionRecordsForRemove(paramInt1, paramInt2, false);
    this$0.mItemsAddedOrRemoved = true;
  }
  
  public void onDispatchFirstPass(AdapterHelper.UpdateOp paramUpdateOp)
  {
    dispatchUpdate(paramUpdateOp);
  }
  
  public void onDispatchSecondPass(AdapterHelper.UpdateOp paramUpdateOp)
  {
    dispatchUpdate(paramUpdateOp);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */