package com.facebook.widget;

import android.app.Activity;
import java.util.EnumSet;

public class FacebookDialog$VideoShareDialogBuilder
  extends FacebookDialog.VideoDialogBuilderBase<VideoShareDialogBuilder>
{
  public FacebookDialog$VideoShareDialogBuilder(Activity paramActivity)
  {
    super(paramActivity);
  }
  
  protected EnumSet<? extends FacebookDialog.DialogFeature> getDialogFeatures()
  {
    return EnumSet.of(FacebookDialog.ShareDialogFeature.SHARE_DIALOG, FacebookDialog.ShareDialogFeature.VIDEO);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.VideoShareDialogBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */