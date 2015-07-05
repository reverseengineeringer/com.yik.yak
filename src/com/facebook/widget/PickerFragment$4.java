package com.facebook.widget;

import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class PickerFragment$4
  implements Session.StatusCallback
{
  PickerFragment$4(PickerFragment paramPickerFragment) {}
  
  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    if (!paramSession.isOpened()) {
      PickerFragment.access$100(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */