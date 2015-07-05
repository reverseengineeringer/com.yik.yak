package com.facebook.internal;

import com.facebook.Request.Callback;
import com.facebook.Response;

class LikeActionController$AbstractRequestWrapper$1
  implements Request.Callback
{
  LikeActionController$AbstractRequestWrapper$1(LikeActionController.AbstractRequestWrapper paramAbstractRequestWrapper) {}
  
  public void onCompleted(Response paramResponse)
  {
    this$1.error = paramResponse.getError();
    if (this$1.error != null)
    {
      this$1.processError(this$1.error);
      return;
    }
    this$1.processSuccess(paramResponse);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.AbstractRequestWrapper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */