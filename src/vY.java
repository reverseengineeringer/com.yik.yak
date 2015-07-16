import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

class vy
{
  int a;
  vw b;
  vw c;
  Interpolator d;
  ArrayList<vw> e;
  vS f;
  
  public vy(vw... paramVarArgs)
  {
    a = paramVarArgs.length;
    e = new ArrayList();
    e.addAll(Arrays.asList(paramVarArgs));
    b = ((vw)e.get(0));
    c = ((vw)e.get(a - 1));
    d = c.d();
  }
  
  public static vy a(float... paramVarArgs)
  {
    int i = 1;
    int j = paramVarArgs.length;
    vx[] arrayOfvx = new vx[Math.max(j, 2)];
    if (j == 1)
    {
      arrayOfvx[0] = ((vx)vw.a(0.0F));
      arrayOfvx[1] = ((vx)vw.a(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      return new vu(arrayOfvx);
      arrayOfvx[0] = ((vx)vw.a(0.0F, paramVarArgs[0]));
      while (i < j)
      {
        arrayOfvx[i] = ((vx)vw.a(i / (j - 1), paramVarArgs[i]));
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
      localObject1 = (vw)e.get(1);
      localObject2 = ((vw)localObject1).d();
      f1 = paramFloat;
      if (localObject2 != null) {
        f1 = ((Interpolator)localObject2).getInterpolation(paramFloat);
      }
      paramFloat = b.c();
      paramFloat = (f1 - paramFloat) / (((vw)localObject1).c() - paramFloat);
      return f.a(paramFloat, b.b(), ((vw)localObject1).b());
    }
    if (paramFloat >= 1.0F)
    {
      localObject1 = (vw)e.get(a - 2);
      localObject2 = c.d();
      f1 = paramFloat;
      if (localObject2 != null) {
        f1 = ((Interpolator)localObject2).getInterpolation(paramFloat);
      }
      paramFloat = ((vw)localObject1).c();
      paramFloat = (f1 - paramFloat) / (c.c() - paramFloat);
      return f.a(paramFloat, ((vw)localObject1).b(), c.b());
    }
    Object localObject1 = b;
    int i = 1;
    while (i < a)
    {
      localObject2 = (vw)e.get(i);
      if (paramFloat < ((vw)localObject2).c())
      {
        Interpolator localInterpolator = ((vw)localObject2).d();
        f1 = paramFloat;
        if (localInterpolator != null) {
          f1 = localInterpolator.getInterpolation(paramFloat);
        }
        paramFloat = ((vw)localObject1).c();
        paramFloat = (f1 - paramFloat) / (((vw)localObject2).c() - paramFloat);
        return f.a(paramFloat, ((vw)localObject1).b(), ((vw)localObject2).b());
      }
      i += 1;
      localObject1 = localObject2;
    }
    return c.b();
  }
  
  public void a(vS paramvS)
  {
    f = paramvS;
  }
  
  public vy b()
  {
    ArrayList localArrayList = e;
    int j = e.size();
    vw[] arrayOfvw = new vw[j];
    int i = 0;
    while (i < j)
    {
      arrayOfvw[i] = ((vw)localArrayList.get(i)).e();
      i += 1;
    }
    return new vy(arrayOfvw);
  }
  
  public String toString()
  {
    String str = " ";
    int i = 0;
    while (i < a)
    {
      str = str + ((vw)e.get(i)).b() + "  ";
      i += 1;
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     vy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */