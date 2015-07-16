import java.lang.reflect.Field;

public final class hz<T>
  extends hx
{
  private final T a;
  
  private hz(T paramT)
  {
    a = paramT;
  }
  
  public static <T> hw a(T paramT)
  {
    return new hz(paramT);
  }
  
  public static <T> T a(hw paramhw)
  {
    if ((paramhw instanceof hz)) {
      return (T)a;
    }
    paramhw = paramhw.asBinder();
    Object localObject = paramhw.getClass().getDeclaredFields();
    if (localObject.length == 1)
    {
      localObject = localObject[0];
      if (!((Field)localObject).isAccessible())
      {
        ((Field)localObject).setAccessible(true);
        try
        {
          paramhw = ((Field)localObject).get(paramhw);
          return paramhw;
        }
        catch (NullPointerException paramhw)
        {
          throw new IllegalArgumentException("Binder object is null.", paramhw);
        }
        catch (IllegalArgumentException paramhw)
        {
          throw new IllegalArgumentException("remoteBinder is the wrong class.", paramhw);
        }
        catch (IllegalAccessException paramhw)
        {
          throw new IllegalArgumentException("Could not access the field in remoteBinder.", paramhw);
        }
      }
      throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
    }
    throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
  }
}

/* Location:
 * Qualified Name:     hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */