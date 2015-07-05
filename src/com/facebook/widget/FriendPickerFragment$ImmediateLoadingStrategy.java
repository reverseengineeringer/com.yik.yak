package com.facebook.widget;

import com.facebook.model.GraphUser;

class FriendPickerFragment$ImmediateLoadingStrategy
  extends PickerFragment<GraphUser>.LoadingStrategy
{
  private FriendPickerFragment$ImmediateLoadingStrategy(FriendPickerFragment paramFriendPickerFragment)
  {
    super(paramFriendPickerFragment);
  }
  
  private void followNextLink()
  {
    this$0.displayActivityCircle();
    loader.followNextLink();
  }
  
  protected boolean canSkipRoundTripIfCached()
  {
    return FriendPickerFragment.access$100(this$0).isCacheable();
  }
  
  protected void onLoadFinished(GraphObjectPagingLoader<GraphUser> paramGraphObjectPagingLoader, SimpleGraphObjectCursor<GraphUser> paramSimpleGraphObjectCursor)
  {
    super.onLoadFinished(paramGraphObjectPagingLoader, paramSimpleGraphObjectCursor);
    if ((paramSimpleGraphObjectCursor == null) || (paramGraphObjectPagingLoader.isLoading())) {}
    do
    {
      return;
      if (paramSimpleGraphObjectCursor.areMoreObjectsAvailable())
      {
        followNextLink();
        return;
      }
      this$0.hideActivityCircle();
    } while (!paramSimpleGraphObjectCursor.isFromCache());
    if (paramSimpleGraphObjectCursor.getCount() == 0) {}
    for (long l = 2000L;; l = 0L)
    {
      paramGraphObjectPagingLoader.refreshOriginalRequest(l);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FriendPickerFragment.ImmediateLoadingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */