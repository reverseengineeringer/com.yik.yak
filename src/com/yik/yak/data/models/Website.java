package com.yik.yak.data.models;

public class Website
  extends YikYakObject
{
  String category;
  String name;
  boolean shouldDisplay;
  String url;
  
  public String getCategory()
  {
    return category;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public void setCategory(String paramString)
  {
    category = paramString;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setShouldDisplay(boolean paramBoolean)
  {
    shouldDisplay = paramBoolean;
  }
  
  public void setUrl(String paramString)
  {
    url = paramString;
  }
  
  public boolean shouldDisplay()
  {
    return shouldDisplay;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.Website
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */