import android.view.animation.Interpolator;

public abstract class vw
  implements Cloneable
{
  float a;
  Class b;
  boolean c = false;
  private Interpolator d = null;
  
  public static vw a(float paramFloat)
  {
    return new vx(paramFloat);
  }
  
  public static vw a(float paramFloat1, float paramFloat2)
  {
    return new vx(paramFloat1, paramFloat2);
  }
  
  public void a(Interpolator paramInterpolator)
  {
    d = paramInterpolator;
  }
  
  public abstract void a(Object paramObject);
  
  public boolean a()
  {
    return c;
  }
  
  public abstract Object b();
  
  public float c()
  {
    return a;
  }
  
  public Interpolator d()
  {
    return d;
  }
  
  public abstract vw e();
}

/* Location:
 * Qualified Name:     vw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */