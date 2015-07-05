package com.facebook.widget;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

class PickerFragment$MultiSelectionStrategy
  extends PickerFragment<T>.SelectionStrategy
{
  private Set<String> selectedIds = new HashSet();
  
  PickerFragment$MultiSelectionStrategy(PickerFragment paramPickerFragment)
  {
    super(paramPickerFragment);
  }
  
  public void clear()
  {
    selectedIds.clear();
  }
  
  public Collection<String> getSelectedIds()
  {
    return selectedIds;
  }
  
  boolean isEmpty()
  {
    return selectedIds.isEmpty();
  }
  
  boolean isSelected(String paramString)
  {
    return (paramString != null) && (selectedIds.contains(paramString));
  }
  
  void readSelectionFromBundle(Bundle paramBundle, String paramString)
  {
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getString(paramString);
      if (paramBundle != null)
      {
        paramBundle = TextUtils.split(paramBundle, ",");
        selectedIds.clear();
        Collections.addAll(selectedIds, paramBundle);
      }
    }
  }
  
  void saveSelectionToBundle(Bundle paramBundle, String paramString)
  {
    if (!selectedIds.isEmpty()) {
      paramBundle.putString(paramString, TextUtils.join(",", selectedIds));
    }
  }
  
  boolean shouldShowCheckBoxIfUnselected()
  {
    return true;
  }
  
  void toggleSelection(String paramString)
  {
    if (paramString != null)
    {
      if (selectedIds.contains(paramString)) {
        selectedIds.remove(paramString);
      }
    }
    else {
      return;
    }
    selectedIds.add(paramString);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.MultiSelectionStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */