package com.facebook.widget;

import com.facebook.FacebookException;

class PickerFragment$LoadingStrategy$2
  implements GraphObjectPagingLoader.OnErrorListener
{
  PickerFragment$LoadingStrategy$2(PickerFragment.LoadingStrategy paramLoadingStrategy) {}
  
  public void onError(FacebookException paramFacebookException, GraphObjectPagingLoader<?> paramGraphObjectPagingLoader)
  {
    this$1.this$0.hideActivityCircle();
    if (PickerFragment.access$500(this$1.this$0) != null) {
      PickerFragment.access$500(this$1.this$0).onError(this$1.this$0, paramFacebookException);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.LoadingStrategy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */