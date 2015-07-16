import java.util.ArrayList;
import java.util.HashMap;

public class vp
{
  private vs b;
  
  vp(vm paramvm, vj paramvj)
  {
    b = ((vs)vm.b(paramvm).get(paramvj));
    if (b == null)
    {
      b = new vs(paramvj);
      vm.b(paramvm).put(paramvj, b);
      vm.d(paramvm).add(b);
    }
  }
  
  public vp a(vj paramvj)
  {
    vs localvs2 = (vs)vm.b(a).get(paramvj);
    vs localvs1 = localvs2;
    if (localvs2 == null)
    {
      localvs1 = new vs(paramvj);
      vm.b(a).put(paramvj, localvs1);
      vm.d(a).add(localvs1);
    }
    localvs1.a(new vq(b, 0));
    return this;
  }
}

/* Location:
 * Qualified Name:     vp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */