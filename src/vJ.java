import android.view.animation.Interpolator;
import java.util.ArrayList;

public abstract class vj
  implements Cloneable
{
  ArrayList<vk> a = null;
  
  public abstract vj a(long paramLong);
  
  public void a() {}
  
  public abstract void a(Interpolator paramInterpolator);
  
  public void a(vk paramvk)
  {
    if (a == null) {
      a = new ArrayList();
    }
    a.add(paramvk);
  }
  
  public ArrayList<vk> b()
  {
    return a;
  }
  
  public void b(vk paramvk)
  {
    if (a == null) {}
    do
    {
      return;
      a.remove(paramvk);
    } while (a.size() != 0);
    a = null;
  }
  
  public vj c()
  {
    try
    {
      vj localvj = (vj)super.clone();
      if (a != null)
      {
        ArrayList localArrayList = a;
        a = new ArrayList();
        int j = localArrayList.size();
        int i = 0;
        while (i < j)
        {
          a.add(localArrayList.get(i));
          i += 1;
        }
      }
      return localCloneNotSupportedException;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     vj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */