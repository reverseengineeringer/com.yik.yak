import android.view.animation.Interpolator;
import java.util.ArrayList;

public abstract class va
  implements Cloneable
{
  ArrayList<vb> a = null;
  
  public abstract va a(long paramLong);
  
  public void a() {}
  
  public abstract void a(Interpolator paramInterpolator);
  
  public void a(vb paramvb)
  {
    if (a == null) {
      a = new ArrayList();
    }
    a.add(paramvb);
  }
  
  public ArrayList<vb> b()
  {
    return a;
  }
  
  public void b(vb paramvb)
  {
    if (a == null) {}
    do
    {
      return;
      a.remove(paramvb);
    } while (a.size() != 0);
    a = null;
  }
  
  public va c()
  {
    try
    {
      va localva = (va)super.clone();
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
 * Qualified Name:     va
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */