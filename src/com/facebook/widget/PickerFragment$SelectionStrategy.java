package com.facebook.widget;

import android.os.Bundle;
import java.util.Collection;

abstract class PickerFragment$SelectionStrategy
{
  PickerFragment$SelectionStrategy(PickerFragment paramPickerFragment) {}
  
  abstract void clear();
  
  abstract Collection<String> getSelectedIds();
  
  abstract boolean isEmpty();
  
  abstract boolean isSelected(String paramString);
  
  abstract void readSelectionFromBundle(Bundle paramBundle, String paramString);
  
  abstract void saveSelectionToBundle(Bundle paramBundle, String paramString);
  
  abstract boolean shouldShowCheckBoxIfUnselected();
  
  abstract void toggleSelection(String paramString);
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.SelectionStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */