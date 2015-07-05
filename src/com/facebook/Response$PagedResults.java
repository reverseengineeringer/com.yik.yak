package com.facebook;

import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;

abstract interface Response$PagedResults
  extends GraphObject
{
  public abstract GraphObjectList<GraphObject> getData();
  
  public abstract Response.PagingInfo getPaging();
}

/* Location:
 * Qualified Name:     com.facebook.Response.PagedResults
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */