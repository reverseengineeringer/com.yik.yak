import android.view.View;
import java.util.HashMap;
import java.util.Map;

public final class vz
  extends vT
{
  private static final Map<String, wc> h = new HashMap();
  private Object i;
  private String j;
  private wc k;
  
  static
  {
    h.put("alpha", vA.a);
    h.put("pivotX", vA.b);
    h.put("pivotY", vA.c);
    h.put("translationX", vA.d);
    h.put("translationY", vA.e);
    h.put("rotation", vA.f);
    h.put("rotationX", vA.g);
    h.put("rotationY", vA.h);
    h.put("scaleX", vA.i);
    h.put("scaleY", vA.j);
    h.put("scrollX", vA.k);
    h.put("scrollY", vA.l);
    h.put("x", vA.m);
    h.put("y", vA.n);
  }
  
  public vz() {}
  
  private vz(Object paramObject, String paramString)
  {
    i = paramObject;
    a(paramString);
  }
  
  public static vz a(Object paramObject, String paramString, float... paramVarArgs)
  {
    paramObject = new vz(paramObject, paramString);
    ((vz)paramObject).a(paramVarArgs);
    return (vz)paramObject;
  }
  
  public void a()
  {
    super.a();
  }
  
  void a(float paramFloat)
  {
    super.a(paramFloat);
    int n = f.length;
    int m = 0;
    while (m < n)
    {
      f[m].b(i);
      m += 1;
    }
  }
  
  public void a(String paramString)
  {
    if (f != null)
    {
      vP localvP = f[0];
      String str = localvP.c();
      localvP.a(paramString);
      g.remove(str);
      g.put(paramString, localvP);
    }
    j = paramString;
    e = false;
  }
  
  public void a(wc paramwc)
  {
    if (f != null)
    {
      vP localvP = f[0];
      String str = localvP.c();
      localvP.a(paramwc);
      g.remove(str);
      g.put(j, localvP);
    }
    if (k != null) {
      j = paramwc.a();
    }
    k = paramwc;
    e = false;
  }
  
  public void a(float... paramVarArgs)
  {
    if ((f == null) || (f.length == 0))
    {
      if (k != null)
      {
        a(new vP[] { vP.a(k, paramVarArgs) });
        return;
      }
      a(new vP[] { vP.a(j, paramVarArgs) });
      return;
    }
    super.a(paramVarArgs);
  }
  
  public vz b(long paramLong)
  {
    super.c(paramLong);
    return this;
  }
  
  void d()
  {
    if (!e)
    {
      if ((k == null) && (wf.a) && ((i instanceof View)) && (h.containsKey(j))) {
        a((wc)h.get(j));
      }
      int n = f.length;
      int m = 0;
      while (m < n)
      {
        f[m].a(i);
        m += 1;
      }
      super.d();
    }
  }
  
  public vz e()
  {
    return (vz)super.f();
  }
  
  public String toString()
  {
    String str1 = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + i;
    String str2 = str1;
    if (f != null)
    {
      int m = 0;
      for (;;)
      {
        str2 = str1;
        if (m >= f.length) {
          break;
        }
        str1 = str1 + "\n    " + f[m].toString();
        m += 1;
      }
    }
    return str2;
  }
}

/* Location:
 * Qualified Name:     vz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */