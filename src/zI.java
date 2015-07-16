final class zi
{
  private final zi[] a;
  private final int b;
  private final int c;
  
  zi()
  {
    a = new zi['Ā'];
    b = 0;
    c = 0;
  }
  
  zi(int paramInt1, int paramInt2)
  {
    a = null;
    b = paramInt1;
    paramInt2 &= 0x7;
    paramInt1 = paramInt2;
    if (paramInt2 == 0) {
      paramInt1 = 8;
    }
    c = paramInt1;
  }
}

/* Location:
 * Qualified Name:     zi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */