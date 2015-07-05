class vo
  extends vn
{
  float d;
  
  vo(float paramFloat)
  {
    a = paramFloat;
    b = Float.TYPE;
  }
  
  vo(float paramFloat1, float paramFloat2)
  {
    a = paramFloat1;
    d = paramFloat2;
    b = Float.TYPE;
    c = true;
  }
  
  public void a(Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass() == Float.class))
    {
      d = ((Float)paramObject).floatValue();
      c = true;
    }
  }
  
  public Object b()
  {
    return Float.valueOf(d);
  }
  
  public float f()
  {
    return d;
  }
  
  public vo g()
  {
    vo localvo = new vo(c(), d);
    localvo.a(d());
    return localvo;
  }
}

/* Location:
 * Qualified Name:     vo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */