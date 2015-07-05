package com.facebook;

import com.facebook.model.GraphObject;

abstract interface TestSession$TestAccount
  extends GraphObject
{
  public abstract String getAccessToken();
  
  public abstract String getId();
  
  public abstract String getName();
  
  public abstract void setName(String paramString);
}

/* Location:
 * Qualified Name:     com.facebook.TestSession.TestAccount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */