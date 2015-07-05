import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

class qJ<K extends Comparable<K>, V>
  extends AbstractMap<K, V>
{
  private final int a;
  private List<qJ<K, V>.qO> b;
  private Map<K, V> c;
  private boolean d;
  private volatile qJ<K, V>.qQ e;
  
  private qJ(int paramInt)
  {
    a = paramInt;
    b = Collections.emptyList();
    c = Collections.emptyMap();
  }
  
  private int a(K paramK)
  {
    int k = 0;
    int m = b.size() - 1;
    int i = m;
    int j = k;
    if (m >= 0)
    {
      int n = paramK.compareTo(((qO)b.get(m)).a());
      if (n > 0) {
        return -(m + 2);
      }
      i = m;
      j = k;
      if (n == 0) {
        return m;
      }
    }
    if (j <= i)
    {
      k = (j + i) / 2;
      m = paramK.compareTo(((qO)b.get(k)).a());
      if (m < 0) {
        i = k - 1;
      }
      for (;;)
      {
        break;
        if (m <= 0) {
          break label140;
        }
        j = k + 1;
      }
      label140:
      return k;
    }
    return -(j + 1);
  }
  
  static <FieldDescriptorType extends qe<FieldDescriptorType>> qJ<FieldDescriptorType, Object> a(int paramInt)
  {
    return new qK(paramInt);
  }
  
  private V c(int paramInt)
  {
    e();
    Object localObject = ((qO)b.remove(paramInt)).getValue();
    if (!c.isEmpty())
    {
      Iterator localIterator = f().entrySet().iterator();
      b.add(new qO(this, (Map.Entry)localIterator.next()));
      localIterator.remove();
    }
    return (V)localObject;
  }
  
  private void e()
  {
    if (d) {
      throw new UnsupportedOperationException();
    }
  }
  
  private SortedMap<K, V> f()
  {
    e();
    if ((c.isEmpty()) && (!(c instanceof TreeMap))) {
      c = new TreeMap();
    }
    return (SortedMap)c;
  }
  
  private void g()
  {
    e();
    if ((b.isEmpty()) && (!(b instanceof ArrayList))) {
      b = new ArrayList(a);
    }
  }
  
  public V a(K paramK, V paramV)
  {
    e();
    int i = a(paramK);
    if (i >= 0) {
      return (V)((qO)b.get(i)).setValue(paramV);
    }
    g();
    i = -(i + 1);
    if (i >= a) {
      return (V)f().put(paramK, paramV);
    }
    if (b.size() == a)
    {
      qO localqO = (qO)b.remove(a - 1);
      f().put(localqO.a(), localqO.getValue());
    }
    b.add(i, new qO(this, paramK, paramV));
    return null;
  }
  
  public void a()
  {
    if (!d) {
      if (!c.isEmpty()) {
        break label34;
      }
    }
    label34:
    for (Map localMap = Collections.emptyMap();; localMap = Collections.unmodifiableMap(c))
    {
      c = localMap;
      d = true;
      return;
    }
  }
  
  public Map.Entry<K, V> b(int paramInt)
  {
    return (Map.Entry)b.get(paramInt);
  }
  
  public boolean b()
  {
    return d;
  }
  
  public int c()
  {
    return b.size();
  }
  
  public void clear()
  {
    e();
    if (!b.isEmpty()) {
      b.clear();
    }
    if (!c.isEmpty()) {
      c.clear();
    }
  }
  
  public boolean containsKey(Object paramObject)
  {
    paramObject = (Comparable)paramObject;
    return (a((Comparable)paramObject) >= 0) || (c.containsKey(paramObject));
  }
  
  public Iterable<Map.Entry<K, V>> d()
  {
    if (c.isEmpty()) {
      return qL.a();
    }
    return c.entrySet();
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    if (e == null) {
      e = new qQ(this, null);
    }
    return e;
  }
  
  public V get(Object paramObject)
  {
    paramObject = (Comparable)paramObject;
    int i = a((Comparable)paramObject);
    if (i >= 0) {
      return (V)((qO)b.get(i)).getValue();
    }
    return (V)c.get(paramObject);
  }
  
  public V remove(Object paramObject)
  {
    e();
    paramObject = (Comparable)paramObject;
    int i = a((Comparable)paramObject);
    if (i >= 0) {
      return (V)c(i);
    }
    if (c.isEmpty()) {
      return null;
    }
    return (V)c.remove(paramObject);
  }
  
  public int size()
  {
    return b.size() + c.size();
  }
}

/* Location:
 * Qualified Name:     qJ
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */