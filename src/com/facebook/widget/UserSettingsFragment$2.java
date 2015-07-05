package com.facebook.widget;

import com.facebook.internal.ImageRequest.Callback;
import com.facebook.internal.ImageResponse;
import com.facebook.model.GraphUser;

class UserSettingsFragment$2
  implements ImageRequest.Callback
{
  UserSettingsFragment$2(UserSettingsFragment paramUserSettingsFragment) {}
  
  public void onCompleted(ImageResponse paramImageResponse)
  {
    UserSettingsFragment.access$300(this$0, UserSettingsFragment.access$000(this$0).getId(), paramImageResponse);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.UserSettingsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */