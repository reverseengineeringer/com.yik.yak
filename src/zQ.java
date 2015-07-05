import java.io.IOException;
import java.util.List;
import java.util.Set;

class zq
  extends xO
{
  zq(zl paramzl, String paramString, Object[] paramArrayOfObject, int paramInt, List paramList, boolean paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void b()
  {
    boolean bool = zl.h(e).a(a, c, d);
    if (bool) {}
    try
    {
      e.i.a(a, yJ.l);
      if ((bool) || (d)) {
        synchronized (e)
        {
          zl.i(e).remove(Integer.valueOf(a));
          return;
        }
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     zq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */