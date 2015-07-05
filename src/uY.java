import android.util.LruCache;

class uy
  extends LruCache<Class<?>, String>
{
  public uy(int paramInt)
  {
    super(paramInt);
  }
  
  protected String a(Class<?> paramClass)
  {
    return paramClass.getCanonicalName();
  }
}

/* Location:
 * Qualified Name:     uy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */