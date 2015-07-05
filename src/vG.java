import java.util.ArrayList;
import java.util.HashMap;

public class vg
{
  private vj b;
  
  vg(vd paramvd, va paramva)
  {
    b = ((vj)vd.b(paramvd).get(paramva));
    if (b == null)
    {
      b = new vj(paramva);
      vd.b(paramvd).put(paramva, b);
      vd.d(paramvd).add(b);
    }
  }
  
  public vg a(va paramva)
  {
    vj localvj2 = (vj)vd.b(a).get(paramva);
    vj localvj1 = localvj2;
    if (localvj2 == null)
    {
      localvj1 = new vj(paramva);
      vd.b(a).put(paramva, localvj1);
      vd.d(a).add(localvj1);
    }
    localvj1.a(new vh(b, 0));
    return this;
  }
}

/* Location:
 * Qualified Name:     vg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */