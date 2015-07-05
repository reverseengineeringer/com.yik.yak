class qH
  implements pU
{
  int a;
  private final qG c;
  private pU d;
  
  private qH(qD paramqD)
  {
    c = new qG(paramqD, null);
    d = c.a().c();
    a = paramqD.a();
  }
  
  public Byte a()
  {
    return Byte.valueOf(b());
  }
  
  public byte b()
  {
    if (!d.hasNext()) {
      d = c.a().c();
    }
    a -= 1;
    return d.b();
  }
  
  public boolean hasNext()
  {
    return a > 0;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     qH
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */