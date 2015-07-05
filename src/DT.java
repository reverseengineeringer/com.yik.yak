import java.lang.reflect.Constructor;

public enum dt
{
  private Class B;
  
  private dt(Class paramClass)
  {
    B = paramClass;
  }
  
  public dq a(float paramFloat)
  {
    try
    {
      dq localdq = (dq)B.getConstructor(new Class[] { Float.TYPE }).newInstance(new Object[] { Float.valueOf(paramFloat) });
      return localdq;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      throw new Error("Can not init easingMethod instance");
    }
  }
}

/* Location:
 * Qualified Name:     dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */