package com.facebook.widget;

public enum FacebookDialog$OpenGraphMessageDialogFeature
  implements FacebookDialog.DialogFeature
{
  OG_MESSAGE_DIALOG(20140204);
  
  private int minVersion;
  
  private FacebookDialog$OpenGraphMessageDialogFeature(int paramInt)
  {
    minVersion = paramInt;
  }
  
  public String getAction()
  {
    return "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
  }
  
  public int getMinVersion()
  {
    return minVersion;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.OpenGraphMessageDialogFeature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */