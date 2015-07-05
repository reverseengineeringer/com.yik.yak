package com.adjust.sdk.plugin;

import java.util.Map.Entry;

public class MapEntry<K, V>
  implements Map.Entry<K, V>
{
  private K key;
  private V value;
  
  public MapEntry(K paramK, V paramV)
  {
    key = paramK;
    value = paramV;
  }
  
  public K getKey()
  {
    return (K)key;
  }
  
  public V getValue()
  {
    return (V)value;
  }
  
  public V setValue(V paramV)
  {
    value = paramV;
    return (V)value;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.plugin.MapEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */