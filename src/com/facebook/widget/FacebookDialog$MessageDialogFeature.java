package com.facebook.widget;

public enum FacebookDialog$MessageDialogFeature
  implements FacebookDialog.DialogFeature
{
  MESSAGE_DIALOG(20140204),  PHOTOS(20140324),  VIDEO(20141218);
  
  private int minVersion;
  
  private FacebookDialog$MessageDialogFeature(int paramInt)
  {
    minVersion = paramInt;
  }
  
  public String getAction()
  {
    return "com.facebook.platform.action.request.MESSAGE_DIALOG";
  }
  
  public int getMinVersion()
  {
    return minVersion;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.MessageDialogFeature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */