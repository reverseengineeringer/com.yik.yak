package com.facebook.widget;

class PlacePickerFragment$AsNeededLoadingStrategy$1
  implements GraphObjectAdapter.DataNeededListener
{
  PlacePickerFragment$AsNeededLoadingStrategy$1(PlacePickerFragment.AsNeededLoadingStrategy paramAsNeededLoadingStrategy) {}
  
  public void onDataNeeded()
  {
    if (!this$1.loader.isLoading()) {
      this$1.loader.followNextLink();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PlacePickerFragment.AsNeededLoadingStrategy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */