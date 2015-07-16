import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

class qT
  extends AbstractSet<Map.Entry<K, V>>
{
  private qT(qM paramqM) {}
  
  public boolean a(Map.Entry<K, V> paramEntry)
  {
    if (!contains(paramEntry))
    {
      a.a((Comparable)paramEntry.getKey(), paramEntry.getValue());
      return true;
    }
    return false;
  }
  
  public void clear()
  {
    a.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    Object localObject = (Map.Entry)paramObject;
    paramObject = a.get(((Map.Entry)localObject).getKey());
    localObject = ((Map.Entry)localObject).getValue();
    return (paramObject == localObject) || ((paramObject != null) && (paramObject.equals(localObject)));
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    return new qS(a, null);
  }
  
  public boolean remove(Object paramObject)
  {
    paramObject = (Map.Entry)paramObject;
    if (contains(paramObject))
    {
      a.remove(((Map.Entry)paramObject).getKey());
      return true;
    }
    return false;
  }
  
  public int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     qT
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */