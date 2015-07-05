import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class qP
  implements Iterator<Map.Entry<K, V>>
{
  private int b = -1;
  private boolean c;
  private Iterator<Map.Entry<K, V>> d;
  
  private qP(qJ paramqJ) {}
  
  private Iterator<Map.Entry<K, V>> b()
  {
    if (d == null) {
      d = qJ.c(a).entrySet().iterator();
    }
    return d;
  }
  
  public Map.Entry<K, V> a()
  {
    c = true;
    int i = b + 1;
    b = i;
    if (i < qJ.b(a).size()) {
      return (Map.Entry)qJ.b(a).get(b);
    }
    return (Map.Entry)b().next();
  }
  
  public boolean hasNext()
  {
    return (b + 1 < qJ.b(a).size()) || (b().hasNext());
  }
  
  public void remove()
  {
    if (!c) {
      throw new IllegalStateException("remove() was called before next()");
    }
    c = false;
    qJ.a(a);
    if (b < qJ.b(a).size())
    {
      qJ localqJ = a;
      int i = b;
      b = (i - 1);
      qJ.a(localqJ, i);
      return;
    }
    b().remove();
  }
}

/* Location:
 * Qualified Name:     qP
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */