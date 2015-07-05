public enum cb
{
  private Class ak;
  
  private cb(Class paramClass)
  {
    ak = paramClass;
  }
  
  public ca a()
  {
    try
    {
      ca localca = (ca)ak.newInstance();
      return localca;
    }
    catch (Exception localException)
    {
      throw new Error("Can not init animatorClazz instance");
    }
  }
}

/* Location:
 * Qualified Name:     cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */