import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class qf<FieldDescriptorType extends qh<FieldDescriptorType>>
{
  private static final qf d = new qf(true);
  private final qM<FieldDescriptorType, Object> a;
  private boolean b;
  private boolean c = false;
  
  private qf()
  {
    a = qM.a(16);
  }
  
  private qf(boolean paramBoolean)
  {
    a = qM.a(0);
    c();
  }
  
  static int a(rb paramrb, boolean paramBoolean)
  {
    if (paramBoolean) {
      return 2;
    }
    return paramrb.c();
  }
  
  public static Object a(pZ parampZ, rb paramrb, boolean paramBoolean)
  {
    switch (qg.b[paramrb.ordinal()])
    {
    default: 
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1: 
      return Double.valueOf(parampZ.b());
    case 2: 
      return Float.valueOf(parampZ.c());
    case 3: 
      return Long.valueOf(parampZ.e());
    case 4: 
      return Long.valueOf(parampZ.d());
    case 5: 
      return Integer.valueOf(parampZ.f());
    case 6: 
      return Long.valueOf(parampZ.g());
    case 7: 
      return Integer.valueOf(parampZ.h());
    case 8: 
      return Boolean.valueOf(parampZ.i());
    case 9: 
      if (paramBoolean) {
        return parampZ.k();
      }
      return parampZ.j();
    case 10: 
      return parampZ.l();
    case 11: 
      return Integer.valueOf(parampZ.m());
    case 12: 
      return Integer.valueOf(parampZ.o());
    case 13: 
      return Long.valueOf(parampZ.p());
    case 14: 
      return Integer.valueOf(parampZ.q());
    case 15: 
      return Long.valueOf(parampZ.r());
    case 16: 
      throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
    case 17: 
      throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
    }
    throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
  }
  
  public static <T extends qh<T>> qf<T> a()
  {
    return new qf();
  }
  
  private static void a(rb paramrb, Object paramObject)
  {
    boolean bool = false;
    if (paramObject == null) {
      throw new NullPointerException();
    }
    switch (qg.a[paramrb.b().ordinal()])
    {
    }
    while (!bool)
    {
      throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      bool = paramObject instanceof Integer;
      continue;
      bool = paramObject instanceof Long;
      continue;
      bool = paramObject instanceof Float;
      continue;
      bool = paramObject instanceof Double;
      continue;
      bool = paramObject instanceof Boolean;
      continue;
      bool = paramObject instanceof String;
      continue;
      if (((paramObject instanceof pW)) || ((paramObject instanceof byte[])))
      {
        bool = true;
        continue;
        if (((paramObject instanceof Integer)) || ((paramObject instanceof qs)))
        {
          bool = true;
          continue;
          if (((paramObject instanceof qB)) || ((paramObject instanceof qv))) {
            bool = true;
          }
        }
      }
    }
  }
  
  private boolean a(Map.Entry<FieldDescriptorType, Object> paramEntry)
  {
    qh localqh = (qh)paramEntry.getKey();
    if (localqh.b() == rg.i)
    {
      if (localqh.c())
      {
        paramEntry = ((List)paramEntry.getValue()).iterator();
        do
        {
          if (!paramEntry.hasNext()) {
            break;
          }
        } while (((qB)paramEntry.next()).j());
        return false;
      }
      paramEntry = paramEntry.getValue();
      if ((paramEntry instanceof qB))
      {
        if (!((qB)paramEntry).j()) {
          return false;
        }
      }
      else
      {
        if ((paramEntry instanceof qv)) {
          return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      }
    }
    return true;
  }
  
  public static <T extends qh<T>> qf<T> b()
  {
    return d;
  }
  
  private void b(Map.Entry<FieldDescriptorType, Object> paramEntry)
  {
    qh localqh = (qh)paramEntry.getKey();
    Object localObject = paramEntry.getValue();
    paramEntry = (Map.Entry<FieldDescriptorType, Object>)localObject;
    if ((localObject instanceof qv)) {
      paramEntry = ((qv)localObject).a();
    }
    if (localqh.c())
    {
      localObject = a(localqh);
      if (localObject == null)
      {
        a.a(localqh, new ArrayList((List)paramEntry));
        return;
      }
      ((List)localObject).addAll((List)paramEntry);
      return;
    }
    if (localqh.b() == rg.i)
    {
      localObject = a(localqh);
      if (localObject == null)
      {
        a.a(localqh, paramEntry);
        return;
      }
      if ((localObject instanceof qE)) {}
      for (paramEntry = localqh.a((qE)localObject, (qE)paramEntry);; paramEntry = localqh.a(((qB)localObject).n(), (qB)paramEntry).h())
      {
        a.a(localqh, paramEntry);
        return;
      }
    }
    a.a(localqh, paramEntry);
  }
  
  public Object a(FieldDescriptorType paramFieldDescriptorType)
  {
    Object localObject = a.get(paramFieldDescriptorType);
    paramFieldDescriptorType = (FieldDescriptorType)localObject;
    if ((localObject instanceof qv)) {
      paramFieldDescriptorType = ((qv)localObject).a();
    }
    return paramFieldDescriptorType;
  }
  
  public void a(qf<FieldDescriptorType> paramqf)
  {
    int i = 0;
    while (i < a.c())
    {
      b(a.b(i));
      i += 1;
    }
    paramqf = a.d().iterator();
    while (paramqf.hasNext()) {
      b((Map.Entry)paramqf.next());
    }
  }
  
  public void a(FieldDescriptorType paramFieldDescriptorType, Object paramObject)
  {
    if (paramFieldDescriptorType.c())
    {
      if (!(paramObject instanceof List)) {
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.addAll((List)paramObject);
      paramObject = localArrayList.iterator();
      while (((Iterator)paramObject).hasNext())
      {
        Object localObject = ((Iterator)paramObject).next();
        a(paramFieldDescriptorType.a(), localObject);
      }
      paramObject = localArrayList;
    }
    for (;;)
    {
      if ((paramObject instanceof qv)) {
        c = true;
      }
      a.a(paramFieldDescriptorType, paramObject);
      return;
      a(paramFieldDescriptorType.a(), paramObject);
    }
  }
  
  public void b(FieldDescriptorType paramFieldDescriptorType, Object paramObject)
  {
    if (!paramFieldDescriptorType.c()) {
      throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }
    a(paramFieldDescriptorType.a(), paramObject);
    Object localObject = a(paramFieldDescriptorType);
    if (localObject == null)
    {
      localObject = new ArrayList();
      a.a(paramFieldDescriptorType, localObject);
    }
    for (paramFieldDescriptorType = (FieldDescriptorType)localObject;; paramFieldDescriptorType = (List)localObject)
    {
      paramFieldDescriptorType.add(paramObject);
      return;
    }
  }
  
  public void c()
  {
    if (b) {
      return;
    }
    a.a();
    b = true;
  }
  
  public qf<FieldDescriptorType> d()
  {
    qf localqf = a();
    int i = 0;
    while (i < a.c())
    {
      localObject = a.b(i);
      localqf.a((qh)((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
      i += 1;
    }
    Object localObject = a.d().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localqf.a((qh)localEntry.getKey(), localEntry.getValue());
    }
    c = c;
    return localqf;
  }
  
  public boolean e()
  {
    int i = 0;
    while (i < a.c())
    {
      if (!a(a.b(i))) {
        return false;
      }
      i += 1;
    }
    Iterator localIterator = a.d().iterator();
    while (localIterator.hasNext()) {
      if (!a((Map.Entry)localIterator.next())) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     qf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */