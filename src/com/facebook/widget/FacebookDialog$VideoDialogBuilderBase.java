package com.facebook.widget;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.FacebookException;
import java.io.File;

abstract class FacebookDialog$VideoDialogBuilderBase<CONCRETE extends VideoDialogBuilderBase<?>>
  extends FacebookDialog.Builder<CONCRETE>
{
  private String place;
  private String videoAttachmentUrl;
  
  public FacebookDialog$VideoDialogBuilderBase(Activity paramActivity)
  {
    super(paramActivity);
  }
  
  public CONCRETE addVideoFile(File paramFile)
  {
    videoAttachmentUrl = addVideoAttachmentFile(paramFile);
    return this;
  }
  
  protected Bundle getMethodArguments()
  {
    Bundle localBundle = new Bundle();
    putExtra(localBundle, "PLACE", place);
    localBundle.putString("VIDEO", videoAttachmentUrl);
    return localBundle;
  }
  
  public CONCRETE setPlace(String paramString)
  {
    place = paramString;
    return this;
  }
  
  public CONCRETE setVideoUrl(String paramString)
  {
    videoAttachmentUrl = paramString;
    return this;
  }
  
  void validate()
  {
    super.validate();
    if ((videoAttachmentUrl == null) || (videoAttachmentUrl.isEmpty())) {
      throw new FacebookException("Must specify at least one video.");
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.VideoDialogBuilderBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */