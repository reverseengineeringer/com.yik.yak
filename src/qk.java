class qK
  implements pX
{
  int a;
  private final qJ c;
  private pX d;
  
  private qK(qG paramqG)
  {
    c = new qJ(paramqG, null);
    d = c.a().c();
    a = paramqG.a();
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
 * Qualified Name:     qK
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */