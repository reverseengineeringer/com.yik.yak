package com.facebook.widget;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collection;

class PickerFragment$SingleSelectionStrategy
  extends PickerFragment<T>.SelectionStrategy
{
  private String selectedId;
  
  PickerFragment$SingleSelectionStrategy(PickerFragment paramPickerFragment)
  {
    super(paramPickerFragment);
  }
  
  public void clear()
  {
    selectedId = null;
  }
  
  public Collection<String> getSelectedIds()
  {
    return Arrays.asList(new String[] { selectedId });
  }
  
  boolean isEmpty()
  {
    return selectedId == null;
  }
  
  boolean isSelected(String paramString)
  {
    return (selectedId != null) && (paramString != null) && (selectedId.equals(paramString));
  }
  
  void readSelectionFromBundle(Bundle paramBundle, String paramString)
  {
    if (paramBundle != null) {
      selectedId = paramBundle.getString(paramString);
    }
  }
  
  void saveSelectionToBundle(Bundle paramBundle, String paramString)
  {
    if (!TextUtils.isEmpty(selectedId)) {
      paramBundle.putString(paramString, selectedId);
    }
  }
  
  boolean shouldShowCheckBoxIfUnselected()
  {
    return false;
  }
  
  void toggleSelection(String paramString)
  {
    if ((selectedId != null) && (selectedId.equals(paramString)))
    {
      selectedId = null;
      return;
    }
    selectedId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.SingleSelectionStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */