package com.facebook.widget;

import com.facebook.FacebookException;

class PickerFragment$LoadingStrategy$3
  implements GraphObjectAdapter.OnErrorListener
{
  PickerFragment$LoadingStrategy$3(PickerFragment.LoadingStrategy paramLoadingStrategy) {}
  
  public void onError(GraphObjectAdapter<?> paramGraphObjectAdapter, FacebookException paramFacebookException)
  {
    if (PickerFragment.access$500(this$1.this$0) != null) {
      PickerFragment.access$500(this$1.this$0).onError(this$1.this$0, paramFacebookException);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.LoadingStrategy.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */