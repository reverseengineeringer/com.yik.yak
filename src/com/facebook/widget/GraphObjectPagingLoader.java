package com.facebook.widget;

import android.content.Context;
import android.os.Handler;
import android.support.v4.content.Loader;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Response.PagingDirection;
import com.facebook.internal.CacheableRequestBatch;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import java.util.Collection;

class GraphObjectPagingLoader<T extends GraphObject>
  extends Loader<SimpleGraphObjectCursor<T>>
{
  private boolean appendResults = false;
  private Request currentRequest;
  private SimpleGraphObjectCursor<T> cursor;
  private final Class<T> graphObjectClass;
  private boolean loading = false;
  private Request nextRequest;
  private GraphObjectPagingLoader.OnErrorListener onErrorListener;
  private Request originalRequest;
  private boolean skipRoundtripIfCached;
  
  public GraphObjectPagingLoader(Context paramContext, Class<T> paramClass)
  {
    super(paramContext);
    graphObjectClass = paramClass;
  }
  
  private void addResults(Response paramResponse)
  {
    SimpleGraphObjectCursor localSimpleGraphObjectCursor;
    boolean bool;
    int i;
    if ((cursor == null) || (!appendResults))
    {
      localSimpleGraphObjectCursor = new SimpleGraphObjectCursor();
      Object localObject = (GraphObjectPagingLoader.PagedResults)paramResponse.getGraphObjectAs(GraphObjectPagingLoader.PagedResults.class);
      bool = paramResponse.getIsFromCache();
      localObject = ((GraphObjectPagingLoader.PagedResults)localObject).getData().castToListOf(graphObjectClass);
      if (((GraphObjectList)localObject).size() <= 0) {
        break label158;
      }
      i = 1;
      label69:
      if (i != 0)
      {
        nextRequest = paramResponse.getRequestForPagedResults(Response.PagingDirection.NEXT);
        localSimpleGraphObjectCursor.addGraphObjects((Collection)localObject, bool);
        if (nextRequest == null) {
          break label163;
        }
        localSimpleGraphObjectCursor.setMoreObjectsAvailable(true);
      }
    }
    for (;;)
    {
      if (i == 0)
      {
        localSimpleGraphObjectCursor.setMoreObjectsAvailable(false);
        localSimpleGraphObjectCursor.setFromCache(bool);
        nextRequest = null;
      }
      if (!bool) {
        skipRoundtripIfCached = false;
      }
      deliverResult(localSimpleGraphObjectCursor);
      return;
      localSimpleGraphObjectCursor = new SimpleGraphObjectCursor(cursor);
      break;
      label158:
      i = 0;
      break label69;
      label163:
      localSimpleGraphObjectCursor.setMoreObjectsAvailable(false);
    }
  }
  
  private CacheableRequestBatch putRequestIntoBatch(Request paramRequest, boolean paramBoolean)
  {
    boolean bool = true;
    paramRequest = new CacheableRequestBatch(new Request[] { paramRequest });
    if (!paramBoolean) {}
    for (paramBoolean = bool;; paramBoolean = false)
    {
      paramRequest.setForceRoundTrip(paramBoolean);
      return paramRequest;
    }
  }
  
  private void requestCompleted(Response paramResponse)
  {
    if (paramResponse.getRequest() != currentRequest) {
      return;
    }
    loading = false;
    currentRequest = null;
    Object localObject1 = paramResponse.getError();
    if (localObject1 == null) {}
    for (localObject1 = null;; localObject1 = ((FacebookRequestError)localObject1).getException())
    {
      Object localObject2 = localObject1;
      if (paramResponse.getGraphObject() == null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new FacebookException("GraphObjectPagingLoader received neither a result nor an error.");
        }
      }
      if (localObject2 == null) {
        break label94;
      }
      nextRequest = null;
      if (onErrorListener == null) {
        break;
      }
      onErrorListener.onError((FacebookException)localObject2, this);
      return;
    }
    label94:
    addResults(paramResponse);
  }
  
  private void startLoading(Request paramRequest, boolean paramBoolean, long paramLong)
  {
    skipRoundtripIfCached = paramBoolean;
    appendResults = false;
    nextRequest = null;
    currentRequest = paramRequest;
    currentRequest.setCallback(new GraphObjectPagingLoader.2(this));
    loading = true;
    paramRequest = new GraphObjectPagingLoader.3(this, putRequestIntoBatch(paramRequest, paramBoolean));
    if (paramLong == 0L)
    {
      paramRequest.run();
      return;
    }
    new Handler().postDelayed(paramRequest, paramLong);
  }
  
  public void clearResults()
  {
    nextRequest = null;
    originalRequest = null;
    currentRequest = null;
    deliverResult(null);
  }
  
  public void deliverResult(SimpleGraphObjectCursor<T> paramSimpleGraphObjectCursor)
  {
    SimpleGraphObjectCursor localSimpleGraphObjectCursor = cursor;
    cursor = paramSimpleGraphObjectCursor;
    if (isStarted())
    {
      super.deliverResult(paramSimpleGraphObjectCursor);
      if ((localSimpleGraphObjectCursor != null) && (localSimpleGraphObjectCursor != paramSimpleGraphObjectCursor) && (!localSimpleGraphObjectCursor.isClosed())) {
        localSimpleGraphObjectCursor.close();
      }
    }
  }
  
  public void followNextLink()
  {
    if (nextRequest != null)
    {
      appendResults = true;
      currentRequest = nextRequest;
      currentRequest.setCallback(new GraphObjectPagingLoader.1(this));
      loading = true;
      Request.executeBatchAsync(putRequestIntoBatch(currentRequest, skipRoundtripIfCached));
    }
  }
  
  public SimpleGraphObjectCursor<T> getCursor()
  {
    return cursor;
  }
  
  public GraphObjectPagingLoader.OnErrorListener getOnErrorListener()
  {
    return onErrorListener;
  }
  
  public boolean isLoading()
  {
    return loading;
  }
  
  protected void onStartLoading()
  {
    super.onStartLoading();
    if (cursor != null) {
      deliverResult(cursor);
    }
  }
  
  public void refreshOriginalRequest(long paramLong)
  {
    if (originalRequest == null) {
      throw new FacebookException("refreshOriginalRequest may not be called until after startLoading has been called.");
    }
    startLoading(originalRequest, false, paramLong);
  }
  
  public void setOnErrorListener(GraphObjectPagingLoader.OnErrorListener paramOnErrorListener)
  {
    onErrorListener = paramOnErrorListener;
  }
  
  public void startLoading(Request paramRequest, boolean paramBoolean)
  {
    originalRequest = paramRequest;
    startLoading(paramRequest, paramBoolean, 0L);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.GraphObjectPagingLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */