import android.view.animation.Interpolator;

public abstract class vn
  implements Cloneable
{
  float a;
  Class b;
  boolean c = false;
  private Interpolator d = null;
  
  public static vn a(float paramFloat)
  {
    return new vo(paramFloat);
  }
  
  public static vn a(float paramFloat1, float paramFloat2)
  {
    return new vo(paramFloat1, paramFloat2);
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
  
  public abstract vn e();
}

/* Location:
 * Qualified Name:     vn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */