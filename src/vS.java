import java.util.ArrayList;

class vs
  implements Cloneable
{
  public vj a;
  public ArrayList<vq> b = null;
  public ArrayList<vq> c = null;
  public ArrayList<vs> d = null;
  public ArrayList<vs> e = null;
  public boolean f = false;
  
  public vs(vj paramvj)
  {
    a = paramvj;
  }
  
  public vs a()
  {
    try
    {
      vs localvs = (vs)super.clone();
      a = a.c();
      return localvs;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public void a(vq paramvq)
  {
    if (b == null)
    {
      b = new ArrayList();
      d = new ArrayList();
    }
    b.add(paramvq);
    if (!d.contains(a)) {
      d.add(a);
    }
    paramvq = a;
    if (e == null) {
      e = new ArrayList();
    }
    e.add(this);
  }
}

/* Location:
 * Qualified Name:     vs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */