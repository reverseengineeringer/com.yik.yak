package com.facebook.internal;

import com.facebook.widget.FacebookDialog.DialogFeature;

 enum LikeActionController$LikeDialogFeature
  implements FacebookDialog.DialogFeature
{
  LIKE_DIALOG(20140701);
  
  private int minVersion;
  
  private LikeActionController$LikeDialogFeature(int paramInt)
  {
    minVersion = paramInt;
  }
  
  public String getAction()
  {
    return "com.facebook.platform.action.request.LIKE_DIALOG";
  }
  
  public int getMinVersion()
  {
    return minVersion;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.LikeDialogFeature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */