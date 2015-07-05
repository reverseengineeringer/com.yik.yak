import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public class qt
  extends AbstractList<String>
  implements RandomAccess, qu
{
  public static final qu a = new qS(new qt());
  private final List<Object> b;
  
  public qt()
  {
    b = new ArrayList();
  }
  
  public qt(qu paramqu)
  {
    b = new ArrayList(paramqu.size());
    addAll(paramqu);
  }
  
  private static String a(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if ((paramObject instanceof pT)) {
      return ((pT)paramObject).f();
    }
    return qo.b((byte[])paramObject);
  }
  
  public String a(int paramInt)
  {
    Object localObject = b.get(paramInt);
    if ((localObject instanceof String)) {
      return (String)localObject;
    }
    if ((localObject instanceof pT))
    {
      localObject = (pT)localObject;
      str = ((pT)localObject).f();
      if (((pT)localObject).g()) {
        b.set(paramInt, str);
      }
      return str;
    }
    localObject = (byte[])localObject;
    String str = qo.b((byte[])localObject);
    if (qo.a((byte[])localObject)) {
      b.set(paramInt, str);
    }
    return str;
  }
  
  public String a(int paramInt, String paramString)
  {
    return a(b.set(paramInt, paramString));
  }
  
  public List<?> a()
  {
    return Collections.unmodifiableList(b);
  }
  
  public void a(pT parampT)
  {
    b.add(parampT);
    modCount += 1;
  }
  
  public boolean addAll(int paramInt, Collection<? extends String> paramCollection)
  {
    Object localObject = paramCollection;
    if ((paramCollection instanceof qu)) {
      localObject = ((qu)paramCollection).a();
    }
    boolean bool = b.addAll(paramInt, (Collection)localObject);
    modCount += 1;
    return bool;
  }
  
  public boolean addAll(Collection<? extends String> paramCollection)
  {
    return addAll(size(), paramCollection);
  }
  
  public String b(int paramInt)
  {
    Object localObject = b.remove(paramInt);
    modCount += 1;
    return a(localObject);
  }
  
  public void b(int paramInt, String paramString)
  {
    b.add(paramInt, paramString);
    modCount += 1;
  }
  
  public void clear()
  {
    b.clear();
    modCount += 1;
  }
  
  public int size()
  {
    return b.size();
  }
}

/* Location:
 * Qualified Name:     qt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */