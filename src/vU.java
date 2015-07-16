import android.view.animation.Interpolator;
import java.util.ArrayList;

class vu
  extends vy
{
  private float g;
  private float h;
  private float i;
  private boolean j = true;
  
  public vu(vx... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public Object a(float paramFloat)
  {
    return Float.valueOf(b(paramFloat));
  }
  
  public vu a()
  {
    ArrayList localArrayList = e;
    int m = e.size();
    vx[] arrayOfvx = new vx[m];
    int k = 0;
    while (k < m)
    {
      arrayOfvx[k] = ((vx)((vw)localArrayList.get(k)).e());
      k += 1;
    }
    return new vu(arrayOfvx);
  }
  
  public float b(float paramFloat)
  {
    int k = 1;
    float f1;
    if (a == 2)
    {
      if (j)
      {
        j = false;
        g = ((vx)e.get(0)).f();
        h = ((vx)e.get(1)).f();
        i = (h - g);
      }
      f1 = paramFloat;
      if (d != null) {
        f1 = d.getInterpolation(paramFloat);
      }
      if (f == null) {
        return g + i * f1;
      }
      return ((Number)f.a(f1, Float.valueOf(g), Float.valueOf(h))).floatValue();
    }
    vx localvx;
    float f2;
    float f3;
    float f4;
    float f5;
    if (paramFloat <= 0.0F)
    {
      localObject = (vx)e.get(0);
      localvx = (vx)e.get(1);
      f2 = ((vx)localObject).f();
      f3 = localvx.f();
      f4 = ((vx)localObject).c();
      f5 = localvx.c();
      localObject = localvx.d();
      f1 = paramFloat;
      if (localObject != null) {
        f1 = ((Interpolator)localObject).getInterpolation(paramFloat);
      }
      paramFloat = (f1 - f4) / (f5 - f4);
      if (f == null) {
        return paramFloat * (f3 - f2) + f2;
      }
      return ((Number)f.a(paramFloat, Float.valueOf(f2), Float.valueOf(f3))).floatValue();
    }
    if (paramFloat >= 1.0F)
    {
      localObject = (vx)e.get(a - 2);
      localvx = (vx)e.get(a - 1);
      f2 = ((vx)localObject).f();
      f3 = localvx.f();
      f4 = ((vx)localObject).c();
      f5 = localvx.c();
      localObject = localvx.d();
      f1 = paramFloat;
      if (localObject != null) {
        f1 = ((Interpolator)localObject).getInterpolation(paramFloat);
      }
      paramFloat = (f1 - f4) / (f5 - f4);
      if (f == null) {
        return paramFloat * (f3 - f2) + f2;
      }
      return ((Number)f.a(paramFloat, Float.valueOf(f2), Float.valueOf(f3))).floatValue();
    }
    for (Object localObject = (vx)e.get(0); k < a; localObject = localvx)
    {
      localvx = (vx)e.get(k);
      if (paramFloat < localvx.c())
      {
        Interpolator localInterpolator = localvx.d();
        f1 = paramFloat;
        if (localInterpolator != null) {
          f1 = localInterpolator.getInterpolation(paramFloat);
        }
        paramFloat = (f1 - ((vx)localObject).c()) / (localvx.c() - ((vx)localObject).c());
        f1 = ((vx)localObject).f();
        f2 = localvx.f();
        if (f == null) {
          return (f2 - f1) * paramFloat + f1;
        }
        return ((Number)f.a(paramFloat, Float.valueOf(f1), Float.valueOf(f2))).floatValue();
      }
      k += 1;
    }
    return ((Number)((vw)e.get(a - 1)).b()).floatValue();
  }
}

/* Location:
 * Qualified Name:     vu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */