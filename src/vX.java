class vx
  extends vw
{
  float d;
  
  vx(float paramFloat)
  {
    a = paramFloat;
    b = Float.TYPE;
  }
  
  vx(float paramFloat1, float paramFloat2)
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
  
  public vx g()
  {
    vx localvx = new vx(c(), d);
    localvx.a(d());
    return localvx;
  }
}

/* Location:
 * Qualified Name:     vx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */