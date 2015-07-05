package com.facebook.widget;

import android.text.Editable;
import android.text.TextWatcher;

class PlacePickerFragment$SearchTextWatcher
  implements TextWatcher
{
  private PlacePickerFragment$SearchTextWatcher(PlacePickerFragment paramPlacePickerFragment) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this$0.onSearchBoxTextChanged(paramCharSequence.toString(), false);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PlacePickerFragment.SearchTextWatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */