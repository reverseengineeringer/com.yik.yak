import android.view.View;
import java.util.HashMap;
import java.util.Map;

public final class vq
  extends vK
{
  private static final Map<String, vT> h = new HashMap();
  private Object i;
  private String j;
  private vT k;
  
  static
  {
    h.put("alpha", vr.a);
    h.put("pivotX", vr.b);
    h.put("pivotY", vr.c);
    h.put("translationX", vr.d);
    h.put("translationY", vr.e);
    h.put("rotation", vr.f);
    h.put("rotationX", vr.g);
    h.put("rotationY", vr.h);
    h.put("scaleX", vr.i);
    h.put("scaleY", vr.j);
    h.put("scrollX", vr.k);
    h.put("scrollY", vr.l);
    h.put("x", vr.m);
    h.put("y", vr.n);
  }
  
  public vq() {}
  
  private vq(Object paramObject, String paramString)
  {
    i = paramObject;
    a(paramString);
  }
  
  public static vq a(Object paramObject, String paramString, float... paramVarArgs)
  {
    paramObject = new vq(paramObject, paramString);
    ((vq)paramObject).a(paramVarArgs);
    return (vq)paramObject;
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
      vG localvG = f[0];
      String str = localvG.c();
      localvG.a(paramString);
      g.remove(str);
      g.put(paramString, localvG);
    }
    j = paramString;
    e = false;
  }
  
  public void a(vT paramvT)
  {
    if (f != null)
    {
      vG localvG = f[0];
      String str = localvG.c();
      localvG.a(paramvT);
      g.remove(str);
      g.put(j, localvG);
    }
    if (k != null) {
      j = paramvT.a();
    }
    k = paramvT;
    e = false;
  }
  
  public void a(float... paramVarArgs)
  {
    if ((f == null) || (f.length == 0))
    {
      if (k != null)
      {
        a(new vG[] { vG.a(k, paramVarArgs) });
        return;
      }
      a(new vG[] { vG.a(j, paramVarArgs) });
      return;
    }
    super.a(paramVarArgs);
  }
  
  public vq b(long paramLong)
  {
    super.c(paramLong);
    return this;
  }
  
  void d()
  {
    if (!e)
    {
      if ((k == null) && (vW.a) && ((i instanceof View)) && (h.containsKey(j))) {
        a((vT)h.get(j));
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
  
  public vq e()
  {
    return (vq)super.f();
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
 * Qualified Name:     vq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */