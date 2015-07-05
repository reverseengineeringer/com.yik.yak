package android.support.v7.widget;

class RecyclerView$ItemAnimatorRestoreListener
  implements RecyclerView.ItemAnimator.ItemAnimatorListener
{
  private RecyclerView$ItemAnimatorRestoreListener(RecyclerView paramRecyclerView) {}
  
  public void onAddFinished(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder.setIsRecyclable(true);
    if (!RecyclerView.ViewHolder.access$5200(paramViewHolder)) {
      RecyclerView.access$5100(this$0, itemView);
    }
  }
  
  public void onChangeFinished(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder.setIsRecyclable(true);
    if ((mShadowedHolder != null) && (mShadowingHolder == null))
    {
      mShadowedHolder = null;
      paramViewHolder.setFlags(-65, RecyclerView.ViewHolder.access$5300(paramViewHolder));
    }
    mShadowingHolder = null;
    if (!RecyclerView.ViewHolder.access$5200(paramViewHolder)) {
      RecyclerView.access$5100(this$0, itemView);
    }
  }
  
  public void onMoveFinished(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder.setIsRecyclable(true);
    if (!RecyclerView.ViewHolder.access$5200(paramViewHolder)) {
      RecyclerView.access$5100(this$0, itemView);
    }
  }
  
  public void onRemoveFinished(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder.setIsRecyclable(true);
    if ((!RecyclerView.access$5100(this$0, itemView)) && (paramViewHolder.isTmpDetached())) {
      this$0.removeDetachedView(itemView, false);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.ItemAnimatorRestoreListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */