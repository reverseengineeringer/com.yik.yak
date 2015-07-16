class pa
  extends Number
  implements Comparable<pa>
{
  private double a;
  private long b;
  private boolean c;
  
  private pa(long paramLong)
  {
    b = paramLong;
    c = true;
  }
  
  public static pa a(long paramLong)
  {
    return new pa(paramLong);
  }
  
  public int a(pa parampa)
  {
    if ((b()) && (parampa.b())) {
      return new Long(b).compareTo(Long.valueOf(b));
    }
    return Double.compare(doubleValue(), parampa.doubleValue());
  }
  
  public boolean a()
  {
    return !b();
  }
  
  public boolean b()
  {
    return c;
  }
  
  public byte byteValue()
  {
    return (byte)(int)longValue();
  }
  
  public long c()
  {
    if (b()) {
      return b;
    }
    return a;
  }
  
  public int d()
  {
    return (int)longValue();
  }
  
  public double doubleValue()
  {
    if (b()) {
      return b;
    }
    return a;
  }
  
  public short e()
  {
    return (short)(int)longValue();
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof pa)) && (a((pa)paramObject) == 0);
  }
  
  public float floatValue()
  {
    return (float)doubleValue();
  }
  
  public int hashCode()
  {
    return new Long(longValue()).hashCode();
  }
  
  public int intValue()
  {
    return d();
  }
  
  public long longValue()
  {
    return c();
  }
  
  public short shortValue()
  {
    return e();
  }
  
  public String toString()
  {
    if (b()) {
      return Long.toString(b);
    }
    return Double.toString(a);
  }
}

/* Location:
 * Qualified Name:     pa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */