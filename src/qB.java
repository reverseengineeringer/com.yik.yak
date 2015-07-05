final class qb
{
  private final Object a;
  private final int b;
  
  qb(Object paramObject, int paramInt)
  {
    a = paramObject;
    b = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof qb)) {}
    do
    {
      return false;
      paramObject = (qb)paramObject;
    } while ((a != a) || (b != b));
    return true;
  }
  
  public int hashCode()
  {
    return System.identityHashCode(a) * 65535 + b;
  }
}

/* Location:
 * Qualified Name:     qb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */