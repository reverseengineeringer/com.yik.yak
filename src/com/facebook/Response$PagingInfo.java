package com.facebook;

import com.facebook.model.GraphObject;

abstract interface Response$PagingInfo
  extends GraphObject
{
  public abstract String getNext();
  
  public abstract String getPrevious();
}

/* Location:
 * Qualified Name:     com.facebook.Response.PagingInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */