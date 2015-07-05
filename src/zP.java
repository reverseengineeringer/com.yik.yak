import java.io.IOException;
import java.util.List;
import java.util.Set;

class zp
  extends xO
{
  zp(zl paramzl, String paramString, Object[] paramArrayOfObject, int paramInt, List paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void b()
  {
    if (zl.h(d).a(a, c)) {
      try
      {
        d.i.a(a, yJ.l);
        synchronized (d)
        {
          zl.i(d).remove(Integer.valueOf(a));
          return;
        }
        return;
      }
      catch (IOException localIOException) {}
    }
  }
}

/* Location:
 * Qualified Name:     zp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */