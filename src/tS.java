public class ts
{
  public final int a;
  private final Object b;
  private final Object c;
  private final Number d;
  private final Number e;
  
  private ts(int paramInt, Object paramObject1, Number paramNumber1, Number paramNumber2, Object paramObject2)
  {
    a = paramInt;
    c = paramObject1;
    d = paramNumber1;
    e = paramNumber2;
    b = paramObject2;
  }
  
  public String a()
  {
    Object localObject = null;
    for (;;)
    {
      try
      {
        str = (String)c;
        localObject = str;
      }
      catch (ClassCastException localClassCastException2)
      {
        String str;
        continue;
      }
      try
      {
        str = (String)b;
        return str;
      }
      catch (ClassCastException localClassCastException1)
      {
        return (String)localObject;
      }
    }
  }
  
  public ts a(Object paramObject)
  {
    return new ts(a, c, d, e, paramObject);
  }
  
  public Number b()
  {
    Object localObject2 = Integer.valueOf(0);
    Object localObject1 = localObject2;
    if (c != null) {}
    try
    {
      localObject1 = (Number)c;
      localObject2 = localObject1;
      if (b != null) {}
      try
      {
        localObject2 = (Number)b;
        return (Number)localObject2;
      }
      catch (ClassCastException localClassCastException3)
      {
        return (Number)localObject1;
      }
    }
    catch (ClassCastException localClassCastException1)
    {
      for (;;)
      {
        ClassCastException localClassCastException2 = localClassCastException3;
      }
    }
  }
  
  public Boolean c()
  {
    Object localObject2 = Boolean.valueOf(false);
    Object localObject1 = localObject2;
    if (c != null) {}
    try
    {
      localObject1 = (Boolean)c;
      localObject2 = localObject1;
      if (b != null) {}
      try
      {
        localObject2 = (Boolean)b;
        return (Boolean)localObject2;
      }
      catch (ClassCastException localClassCastException3)
      {
        return (Boolean)localObject1;
      }
    }
    catch (ClassCastException localClassCastException1)
    {
      for (;;)
      {
        ClassCastException localClassCastException2 = localClassCastException3;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */