package com.parse;

import java.lang.ref.WeakReference;
import java.util.HashMap;

class WeakValueHashMap<K, V>
{
  private HashMap<K, WeakReference<V>> map = new HashMap();
  
  public void clear()
  {
    map.clear();
  }
  
  public V get(K paramK)
  {
    Object localObject1 = (WeakReference)map.get(paramK);
    if (localObject1 == null) {
      localObject1 = null;
    }
    Object localObject2;
    do
    {
      return (V)localObject1;
      localObject2 = ((WeakReference)localObject1).get();
      localObject1 = localObject2;
    } while (localObject2 != null);
    map.remove(paramK);
    return (V)localObject2;
  }
  
  public void put(K paramK, V paramV)
  {
    map.put(paramK, new WeakReference(paramV));
  }
  
  public void remove(K paramK)
  {
    map.remove(paramK);
  }
}

/* Location:
 * Qualified Name:     com.parse.WeakValueHashMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */