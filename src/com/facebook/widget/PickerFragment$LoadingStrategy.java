package com.facebook.widget;

import android.support.v4.app.LoaderManager;
import com.facebook.Request;

abstract class PickerFragment$LoadingStrategy
{
  protected static final int CACHED_RESULT_REFRESH_DELAY = 2000;
  protected GraphObjectAdapter<T> adapter;
  protected GraphObjectPagingLoader<T> loader;
  
  PickerFragment$LoadingStrategy(PickerFragment paramPickerFragment) {}
  
  public void attach(GraphObjectAdapter<T> paramGraphObjectAdapter)
  {
    loader = ((GraphObjectPagingLoader)this$0.getLoaderManager().initLoader(0, null, new PickerFragment.LoadingStrategy.1(this)));
    loader.setOnErrorListener(new PickerFragment.LoadingStrategy.2(this));
    adapter = paramGraphObjectAdapter;
    adapter.changeCursor(loader.getCursor());
    adapter.setOnErrorListener(new PickerFragment.LoadingStrategy.3(this));
  }
  
  protected boolean canSkipRoundTripIfCached()
  {
    return true;
  }
  
  public void clearResults()
  {
    if (loader != null) {
      loader.clearResults();
    }
  }
  
  public void detach()
  {
    adapter.setDataNeededListener(null);
    adapter.setOnErrorListener(null);
    loader.setOnErrorListener(null);
    loader = null;
    adapter = null;
  }
  
  public boolean isDataPresentOrLoading()
  {
    return (!adapter.isEmpty()) || (loader.isLoading());
  }
  
  protected GraphObjectPagingLoader<T> onCreateLoader()
  {
    return new GraphObjectPagingLoader(this$0.getActivity(), PickerFragment.access$600(this$0));
  }
  
  protected void onLoadFinished(GraphObjectPagingLoader<T> paramGraphObjectPagingLoader, SimpleGraphObjectCursor<T> paramSimpleGraphObjectCursor)
  {
    this$0.updateAdapter(paramSimpleGraphObjectCursor);
  }
  
  protected void onLoadReset(GraphObjectPagingLoader<T> paramGraphObjectPagingLoader)
  {
    adapter.changeCursor(null);
  }
  
  protected void onStartLoading(GraphObjectPagingLoader<T> paramGraphObjectPagingLoader, Request paramRequest)
  {
    this$0.displayActivityCircle();
  }
  
  public void startLoading(Request paramRequest)
  {
    if (loader != null)
    {
      loader.startLoading(paramRequest, canSkipRoundTripIfCached());
      onStartLoading(loader, paramRequest);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.LoadingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */