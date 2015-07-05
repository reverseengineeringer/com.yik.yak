package com.facebook.widget;

import android.app.Activity;
import java.util.EnumSet;

public class FacebookDialog$PhotoShareDialogBuilder
  extends FacebookDialog.PhotoDialogBuilderBase<PhotoShareDialogBuilder>
{
  public FacebookDialog$PhotoShareDialogBuilder(Activity paramActivity)
  {
    super(paramActivity);
  }
  
  protected EnumSet<? extends FacebookDialog.DialogFeature> getDialogFeatures()
  {
    return EnumSet.of(FacebookDialog.ShareDialogFeature.SHARE_DIALOG, FacebookDialog.ShareDialogFeature.PHOTOS);
  }
  
  int getMaximumNumberOfPhotos()
  {
    return MAXIMUM_PHOTO_COUNT;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.PhotoShareDialogBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */