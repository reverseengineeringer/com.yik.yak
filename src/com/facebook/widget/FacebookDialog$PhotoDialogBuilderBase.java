package com.facebook.widget;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

abstract class FacebookDialog$PhotoDialogBuilderBase<CONCRETE extends PhotoDialogBuilderBase<?>>
  extends FacebookDialog.Builder<CONCRETE>
{
  static int MAXIMUM_PHOTO_COUNT = 6;
  private ArrayList<String> friends;
  private ArrayList<String> imageAttachmentUrls = new ArrayList();
  private String place;
  
  public FacebookDialog$PhotoDialogBuilderBase(Activity paramActivity)
  {
    super(paramActivity);
  }
  
  public CONCRETE addPhotoFiles(Collection<File> paramCollection)
  {
    imageAttachmentUrls.addAll(addImageAttachmentFiles(paramCollection));
    return this;
  }
  
  public CONCRETE addPhotos(Collection<Bitmap> paramCollection)
  {
    imageAttachmentUrls.addAll(addImageAttachments(paramCollection));
    return this;
  }
  
  abstract int getMaximumNumberOfPhotos();
  
  protected Bundle getMethodArguments()
  {
    Bundle localBundle = new Bundle();
    putExtra(localBundle, "PLACE", place);
    localBundle.putStringArrayList("PHOTOS", imageAttachmentUrls);
    if (!Utility.isNullOrEmpty(friends)) {
      localBundle.putStringArrayList("FRIENDS", friends);
    }
    return localBundle;
  }
  
  protected Bundle setBundleExtras(Bundle paramBundle)
  {
    putExtra(paramBundle, "com.facebook.platform.extra.APPLICATION_ID", applicationId);
    putExtra(paramBundle, "com.facebook.platform.extra.APPLICATION_NAME", applicationName);
    putExtra(paramBundle, "com.facebook.platform.extra.PLACE", place);
    paramBundle.putStringArrayList("com.facebook.platform.extra.PHOTOS", imageAttachmentUrls);
    if (!Utility.isNullOrEmpty(friends)) {
      paramBundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", friends);
    }
    return paramBundle;
  }
  
  public CONCRETE setFriends(List<String> paramList)
  {
    if (paramList == null) {}
    for (paramList = null;; paramList = new ArrayList(paramList))
    {
      friends = paramList;
      return this;
    }
  }
  
  public CONCRETE setPlace(String paramString)
  {
    place = paramString;
    return this;
  }
  
  void validate()
  {
    super.validate();
    if (imageAttachmentUrls.isEmpty()) {
      throw new FacebookException("Must specify at least one photo.");
    }
    if (imageAttachmentUrls.size() > getMaximumNumberOfPhotos()) {
      throw new FacebookException(String.format("Cannot add more than %d photos.", new Object[] { Integer.valueOf(getMaximumNumberOfPhotos()) }));
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.PhotoDialogBuilderBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */