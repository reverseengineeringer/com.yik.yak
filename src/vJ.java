import java.util.ArrayList;

class vj
  implements Cloneable
{
  public va a;
  public ArrayList<vh> b = null;
  public ArrayList<vh> c = null;
  public ArrayList<vj> d = null;
  public ArrayList<vj> e = null;
  public boolean f = false;
  
  public vj(va paramva)
  {
    a = paramva;
  }
  
  public vj a()
  {
    try
    {
      vj localvj = (vj)super.clone();
      a = a.c();
      return localvj;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public void a(vh paramvh)
  {
    if (b == null)
    {
      b = new ArrayList();
      d = new ArrayList();
    }
    b.add(paramvh);
    if (!d.contains(a)) {
      d.add(a);
    }
    paramvh = a;
    if (e == null) {
      e = new ArrayList();
    }
    e.add(this);
  }
}

/* Location:
 * Qualified Name:     vj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */