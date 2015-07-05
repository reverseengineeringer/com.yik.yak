package com.facebook.widget;

import android.database.CursorIndexOutOfBoundsException;
import com.facebook.model.GraphObject;
import java.util.ArrayList;
import java.util.Collection;

class SimpleGraphObjectCursor<T extends GraphObject>
  implements GraphObjectCursor<T>
{
  private boolean closed = false;
  private boolean fromCache = false;
  private ArrayList<T> graphObjects = new ArrayList();
  private boolean moreObjectsAvailable = false;
  private int pos = -1;
  
  SimpleGraphObjectCursor() {}
  
  SimpleGraphObjectCursor(SimpleGraphObjectCursor<T> paramSimpleGraphObjectCursor)
  {
    pos = pos;
    closed = closed;
    graphObjects = new ArrayList();
    graphObjects.addAll(graphObjects);
    fromCache = fromCache;
  }
  
  public void addGraphObjects(Collection<T> paramCollection, boolean paramBoolean)
  {
    graphObjects.addAll(paramCollection);
    fromCache |= paramBoolean;
  }
  
  public boolean areMoreObjectsAvailable()
  {
    return moreObjectsAvailable;
  }
  
  public void close()
  {
    closed = true;
  }
  
  public int getCount()
  {
    return graphObjects.size();
  }
  
  public T getGraphObject()
  {
    if (pos < 0) {
      throw new CursorIndexOutOfBoundsException("Before first object.");
    }
    if (pos >= graphObjects.size()) {
      throw new CursorIndexOutOfBoundsException("After last object.");
    }
    return (GraphObject)graphObjects.get(pos);
  }
  
  public int getPosition()
  {
    return pos;
  }
  
  public boolean isAfterLast()
  {
    int i = getCount();
    return (i == 0) || (pos == i);
  }
  
  public boolean isBeforeFirst()
  {
    return (getCount() == 0) || (pos == -1);
  }
  
  public boolean isClosed()
  {
    return closed;
  }
  
  public boolean isFirst()
  {
    return (pos == 0) && (getCount() != 0);
  }
  
  public boolean isFromCache()
  {
    return fromCache;
  }
  
  public boolean isLast()
  {
    int i = getCount();
    return (pos == i - 1) && (i != 0);
  }
  
  public boolean move(int paramInt)
  {
    return moveToPosition(pos + paramInt);
  }
  
  public boolean moveToFirst()
  {
    return moveToPosition(0);
  }
  
  public boolean moveToLast()
  {
    return moveToPosition(getCount() - 1);
  }
  
  public boolean moveToNext()
  {
    return moveToPosition(pos + 1);
  }
  
  public boolean moveToPosition(int paramInt)
  {
    int i = getCount();
    if (paramInt >= i)
    {
      pos = i;
      return false;
    }
    if (paramInt < 0)
    {
      pos = -1;
      return false;
    }
    pos = paramInt;
    return true;
  }
  
  public boolean moveToPrevious()
  {
    return moveToPosition(pos - 1);
  }
  
  public void setFromCache(boolean paramBoolean)
  {
    fromCache = paramBoolean;
  }
  
  public void setMoreObjectsAvailable(boolean paramBoolean)
  {
    moreObjectsAvailable = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.SimpleGraphObjectCursor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */