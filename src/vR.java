import java.util.ArrayList;

class vr
  implements vk
{
  private vm a;
  private vs b;
  private int c;
  
  public vr(vm paramvm, vs paramvs, int paramInt)
  {
    a = paramvm;
    b = paramvs;
    c = paramInt;
  }
  
  private void c(vj paramvj)
  {
    if (a.b) {
      return;
    }
    int j = b.c.size();
    int i = 0;
    label24:
    vq localvq;
    if (i < j)
    {
      localvq = (vq)b.c.get(i);
      if ((b == c) && (a.a == paramvj)) {
        paramvj.b(this);
      }
    }
    for (paramvj = localvq;; paramvj = null)
    {
      b.c.remove(paramvj);
      if (b.c.size() != 0) {
        break;
      }
      b.a.a();
      vm.a(a).add(b.a);
      return;
      i += 1;
      break label24;
    }
  }
  
  public void a(vj paramvj)
  {
    if (c == 0) {
      c(paramvj);
    }
  }
  
  public void b(vj paramvj)
  {
    if (c == 1) {
      c(paramvj);
    }
  }
}

/* Location:
 * Qualified Name:     vr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */