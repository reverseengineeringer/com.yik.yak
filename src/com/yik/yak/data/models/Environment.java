package com.yik.yak.data.models;

public class Environment
  extends YikYakObject
{
  private String mBasecampEndpoint;
  private String mImageUploadEndpoint;
  private boolean mIsCurrentEnvironment;
  private String mMainEndpoint;
  private String mName;
  private String mNotificationEndpoint;
  private String mShortName;
  
  public String getBasecampEndpoint()
  {
    return mBasecampEndpoint;
  }
  
  public String getImageUploadUrl()
  {
    return mImageUploadEndpoint;
  }
  
  public String getMainApiEndpoint()
  {
    return mMainEndpoint;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public String getNotificationEndpoint()
  {
    return mNotificationEndpoint;
  }
  
  public String getShortName()
  {
    return mShortName;
  }
  
  public boolean isCurrentEnvironment()
  {
    return mIsCurrentEnvironment;
  }
  
  public void setBasecampEndpoint(String paramString)
  {
    mBasecampEndpoint = paramString;
  }
  
  public void setImageUploadEndpoint(String paramString)
  {
    mImageUploadEndpoint = paramString;
  }
  
  public void setIsCurrentEnvironment(boolean paramBoolean)
  {
    mIsCurrentEnvironment = paramBoolean;
  }
  
  public void setMainApiEndpoint(String paramString)
  {
    mMainEndpoint = paramString;
  }
  
  public void setName(String paramString)
  {
    mName = paramString;
  }
  
  public void setNotificationEndpoint(String paramString)
  {
    mNotificationEndpoint = paramString;
  }
  
  public void setShortName(String paramString)
  {
    mShortName = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.Environment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */