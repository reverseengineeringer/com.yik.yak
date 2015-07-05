import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

class vp
{
  int a;
  vn b;
  vn c;
  Interpolator d;
  ArrayList<vn> e;
  vJ f;
  
  public vp(vn... paramVarArgs)
  {
    a = paramVarArgs.length;
    e = new ArrayList();
    e.addAll(Arrays.asList(paramVarArgs));
    b = ((vn)e.get(0));
    c = ((vn)e.get(a - 1));
    d = c.d();
  }
  
  public static vp a(float... paramVarArgs)
  {
    int i = 1;
    int j = paramVarArgs.length;
    vo[] arrayOfvo = new vo[Math.max(j, 2)];
    if (j == 1)
    {
      arrayOfvo[0] = ((vo)vn.a(0.0F));
      arrayOfvo[1] = ((vo)vn.a(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      return new vl(arrayOfvo);
      arrayOfvo[0] = ((vo)vn.a(0.0F, paramVarArgs[0]));
      while (i < j)
      {
        arrayOfvo[i] = ((vo)vn.a(i / (j - 1), paramVarArgs[i]));
        i += 1;
      }
    }
  }
  
  public Object a(float paramFloat)
  {
    float f1;
    if (a == 2)
    {
      f1 = paramFloat;
      if (d != null) {
        f1 = d.getInterpolation(paramFloat);
      }
      return f.a(f1, b.b(), c.b());
    }
    Object localObject2;
    if (paramFloat <= 0.0F)
    {
      localObject1 = (vn)e.get(1);
      localObject2 = ((vn)localObject1).d();
      f1 = paramFloat;
      if (localObject2 != null) {
        f1 = ((Interpolator)localObject2).getInterpolation(paramFloat);
      }
      paramFloat = b.c();
      paramFloat = (f1 - paramFloat) / (((vn)localObject1).c() - paramFloat);
      return f.a(paramFloat, b.b(), ((vn)localObject1).b());
    }
    if (paramFloat >= 1.0F)
    {
      localObject1 = (vn)e.get(a - 2);
      localObject2 = c.d();
      f1 = paramFloat;
      if (localObject2 != null) {
        f1 = ((Interpolator)localObject2).getInterpolation(paramFloat);
      }
      paramFloat = ((vn)localObject1).c();
      paramFloat = (f1 - paramFloat) / (c.c() - paramFloat);
      return f.a(paramFloat, ((vn)localObject1).b(), c.b());
    }
    Object localObject1 = b;
    int i = 1;
    while (i < a)
    {
      localObject2 = (vn)e.get(i);
      if (paramFloat < ((vn)localObject2).c())
      {
        Interpolator localInterpolator = ((vn)localObject2).d();
        f1 = paramFloat;
        if (localInterpolator != null) {
          f1 = localInterpolator.getInterpolation(paramFloat);
        }
        paramFloat = ((vn)localObject1).c();
        paramFloat = (f1 - paramFloat) / (((vn)localObject2).c() - paramFloat);
        return f.a(paramFloat, ((vn)localObject1).b(), ((vn)localObject2).b());
      }
      i += 1;
      localObject1 = localObject2;
    }
    return c.b();
  }
  
  public void a(vJ paramvJ)
  {
    f = paramvJ;
  }
  
  public vp b()
  {
    ArrayList localArrayList = e;
    int j = e.size();
    vn[] arrayOfvn = new vn[j];
    int i = 0;
    while (i < j)
    {
      arrayOfvn[i] = ((vn)localArrayList.get(i)).e();
      i += 1;
    }
    return new vp(arrayOfvn);
  }
  
  public String toString()
  {
    String str = " ";
    int i = 0;
    while (i < a)
    {
      str = str + ((vn)e.get(i)).b() + "  ";
      i += 1;
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     vp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */