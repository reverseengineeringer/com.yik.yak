import java.io.IOException;
import java.util.List;
import java.util.Set;

class zz
  extends xY
{
  zz(zv paramzv, String paramString, Object[] paramArrayOfObject, int paramInt, List paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void b()
  {
    if (zv.h(d).a(a, c)) {
      try
      {
        d.i.a(a, yT.l);
        synchronized (d)
        {
          zv.i(d).remove(Integer.valueOf(a));
          return;
        }
        return;
      }
      catch (IOException localIOException) {}
    }
  }
}

/* Location:
 * Qualified Name:     zz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */