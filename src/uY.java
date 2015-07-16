class uy
{
  private final int[] a = new int['Ā'];
  private int b = 0;
  
  public int a(int paramInt)
  {
    return a[paramInt];
  }
  
  public boolean a()
  {
    return a.length == b;
  }
  
  public int b()
  {
    int i = b;
    b += 1;
    a[i] = 0;
    return i;
  }
  
  public void b(int paramInt)
  {
    int[] arrayOfInt = a;
    arrayOfInt[paramInt] += 1;
  }
  
  public void c()
  {
    b -= 1;
    if (b < 0) {
      throw new ArrayIndexOutOfBoundsException(b);
    }
  }
}

/* Location:
 * Qualified Name:     uy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */