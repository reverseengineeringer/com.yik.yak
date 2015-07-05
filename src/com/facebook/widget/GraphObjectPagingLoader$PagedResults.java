package com.facebook.widget;

import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;

abstract interface GraphObjectPagingLoader$PagedResults
  extends GraphObject
{
  public abstract GraphObjectList<GraphObject> getData();
}

/* Location:
 * Qualified Name:     com.facebook.widget.GraphObjectPagingLoader.PagedResults
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */