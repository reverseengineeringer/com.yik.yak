import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class qc<FieldDescriptorType extends qe<FieldDescriptorType>>
{
  private static final qc d = new qc(true);
  private final qJ<FieldDescriptorType, Object> a;
  private boolean b;
  private boolean c = false;
  
  private qc()
  {
    a = qJ.a(16);
  }
  
  private qc(boolean paramBoolean)
  {
    a = qJ.a(0);
    c();
  }
  
  static int a(qY paramqY, boolean paramBoolean)
  {
    if (paramBoolean) {
      return 2;
    }
    return paramqY.c();
  }
  
  public static Object a(pW parampW, qY paramqY, boolean paramBoolean)
  {
    switch (qd.b[paramqY.ordinal()])
    {
    default: 
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1: 
      return Double.valueOf(parampW.b());
    case 2: 
      return Float.valueOf(parampW.c());
    case 3: 
      return Long.valueOf(parampW.e());
    case 4: 
      return Long.valueOf(parampW.d());
    case 5: 
      return Integer.valueOf(parampW.f());
    case 6: 
      return Long.valueOf(parampW.g());
    case 7: 
      return Integer.valueOf(parampW.h());
    case 8: 
      return Boolean.valueOf(parampW.i());
    case 9: 
      if (paramBoolean) {
        return parampW.k();
      }
      return parampW.j();
    case 10: 
      return parampW.l();
    case 11: 
      return Integer.valueOf(parampW.m());
    case 12: 
      return Integer.valueOf(parampW.o());
    case 13: 
      return Long.valueOf(parampW.p());
    case 14: 
      return Integer.valueOf(parampW.q());
    case 15: 
      return Long.valueOf(parampW.r());
    case 16: 
      throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
    case 17: 
      throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
    }
    throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
  }
  
  public static <T extends qe<T>> qc<T> a()
  {
    return new qc();
  }
  
  private static void a(qY paramqY, Object paramObject)
  {
    boolean bool = false;
    if (paramObject == null) {
      throw new NullPointerException();
    }
    switch (qd.a[paramqY.b().ordinal()])
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
      if (((paramObject instanceof pT)) || ((paramObject instanceof byte[])))
      {
        bool = true;
        continue;
        if (((paramObject instanceof Integer)) || ((paramObject instanceof qp)))
        {
          bool = true;
          continue;
          if (((paramObject instanceof qy)) || ((paramObject instanceof qs))) {
            bool = true;
          }
        }
      }
    }
  }
  
  private boolean a(Map.Entry<FieldDescriptorType, Object> paramEntry)
  {
    qe localqe = (qe)paramEntry.getKey();
    if (localqe.b() == rd.i)
    {
      if (localqe.c())
      {
        paramEntry = ((List)paramEntry.getValue()).iterator();
        do
        {
          if (!paramEntry.hasNext()) {
            break;
          }
        } while (((qy)paramEntry.next()).j());
        return false;
      }
      paramEntry = paramEntry.getValue();
      if ((paramEntry instanceof qy))
      {
        if (!((qy)paramEntry).j()) {
          return false;
        }
      }
      else
      {
        if ((paramEntry instanceof qs)) {
          return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      }
    }
    return true;
  }
  
  public static <T extends qe<T>> qc<T> b()
  {
    return d;
  }
  
  private void b(Map.Entry<FieldDescriptorType, Object> paramEntry)
  {
    qe localqe = (qe)paramEntry.getKey();
    Object localObject = paramEntry.getValue();
    paramEntry = (Map.Entry<FieldDescriptorType, Object>)localObject;
    if ((localObject instanceof qs)) {
      paramEntry = ((qs)localObject).a();
    }
    if (localqe.c())
    {
      localObject = a(localqe);
      if (localObject == null)
      {
        a.a(localqe, new ArrayList((List)paramEntry));
        return;
      }
      ((List)localObject).addAll((List)paramEntry);
      return;
    }
    if (localqe.b() == rd.i)
    {
      localObject = a(localqe);
      if (localObject == null)
      {
        a.a(localqe, paramEntry);
        return;
      }
      if ((localObject instanceof qB)) {}
      for (paramEntry = localqe.a((qB)localObject, (qB)paramEntry);; paramEntry = localqe.a(((qy)localObject).n(), (qy)paramEntry).h())
      {
        a.a(localqe, paramEntry);
        return;
      }
    }
    a.a(localqe, paramEntry);
  }
  
  public Object a(FieldDescriptorType paramFieldDescriptorType)
  {
    Object localObject = a.get(paramFieldDescriptorType);
    paramFieldDescriptorType = (FieldDescriptorType)localObject;
    if ((localObject instanceof qs)) {
      paramFieldDescriptorType = ((qs)localObject).a();
    }
    return paramFieldDescriptorType;
  }
  
  public void a(qc<FieldDescriptorType> paramqc)
  {
    int i = 0;
    while (i < a.c())
    {
      b(a.b(i));
      i += 1;
    }
    paramqc = a.d().iterator();
    while (paramqc.hasNext()) {
      b((Map.Entry)paramqc.next());
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
      if ((paramObject instanceof qs)) {
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
  
  public qc<FieldDescriptorType> d()
  {
    qc localqc = a();
    int i = 0;
    while (i < a.c())
    {
      localObject = a.b(i);
      localqc.a((qe)((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
      i += 1;
    }
    Object localObject = a.d().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localqc.a((qe)localEntry.getKey(), localEntry.getValue());
    }
    c = c;
    return localqc;
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
 * Qualified Name:     qc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */