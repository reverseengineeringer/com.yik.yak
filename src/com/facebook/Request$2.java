package com.facebook;

import com.facebook.model.GraphUser;

final class Request$2
  implements Request.Callback
{
  Request$2(Request.GraphUserListCallback paramGraphUserListCallback) {}
  
  public void onCompleted(Response paramResponse)
  {
    if (val$callback != null) {
      val$callback.onCompleted(Request.access$000(paramResponse, GraphUser.class), paramResponse);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Request.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */