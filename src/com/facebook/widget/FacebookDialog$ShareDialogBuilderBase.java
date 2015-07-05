package com.facebook.widget;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.internal.Utility;
import java.util.ArrayList;
import java.util.List;

abstract class FacebookDialog$ShareDialogBuilderBase<CONCRETE extends ShareDialogBuilderBase<?>>
  extends FacebookDialog.Builder<CONCRETE>
{
  private String caption;
  private boolean dataErrorsFatal;
  private String description;
  private ArrayList<String> friends;
  protected String link;
  private String name;
  private String picture;
  private String place;
  private String ref;
  
  public FacebookDialog$ShareDialogBuilderBase(Activity paramActivity)
  {
    super(paramActivity);
  }
  
  protected Bundle getMethodArguments()
  {
    Bundle localBundle = new Bundle();
    putExtra(localBundle, "TITLE", name);
    putExtra(localBundle, "SUBTITLE", caption);
    putExtra(localBundle, "DESCRIPTION", description);
    putExtra(localBundle, "LINK", link);
    putExtra(localBundle, "IMAGE", picture);
    putExtra(localBundle, "PLACE", place);
    putExtra(localBundle, "REF", ref);
    localBundle.putBoolean("DATA_FAILURES_FATAL", dataErrorsFatal);
    if (!Utility.isNullOrEmpty(friends)) {
      localBundle.putStringArrayList("FRIENDS", friends);
    }
    return localBundle;
  }
  
  protected Bundle setBundleExtras(Bundle paramBundle)
  {
    putExtra(paramBundle, "com.facebook.platform.extra.APPLICATION_ID", applicationId);
    putExtra(paramBundle, "com.facebook.platform.extra.APPLICATION_NAME", applicationName);
    putExtra(paramBundle, "com.facebook.platform.extra.TITLE", name);
    putExtra(paramBundle, "com.facebook.platform.extra.SUBTITLE", caption);
    putExtra(paramBundle, "com.facebook.platform.extra.DESCRIPTION", description);
    putExtra(paramBundle, "com.facebook.platform.extra.LINK", link);
    putExtra(paramBundle, "com.facebook.platform.extra.IMAGE", picture);
    putExtra(paramBundle, "com.facebook.platform.extra.PLACE", place);
    putExtra(paramBundle, "com.facebook.platform.extra.REF", ref);
    paramBundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", dataErrorsFatal);
    if (!Utility.isNullOrEmpty(friends)) {
      paramBundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", friends);
    }
    return paramBundle;
  }
  
  public CONCRETE setCaption(String paramString)
  {
    caption = paramString;
    return this;
  }
  
  public CONCRETE setDataErrorsFatal(boolean paramBoolean)
  {
    dataErrorsFatal = paramBoolean;
    return this;
  }
  
  public CONCRETE setDescription(String paramString)
  {
    description = paramString;
    return this;
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
  
  public CONCRETE setLink(String paramString)
  {
    link = paramString;
    return this;
  }
  
  public CONCRETE setName(String paramString)
  {
    name = paramString;
    return this;
  }
  
  public CONCRETE setPicture(String paramString)
  {
    picture = paramString;
    return this;
  }
  
  public CONCRETE setPlace(String paramString)
  {
    place = paramString;
    return this;
  }
  
  public CONCRETE setRef(String paramString)
  {
    ref = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.ShareDialogBuilderBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */