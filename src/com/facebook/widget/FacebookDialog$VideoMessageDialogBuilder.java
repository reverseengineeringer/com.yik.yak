package com.facebook.widget;

import android.app.Activity;
import java.util.EnumSet;

public class FacebookDialog$VideoMessageDialogBuilder
  extends FacebookDialog.VideoDialogBuilderBase<VideoMessageDialogBuilder>
{
  public FacebookDialog$VideoMessageDialogBuilder(Activity paramActivity)
  {
    super(paramActivity);
  }
  
  protected EnumSet<FacebookDialog.MessageDialogFeature> getDialogFeatures()
  {
    return EnumSet.of(FacebookDialog.MessageDialogFeature.MESSAGE_DIALOG, FacebookDialog.MessageDialogFeature.VIDEO);
  }
  
  public VideoMessageDialogBuilder setPlace(String paramString)
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.VideoMessageDialogBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */