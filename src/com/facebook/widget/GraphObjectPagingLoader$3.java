package com.facebook.widget;

import com.facebook.Request;
import com.facebook.RequestBatch;

class GraphObjectPagingLoader$3
  implements Runnable
{
  GraphObjectPagingLoader$3(GraphObjectPagingLoader paramGraphObjectPagingLoader, RequestBatch paramRequestBatch) {}
  
  public void run()
  {
    Request.executeBatchAsync(val$batch);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.GraphObjectPagingLoader.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */