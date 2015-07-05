package com.facebook.internal;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.widget.FacebookDialog.Builder;
import com.facebook.widget.FacebookDialog.DialogFeature;
import com.facebook.widget.FacebookDialog.PendingCall;
import java.util.EnumSet;

class LikeActionController$LikeDialogBuilder
  extends FacebookDialog.Builder<LikeDialogBuilder>
{
  private String objectId;
  
  public LikeActionController$LikeDialogBuilder(Activity paramActivity, String paramString)
  {
    super(paramActivity);
    objectId = paramString;
  }
  
  public FacebookDialog.PendingCall getAppCall()
  {
    return appCall;
  }
  
  public String getApplicationId()
  {
    return applicationId;
  }
  
  protected EnumSet<? extends FacebookDialog.DialogFeature> getDialogFeatures()
  {
    return EnumSet.of(LikeActionController.LikeDialogFeature.LIKE_DIALOG);
  }
  
  protected Bundle getMethodArguments()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("object_id", objectId);
    return localBundle;
  }
  
  public String getWebFallbackUrl()
  {
    return getWebFallbackUrlInternal();
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.LikeDialogBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */