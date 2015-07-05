import java.io.IOException;
import java.util.Set;

class zr
  extends xO
{
  zr(zl paramzl, String paramString, Object[] paramArrayOfObject, int paramInt1, JP paramJP, int paramInt2, boolean paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void b()
  {
    try
    {
      boolean bool = zl.h(f).a(a, c, d, e);
      if (bool) {
        f.i.a(a, yJ.l);
      }
      if ((bool) || (e)) {
        synchronized (f)
        {
          zl.i(f).remove(Integer.valueOf(a));
          return;
        }
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     zr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */