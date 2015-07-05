package com.facebook.widget;

import com.facebook.model.GraphObject;
import java.text.Collator;
import java.util.Comparator;

class GraphObjectAdapter$1
  implements Comparator<GraphObject>
{
  GraphObjectAdapter$1(GraphObjectAdapter paramGraphObjectAdapter, Collator paramCollator) {}
  
  public int compare(GraphObject paramGraphObject1, GraphObject paramGraphObject2)
  {
    return GraphObjectAdapter.access$100(paramGraphObject1, paramGraphObject2, GraphObjectAdapter.access$000(this$0), val$collator);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.GraphObjectAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */