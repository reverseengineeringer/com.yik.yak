package com.facebook.widget;

public enum FacebookDialog$OpenGraphActionDialogFeature
  implements FacebookDialog.DialogFeature
{
  OG_ACTION_DIALOG(20130618);
  
  private int minVersion;
  
  private FacebookDialog$OpenGraphActionDialogFeature(int paramInt)
  {
    minVersion = paramInt;
  }
  
  public String getAction()
  {
    return "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
  }
  
  public int getMinVersion()
  {
    return minVersion;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.OpenGraphActionDialogFeature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */