package com.facebook.widget;

import com.facebook.model.GraphObject;

public class GraphObjectAdapter$SectionAndItem<T extends GraphObject>
{
  public T graphObject;
  public String sectionKey;
  
  public GraphObjectAdapter$SectionAndItem(String paramString, T paramT)
  {
    sectionKey = paramString;
    graphObject = paramT;
  }
  
  public GraphObjectAdapter.SectionAndItem.Type getType()
  {
    if (sectionKey == null) {
      return GraphObjectAdapter.SectionAndItem.Type.ACTIVITY_CIRCLE;
    }
    if (graphObject == null) {
      return GraphObjectAdapter.SectionAndItem.Type.SECTION_HEADER;
    }
    return GraphObjectAdapter.SectionAndItem.Type.GRAPH_OBJECT;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.GraphObjectAdapter.SectionAndItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */