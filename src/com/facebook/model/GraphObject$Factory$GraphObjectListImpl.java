package com.facebook.model;

import com.facebook.FacebookGraphObjectException;
import com.facebook.internal.Validate;
import java.util.AbstractList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;

final class GraphObject$Factory$GraphObjectListImpl<T>
  extends AbstractList<T>
  implements GraphObjectList<T>
{
  private final Class<?> itemType;
  private final JSONArray state;
  
  public GraphObject$Factory$GraphObjectListImpl(JSONArray paramJSONArray, Class<?> paramClass)
  {
    Validate.notNull(paramJSONArray, "state");
    Validate.notNull(paramClass, "itemType");
    state = paramJSONArray;
    itemType = paramClass;
  }
  
  private void checkIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= state.length())) {
      throw new IndexOutOfBoundsException();
    }
  }
  
  private void put(int paramInt, T paramT)
  {
    paramT = GraphObject.Factory.access$200(paramT);
    try
    {
      state.put(paramInt, paramT);
      return;
    }
    catch (JSONException paramT)
    {
      throw new IllegalArgumentException(paramT);
    }
  }
  
  public void add(int paramInt, T paramT)
  {
    if (paramInt < 0) {
      throw new IndexOutOfBoundsException();
    }
    if (paramInt < size()) {
      throw new UnsupportedOperationException("Only adding items at the end of the list is supported.");
    }
    put(paramInt, paramT);
  }
  
  public final <U extends GraphObject> GraphObjectList<U> castToListOf(Class<U> paramClass)
  {
    if (GraphObject.class.isAssignableFrom(itemType))
    {
      if (paramClass.isAssignableFrom(itemType)) {
        return this;
      }
      return GraphObject.Factory.createList(state, paramClass);
    }
    throw new FacebookGraphObjectException("Can't cast GraphObjectCollection of non-GraphObject type " + itemType);
  }
  
  public void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (this == paramObject) {
        return true;
      }
    } while (getClass() != paramObject.getClass());
    paramObject = (GraphObjectListImpl)paramObject;
    return state.equals(state);
  }
  
  public T get(int paramInt)
  {
    checkIndex(paramInt);
    return (T)GraphObject.Factory.coerceValueToExpectedType(state.opt(paramInt), itemType, null);
  }
  
  public final JSONArray getInnerJSONArray()
  {
    return state;
  }
  
  public int hashCode()
  {
    return state.hashCode();
  }
  
  public boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public T set(int paramInt, T paramT)
  {
    checkIndex(paramInt);
    Object localObject = get(paramInt);
    put(paramInt, paramT);
    return (T)localObject;
  }
  
  public int size()
  {
    return state.length();
  }
  
  public String toString()
  {
    return String.format("GraphObjectList{itemType=%s, state=%s}", new Object[] { itemType.getSimpleName(), state });
  }
}

/* Location:
 * Qualified Name:     com.facebook.model.GraphObject.Factory.GraphObjectListImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */