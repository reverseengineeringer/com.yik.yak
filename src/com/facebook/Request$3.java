package com.facebook;

import com.facebook.model.GraphPlace;

final class Request$3
  implements Request.Callback
{
  Request$3(Request.GraphPlaceListCallback paramGraphPlaceListCallback) {}
  
  public void onCompleted(Response paramResponse)
  {
    if (val$callback != null) {
      val$callback.onCompleted(Request.access$000(paramResponse, GraphPlace.class), paramResponse);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Request.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */