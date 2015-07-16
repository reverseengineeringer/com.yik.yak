import java.lang.reflect.Constructor;

public enum dp
{
  private Class B;
  
  private dp(Class paramClass)
  {
    B = paramClass;
  }
  
  public dm a(float paramFloat)
  {
    try
    {
      dm localdm = (dm)B.getConstructor(new Class[] { Float.TYPE }).newInstance(new Object[] { Float.valueOf(paramFloat) });
      return localdm;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      throw new Error("Can not init easingMethod instance");
    }
  }
}

/* Location:
 * Qualified Name:     dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */