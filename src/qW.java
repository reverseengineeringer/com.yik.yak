import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public class qw
  extends AbstractList<String>
  implements RandomAccess, qx
{
  public static final qx a = new qV(new qw());
  private final List<Object> b;
  
  public qw()
  {
    b = new ArrayList();
  }
  
  public qw(qx paramqx)
  {
    b = new ArrayList(paramqx.size());
    addAll(paramqx);
  }
  
  private static String a(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if ((paramObject instanceof pW)) {
      return ((pW)paramObject).f();
    }
    return qr.b((byte[])paramObject);
  }
  
  public String a(int paramInt)
  {
    Object localObject = b.get(paramInt);
    if ((localObject instanceof String)) {
      return (String)localObject;
    }
    if ((localObject instanceof pW))
    {
      localObject = (pW)localObject;
      str = ((pW)localObject).f();
      if (((pW)localObject).g()) {
        b.set(paramInt, str);
      }
      return str;
    }
    localObject = (byte[])localObject;
    String str = qr.b((byte[])localObject);
    if (qr.a((byte[])localObject)) {
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
  
  public void a(pW parampW)
  {
    b.add(parampW);
    modCount += 1;
  }
  
  public boolean addAll(int paramInt, Collection<? extends String> paramCollection)
  {
    Object localObject = paramCollection;
    if ((paramCollection instanceof qx)) {
      localObject = ((qx)paramCollection).a();
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
 * Qualified Name:     qw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */