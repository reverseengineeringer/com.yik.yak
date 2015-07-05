package android.support.v7.widget;

import android.support.v4.os.TraceCompat;

class RecyclerView$1
  implements Runnable
{
  RecyclerView$1(RecyclerView paramRecyclerView) {}
  
  public void run()
  {
    if (!RecyclerView.access$100(this$0)) {}
    do
    {
      return;
      if (RecyclerView.access$200(this$0))
      {
        TraceCompat.beginSection("RV FullInvalidate");
        this$0.dispatchLayout();
        TraceCompat.endSection();
        return;
      }
    } while (!this$0.mAdapterHelper.hasPendingUpdates());
    TraceCompat.beginSection("RV PartialInvalidate");
    this$0.eatRequestLayout();
    this$0.mAdapterHelper.preProcess();
    if (!RecyclerView.access$300(this$0)) {
      this$0.rebindUpdatedViewHolders();
    }
    this$0.resumeRequestLayout(true);
    TraceCompat.endSection();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */