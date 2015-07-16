final class qe
{
  private final Object a;
  private final int b;
  
  qe(Object paramObject, int paramInt)
  {
    a = paramObject;
    b = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof qe)) {}
    do
    {
      return false;
      paramObject = (qe)paramObject;
    } while ((a != a) || (b != b));
    return true;
  }
  
  public int hashCode()
  {
    return System.identityHashCode(a) * 65535 + b;
  }
}

/* Location:
 * Qualified Name:     qe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */