package com.facebook.widget;

import android.view.View;
import android.view.View.OnClickListener;

class PickerFragment$5
  implements View.OnClickListener
{
  PickerFragment$5(PickerFragment paramPickerFragment) {}
  
  public void onClick(View paramView)
  {
    this$0.logAppEvents(true);
    PickerFragment.access$202(this$0, true);
    if (PickerFragment.access$300(this$0) != null) {
      PickerFragment.access$300(this$0).onDoneButtonClicked(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */