import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class qS
  implements Iterator<Map.Entry<K, V>>
{
  private int b = -1;
  private boolean c;
  private Iterator<Map.Entry<K, V>> d;
  
  private qS(qM paramqM) {}
  
  private Iterator<Map.Entry<K, V>> b()
  {
    if (d == null) {
      d = qM.c(a).entrySet().iterator();
    }
    return d;
  }
  
  public Map.Entry<K, V> a()
  {
    c = true;
    int i = b + 1;
    b = i;
    if (i < qM.b(a).size()) {
      return (Map.Entry)qM.b(a).get(b);
    }
    return (Map.Entry)b().next();
  }
  
  public boolean hasNext()
  {
    return (b + 1 < qM.b(a).size()) || (b().hasNext());
  }
  
  public void remove()
  {
    if (!c) {
      throw new IllegalStateException("remove() was called before next()");
    }
    c = false;
    qM.a(a);
    if (b < qM.b(a).size())
    {
      qM localqM = a;
      int i = b;
      b = (i - 1);
      qM.a(localqM, i);
      return;
    }
    b().remove();
  }
}

/* Location:
 * Qualified Name:     qS
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */