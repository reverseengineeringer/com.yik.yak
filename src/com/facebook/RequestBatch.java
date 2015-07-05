package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class RequestBatch
  extends AbstractList<Request>
{
  private static AtomicInteger idGenerator = new AtomicInteger();
  private String batchApplicationId;
  private Handler callbackHandler;
  private List<RequestBatch.Callback> callbacks = new ArrayList();
  private final String id = Integer.valueOf(idGenerator.incrementAndGet()).toString();
  private List<Request> requests = new ArrayList();
  private int timeoutInMilliseconds = 0;
  
  public RequestBatch()
  {
    requests = new ArrayList();
  }
  
  public RequestBatch(RequestBatch paramRequestBatch)
  {
    requests = new ArrayList(paramRequestBatch);
    callbackHandler = callbackHandler;
    timeoutInMilliseconds = timeoutInMilliseconds;
    callbacks = new ArrayList(callbacks);
  }
  
  public RequestBatch(Collection<Request> paramCollection)
  {
    requests = new ArrayList(paramCollection);
  }
  
  public RequestBatch(Request... paramVarArgs)
  {
    requests = Arrays.asList(paramVarArgs);
  }
  
  public final void add(int paramInt, Request paramRequest)
  {
    requests.add(paramInt, paramRequest);
  }
  
  public final boolean add(Request paramRequest)
  {
    return requests.add(paramRequest);
  }
  
  public void addCallback(RequestBatch.Callback paramCallback)
  {
    if (!callbacks.contains(paramCallback)) {
      callbacks.add(paramCallback);
    }
  }
  
  public final void clear()
  {
    requests.clear();
  }
  
  public final List<Response> executeAndWait()
  {
    return executeAndWaitImpl();
  }
  
  List<Response> executeAndWaitImpl()
  {
    return Request.executeBatchAndWait(this);
  }
  
  public final RequestAsyncTask executeAsync()
  {
    return executeAsyncImpl();
  }
  
  RequestAsyncTask executeAsyncImpl()
  {
    return Request.executeBatchAsync(this);
  }
  
  public final Request get(int paramInt)
  {
    return (Request)requests.get(paramInt);
  }
  
  final String getBatchApplicationId()
  {
    return batchApplicationId;
  }
  
  final Handler getCallbackHandler()
  {
    return callbackHandler;
  }
  
  final List<RequestBatch.Callback> getCallbacks()
  {
    return callbacks;
  }
  
  final String getId()
  {
    return id;
  }
  
  final List<Request> getRequests()
  {
    return requests;
  }
  
  public int getTimeout()
  {
    return timeoutInMilliseconds;
  }
  
  public final Request remove(int paramInt)
  {
    return (Request)requests.remove(paramInt);
  }
  
  public void removeCallback(RequestBatch.Callback paramCallback)
  {
    callbacks.remove(paramCallback);
  }
  
  public final Request set(int paramInt, Request paramRequest)
  {
    return (Request)requests.set(paramInt, paramRequest);
  }
  
  final void setBatchApplicationId(String paramString)
  {
    batchApplicationId = paramString;
  }
  
  final void setCallbackHandler(Handler paramHandler)
  {
    callbackHandler = paramHandler;
  }
  
  public void setTimeout(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Argument timeoutInMilliseconds must be >= 0.");
    }
    timeoutInMilliseconds = paramInt;
  }
  
  public final int size()
  {
    return requests.size();
  }
}

/* Location:
 * Qualified Name:     com.facebook.RequestBatch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */