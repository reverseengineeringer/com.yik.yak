import android.view.animation.Interpolator;
import java.util.ArrayList;

class vl
  extends vp
{
  private float g;
  private float h;
  private float i;
  private boolean j = true;
  
  public vl(vo... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public Object a(float paramFloat)
  {
    return Float.valueOf(b(paramFloat));
  }
  
  public vl a()
  {
    ArrayList localArrayList = e;
    int m = e.size();
    vo[] arrayOfvo = new vo[m];
    int k = 0;
    while (k < m)
    {
      arrayOfvo[k] = ((vo)((vn)localArrayList.get(k)).e());
      k += 1;
    }
    return new vl(arrayOfvo);
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
        g = ((vo)e.get(0)).f();
        h = ((vo)e.get(1)).f();
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
    vo localvo;
    float f2;
    float f3;
    float f4;
    float f5;
    if (paramFloat <= 0.0F)
    {
      localObject = (vo)e.get(0);
      localvo = (vo)e.get(1);
      f2 = ((vo)localObject).f();
      f3 = localvo.f();
      f4 = ((vo)localObject).c();
      f5 = localvo.c();
      localObject = localvo.d();
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
      localObject = (vo)e.get(a - 2);
      localvo = (vo)e.get(a - 1);
      f2 = ((vo)localObject).f();
      f3 = localvo.f();
      f4 = ((vo)localObject).c();
      f5 = localvo.c();
      localObject = localvo.d();
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
    for (Object localObject = (vo)e.get(0); k < a; localObject = localvo)
    {
      localvo = (vo)e.get(k);
      if (paramFloat < localvo.c())
      {
        Interpolator localInterpolator = localvo.d();
        f1 = paramFloat;
        if (localInterpolator != null) {
          f1 = localInterpolator.getInterpolation(paramFloat);
        }
        paramFloat = (f1 - ((vo)localObject).c()) / (localvo.c() - ((vo)localObject).c());
        f1 = ((vo)localObject).f();
        f2 = localvo.f();
        if (f == null) {
          return (f2 - f1) * paramFloat + f1;
        }
        return ((Number)f.a(paramFloat, Float.valueOf(f1), Float.valueOf(f2))).floatValue();
      }
      k += 1;
    }
    return ((Number)((vn)e.get(a - 1)).b()).floatValue();
  }
}

/* Location:
 * Qualified Name:     vl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */