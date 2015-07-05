package com.facebook;

import com.facebook.model.GraphUser;

final class Request$1
  implements Request.Callback
{
  Request$1(Request.GraphUserCallback paramGraphUserCallback) {}
  
  public void onCompleted(Response paramResponse)
  {
    if (val$callback != null) {
      val$callback.onCompleted((GraphUser)paramResponse.getGraphObjectAs(GraphUser.class), paramResponse);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Request.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */